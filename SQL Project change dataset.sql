use foodchoices;

# change comfort_food
update comfort_food set comfortFoodReason = 'stress' where ComfortFoodReasonCoded = 1;
update comfort_food set comfortFoodReason = 'boredom' where ComfortFoodReasonCoded = 2;
update comfort_food set comfortFoodReason = 'depression/sadness' where ComfortFoodReasonCoded = 3;
update comfort_food set comfortFoodReason = 'hunger' where ComfortFoodReasonCoded = 4;
update comfort_food set comfortFoodReason = 'laziness' where ComfortFoodReasonCoded = 5;
update comfort_food set comfortFoodReason = 'cold weather' where ComfortFoodReasonCoded = 6;
update comfort_food set comfortFoodReason = 'happiness ' where ComfortFoodReasonCoded = 7;
update comfort_food set comfortFoodReason = 'watching tv' where ComfortFoodReasonCoded = 8;
update comfort_food set comfortFoodReason = 'none' where ComfortFoodReasonCoded = 9 or ComfortFoodReasonCoded = 0;

# change demographics
alter table demographics add grade_level_text varchar(20);
update demographics set grade_level_text = 'Freshman' where grade_level = 1;
update demographics set grade_level_text = 'Sophomore' where grade_level = 2;
update demographics set grade_level_text = 'Junior' where grade_level = 3;
update demographics set grade_level_text = 'Senior' where grade_level = 4;

# change habits

alter table habits add eating_out_text varchar(20);
update habits set eating_out_text  = 'Never' where eating_out = 1;
update habits set eating_out_text  = '1-2 times' where eating_out = 2;
update habits set eating_out_text  = '2-3 times' where eating_out = 3;
update habits set eating_out_text  = '3-5 times' where eating_out = 4;
update habits set eating_out_text  = 'every day' where eating_out = 5;

# change calories
alter table calories add calories_day_text varchar(20);
update calories set calories_day_text = 'No idea' where calories_day = 1;
update calories set calories_day_text = 'Not at all' where calories_day = 2;
update calories set calories_day_text = 'Moderately' where calories_day = 3;
update calories set calories_day_text = 'Very' where calories_day = 4;
update calories set calories_day_text = null where calories_day = 0;

# change parents
select distinct(mother_education)from parents;
alter table parents add mother_edu_text varchar(20);
alter table parents add father_edu_text varchar(20);

update parents set mother_edu_text = null where mother_education = 0;
update parents set mother_edu_text = '< high school' where mother_education = 1;
update parents set mother_edu_text = 'high school' where mother_education = 2;
update parents set mother_edu_text = 'some college' where mother_education = 3;
update parents set mother_edu_text = 'college' where mother_education = 4;
update parents set mother_edu_text = 'graduate' where mother_education = 5;

update parents set father_edu_text = null where father_education = 0;
update parents set father_edu_text = '< high school' where father_education = 1;
update parents set father_edu_text = 'high school' where father_education = 2;
update parents set father_edu_text = 'some college' where father_education = 3;
update parents set father_edu_text = 'college' where father_education = 4;
update parents set father_edu_text = 'graduate' where father_education = 5;
