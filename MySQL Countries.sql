/* #1 */

SELECT languages.language , countries.name, languages.percentage FROM languages
JOIN countries ON languages.country_id = countries.id 
WHERE languages.language='Slovene'

/*#2*/

order by  languages.percentage desc ;
SELECT countries.name, COUNT(cities.name) as NumberCities
FROM cities
JOIN countries ON cities.country_id = countries.id
group by countries.name ;

/*#3*/

SELECT cities.name, cities.population 
FROM cities
JOIN countries ON cities.country_id = countries.id
WHERE countries.name = 'Mexico' AND cities.population > 500000 
order by  cities.population desc  ;

/*#4*/

SELECT  countries.name , languages.language ,languages.percentage FROM languages
JOIN countries ON languages.country_id = countries.id 
WHERE languages.percentage > 89
order by  languages.percentage desc ;

/*#5*/

SELECT  countries.name,countries.surface_area, countries.population FROM  countries
WHERE  countries.surface_area <501 AND countries.population  >100000 ;

/*#6*/

SELECT  countries.name,countries.government_form, countries.capital,countries.life_expectancy FROM  countries
WHERE countries.government_form='Constitutional Monarchy' AND countries.capital >200 AND countries.life_expectancy  >75 ;

/*#7*/

SELECT countries.name, cities.name ,cities.district ,cities.population
FROM cities
JOIN countries ON cities.country_id = countries.id ;

/*#8*/

SELECT countries.region, COUNT(countries.name) as countries
FROM countries
group by countries.region
order by  COUNT(countries.name) desc ;











