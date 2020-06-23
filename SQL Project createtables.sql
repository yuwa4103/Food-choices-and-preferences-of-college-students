# create database
drop database if exists foodchoices;
create database if not exists foodchoices;
use foodchoices;

# create table
drop table if exists demographics;
create table if not exists demographics(
	id int,
    GPA decimal(10,2),
    grade_level int,
    Gender int,
    income int,
    weight int,
    marital_status int,
    on_off_campus int,
    employment int,
    pay_meal_out int,
    primary key (id)
    );

drop table if exists food_type;
create table if not exists food_type(
	id int,
    ethnic_food int,
    greek_food int,
    italian_food int,
    indian_food int,
    thai_food int,
    persian_food int,
    constraint fk_food_type1 foreign key(id) references demographics(id)
    );

drop table if exists health;
create table if not exists health(
	id int,
    healthFeeling int,
    selfPerceptionWeight int,
    eatingChanges int,
    idealDiet int,
    nutritionalCheck int,
    vitamins int,
    healthyMeal varchar(200),
    constraint fk_health1 foreign key(id) references demographics(id)
);

drop table if exists comfort_food;
create table if not exists comfort_food(
	id int,
	comfortFood varchar(200),
    comfortFoodReason varchar(200),
    ComfortFoodReasonCoded int,
    constraint fk_comfort_food1 foreign key(id) references demographics(id)
);

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
	`id` INT,
    `parents_cook` int,
	`father_education` int,
	`father_profession` VARCHAR(100),
	`mother_education` int,
	`mother_profession` VARCHAR(100),
	constraint fk_parents1 foreign key(id) references demographics(id)
    );
  
  
DROP TABLE IF EXISTS `sports` ;
CREATE TABLE IF NOT EXISTS `sports` (
	`id` int,
    `calories_day` int,
    `weight` int,
    `sports` int,
	`sports_type` VARCHAR(100),
  constraint fk_sports1 foreign key(id) references demographics(id)
  );
 
DROP TABLE IF EXISTS `calories`;
CREATE TABLE `calories` (
	`id` int,
	`calories_day` int,
	`calories_chicken` int,
	`colories_scone` int,
	`tortilla_calories` int,
	`turkey_calories` int,
	`waffle_calories` int,
	constraint fk_calories1 foreign key(id) references demographics(id)
 );
  
  
DROP TABLE IF EXISTS `habits`;
CREATE TABLE `habits` (
	`id` int,
	`breakfast` int ,
	`coffee` int,
	`drink` int,
	`cook` int,
	`cuisine` int,
	`eating_out` int,
	`soup` int,
	`fruit_day` int,
	`veggies_day` int,
	`fries` int,
	`fav_food` int,
	`pay_meal_out` int,
	`meals_dinner_friend` varchar(200),
	`fav_cuisine` varchar(200),
    constraint fk_habits1 foreign key(id) references demographics(id)
  );

