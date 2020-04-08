select users.name, countries.`gdp_per_capita`, countries.`country_name`, car_models.`no_of_cars_sold_thousands`
from users 
inner join countries on users.`country_id` = countries.`country_id`
inner join car_models on users.`model_id` = car_models.`model_id`
order by countries.`gdp_per_capita`, car_models.`no_of_cars_sold_thousands` desc limit 3


--Car purchase count in each country via gender
--{do women/man has more purchase ration countrywise}

select count(*) as number_of_users, users.`country_id` , countries.country_name, users.sex
from users 
inner join countries on users.country_id =  countries.country_id
group by users.sex,countries.country_name

--overall do women purchase more than males

SELECT COUNT(*) AS number_of_users, users.sex
FROM users 
GROUP BY users.sex

-- company's models sold in each countries

select  sum(car_models.no_of_cars_sold_thousands), car_models.`model_name`, countries.`country_name` 
from car_models
inner join companies  on car_models.`company_id` = companies.`company_id`
inner join countries on companies.`country_id` = countries.`country_id`
group by car_models.`model_name`, countries.`country_name`

--which company is dominent in the country (in term of number of models sale)

select  sum(car_models.no_of_cars_sold_thousands) as models_sold_millions, companies.`company_name`, countries.`country_name`
from car_models
inner join companies on car_models.`company_id` = companies.`company_id`
inner join countries on companies.`country_id` = countries.`country_id`
group by  companies.`company_name`, companies.`country_id`

--top 5 companies with highest revenue 

select companies.`revenue_millions`, car_models.`model_name`, car_models.`no_of_cars_sold_thousands` 
from companies 
inner join car_models on companies.`company_id` = car_models.`company_id`
order by companies.`revenue_millions` desc limit 5
