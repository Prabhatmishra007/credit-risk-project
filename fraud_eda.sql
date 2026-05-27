select count(*) from credit;
select * from credit
limit 10;
select loan_status  , count(*) as total from credit
group by loan_status; 
-- fraud -> 7088, Non-Fraud - 25,326
select min(loan_amnt) minim,avg(loan_amnt) averg,max(loan_amnt) maxium from credit c ;
-- min - 500, average - 9592.74079, max- 35000
--Fraud ratio
select round(sum(case when loan_status=1 then 1 else 0 end)*1.0/count(loan_status),5)*100 as Fraud_rat from credit;
-- 21.867%
select loan_status, avg(c.loan_amnt ) from credit c
group by c.loan_status ;
-- for legit (0) - 9239.73 , for fraud(1) - 10854.07
--loan grade has the most defaults
select c.loan_grade , sum(case when loan_status =1 then 1 else 0 end) as Total from credit c
group by c.loan_grade
order by 2 desc;
--Which loan intent (purpose) leads to most defaults — education, personal, venture
select c.loan_intent,sum(case when loan_status=1 then 1 else 0 end ) as Total from   credit c
group by c.loan_intent 
order by 2 desc;
--Do people who rent default more than people who own a home?
select c.person_home_ownership ,sum(case when loan_status=1 then 1 else 0 end ) as Total from   credit c
group by c.person_home_ownership  
order by 2 desc;
-- who rent - 5176, who own - 192
--update three non real loan_int_rate value
update  credit c 
set loan_int_rate = loan_int_rate/100000
where loan_int_rate >10000;
--Does a higher interest rate mean more defaults?
select loan_status, avg(c.loan_int_rate ) from credit c
group by loan_status;
-- avg loan_int_rate - 13.067 and 10.439 for non-fraud 
--What % of people with a previous default on file defaulted again?
select count(c.cb_person_default_on_file)*1.0/(select count(*) from credit c 
where c.cb_person_default_on_file ='Y')*100 as pre_fraud from credit c 
where loan_status=1 and c.cb_person_default_on_file='Y';
--Are there any null values in any column?
select count(*) from credit c
where c.person_emp_length is null;
--887
select count(*) from credit c 
where c.loan_int_rate is null;
-- 3092
--What is the average income of people who defaulted vs didn't?
select loan_status, avg(c.person_income) from credit c
group by c.loan_status ;
-- 0 -> 70844, 1 -> 49093

