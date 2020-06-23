use foodchoices;
-- ------------------------------------------------------
-- Select statements - each teammate
-- ------------------------------------------------------
# 1. basic query utilizing a where and/or group by clause
# 1.1 How many people for each comfort food reason?
select comfortFoodReasonCoded, comfortFoodReason, count(*) as numOfStudents from comfort_food 
group by comfortFoodReasonCoded,comfortFoodReason order by numOfStudents desc;
# The most popular reason for students having comfort food is boredom.

# 1.2 What are the weights for each student?
select id, weight from sports where weight<>0;
# our data conatins a few NANs, for excluding those NANs, we changed them into 0s, and we constraints the weight shouldn't be 0.

# 1.3 How many students like Italian food?
select count(id) as num_like_italian from habits where fav_cuisine like'Italian';
# There are 28 out of 125 students like Italian food.

# 1.4 How many students for each grade level?
select grade_level, grade_level_text, count(*) as num_student from demographics 
group by grade_level, grade_level_text order by grade_level;
# Freshman has larget number of students which is 37.

-- --------------------------------------------------------

# 2. 1 query utilizing a join of 2 or more tables
# 2.1 Show the average health feeling for each level of eating out frequency.
select eating_out, eating_out_text, round(avg(healthFeeling),2) as avg_health_feeling from habits join health using(id) 
group by eating_out, eating_out_text order by avg_health_feeling;
# The less frequently students eating out, the more likely they agree 'I feel very healthy!'

# 2.2 What's the number of students' id who weight more than 180lb by GPA, order by GPAs high to low?
select GPA, count(*) as NumofStudMoreThan180Bygpa from demographics left join sports using(weight) 
where weight > 180 and GPA <> 0 group by GPA order by GPA desc;
# Exclued null of GPA by excluding O. Most students who weight more than 180b got GPA above 3.

# 2.3 Show students who weight more than 180lb like Litalian food.
select id,weight,fav_cuisine from habits join demographics as d using(id) 
where weight>=180 and  fav_cuisine like 'Italian';

# 2.4 Show males and females who think consuming calories per day is very important.
select  d.Gender,d.id,c.calories_day, calories_day_text from demographics d inner join calories c using(id) 
where calories_day = '4' order by gender,id;

-- --------------------------------------------------------

# 3.  1 query utilizing a subquery or self-join.
# 3.1 what is the percentage of students who are pretty satisfied with their current diets?
select round(currentdiet*100/total,2) as satisfied_percentage from(
select (select count(*) from health where idealDiet = 6) currentdiet,count(*) as total from health) sub;
# 10.4% of students are satisfied with their current diets.

# 3.2 what is the percentage of students with grade higher than 3.5 very likely to eat veggies and fruits every day?
select round(goodgrades_vf * 100 / goodgrades_tt,2) as percentage from(
select (select count(*) from habits where veggies_day =5  and fruit_day =5 and
id in (select id from demographics where gpa >= 3.5)) goodgrades_vf, count(*) as goodgrades_tt from demographics where gpa >=3.5) sub ;
select count(*) from demographics where gpa >= 3.5;
# 37.5 students with at least 3.5 GPA are very likely to eat veggies and fruits.

# 3.3 count how many student with income higher than 100,000  do not think themselves very healthy.
select student_num, round(student_num *100/ (select count(*) from demographics where income > 5),2) unhealthy_income6_per
from( select count(*) as student_num from demographics 
where income > 5 and id in (select id from health where healthfeeling <=5)) income6unhealthy;
# 43.9% students with income higher than 100,000  do not think themselves very healthy.

# 3.4 What is the average GPA for students who are likely to eat veggies in a day
select round(avg(GPA),2) as avg_GPA FROM  demographics
where id in (select id FROM habits where veggies_day > 3);
# The average GPA is 3.37.


-- ------------------------------------------------------
-- Stored Programs - collectively
-- ------------------------------------------------------
# 1.  2 stored functions (20 pts);
# funtion 1
# What is the likehood of being a high-calories food lover?
drop function if exists highCaloriesLoverLikehood;
delimiter //
create function highCaloriesLoverLikehood(breakfast int, coffee int, drink int, soup int) returns varchar(20)
deterministic
begin
	declare likehood varchar(20);
    if breakfast + coffee + drink + soup = 5 then set likehood = 'Not Likely';
    elseif breakfast + coffee + drink + soup = 7  then set likehood = 'Very Likely';
	else set likehood = 'Uncertain';
    end if;
    return likehood;
end//
delimiter ;

# function 2
# What is the status of students' eating change?
drop function if exists eating_change;
delimiter //
create function eating_change (changenum int) returns varchar(20)
deterministic
begin
	declare changetext varchar(20);
		case
		when changenum = 1 then set changetext = 'Worse';
		when changenum = 2 then set changetext = 'Better';
        when changenum = 3 then set changetext = 'The Same';
        when changenum = 4 then set changetext = 'Unclear';
		end case;
    return changetext;
end//
delimiter ;


# 2.  1 stored procedure (10 pts);
# what is the average education of student's parents, and information status.
# 1 - less than high school; 1 - high school; 3 - some college; 4 - college; 5 - graduate
drop procedure if exists avg_parents_education;
delimiter //
create procedure avg_parents_education (in studentid int, out id2 int, out avg_edu decimal(10,2), out info varchar(20))
begin
	declare motheredu int; declare fatheredu int;
    set id2 = (select id from parents where studentid = id);
    set motheredu = (select mother_education from parents where studentid = id);
    set fatheredu = (select father_education from parents where studentid = id);
    case
    when motheredu > 0 and fatheredu > 0 then set avg_edu = (motheredu + fatheredu) / 2, info = 'both';
    when motheredu > 0 and fatheredu = 0 then set avg_edu = motheredu, info = 'mother';
    when fatheredu > 0 and motheredu = 0 then set avg_edu = fatheredu, info = 'father';
    end case;
end//
delimiter ;


# 3.  2 queries using or calling on 2 of the 3 stored functions/procedures from above (10 pts);
# use function 1
# How may students for each level of likehood of being a high-calories food lover?
select highCaloriesLoverLikehood(breakfast, coffee, drink, soup) as highCaloriesLoverLikehood, count(*) numberOfStudents from habits
group by highCaloriesLoverLikehood;

# call and use procedure
call avg_parents_education(12, @id, @avg_edu, @info);
select @id as id , @avg_edu as avg_parents_edu, @info as info_from;
# average parent educational level of student with id 12 is about college.

# 4.  1 trigger (10 pts).
# Students' weight may vary frequently. They may also want to try some new sports. This trigger can record any changes made in the sport table with the old ones into an audit table called changes.
drop trigger if exists update_sports_type;
delimiter //
create trigger update_sports_type
after update on sports
for each row
begin
    if new.calories_day <> old.calories_day or new.weight <> old.weight or new.sports <> old.sports or new.sports_type <> old.sports_type then
    insert into changes (id, calories_day, weight, sports, sports_type, time, rowValue)
	values(old.id, old.calories_day, old.weight, old.sports, old.sports_type, current_timestamp(), 'Before Update');
    
    insert into changes (id, calories_day, weight, sports, sports_type, time, rowValue)
	values(new.id, new.calories_day, new.weight, new.sports, new.sports_type, current_timestamp(), 'After Update');    
    end if;
    
end//
delimiter ;

# create an audit table to record changes
drop table if exists changes;
create table changes (
	id int,
    calories_day int,
    weight int,
    sports int,
    sports_type varchar(100),
    time timestamp,
    rowValue varchar(20)
);

