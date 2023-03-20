create type activity_type as enum ('open_session','end_session','scroll_down','send_message');


create table activity(
user_id int,
session_id int,
activity_date date,
activity_type activity_type);

insert into  activity(user_id,session_id,activity_date,activity_type)
values (1,1,'2019-07-20','open_session'),
(1,1,'2019-07-20','scroll_down'),
(1,1,'2019-07-20','end_session'),
(2,4,'2019-07-20','open_session'),
(2,4,'2019-07-21','send_message'),
(2,4,'2019-07-21','end_session'),
(3,2,'2019-07-21','open_session'),
(3,2,'2019-07-21','send_message'),
(3,2,'2019-07-21','end_session'),
(4,3,'2019-06-25','open_session'),
(4,3,'2019-06-25','end_session');

select count(distinct user_id),activity_date from activity where date_part('day','2019-07-27'::date)-date_part('day',activity_date::date) < 30  group by activity_date;
