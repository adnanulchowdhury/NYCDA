-- problem#1. find the least populated country in Southern Europe.
SELECT code,name,MIN(population) AS TheLeastPopulatedCountry 
FROM country 
WHERE region= 'Southern Europe';
-- problem#2. Find language spoken in a least populated country.
SELECT language, isofficial AS SpokenLanguage 
FROM countrylanguage 
WHERE countrycode= 'VAT';
-- problem#3. she's moved on to a different country, a country where people speak only the language she was learning. 
-- Find out which nearby country speaks nothing but that language.
SELECT countrycode,MAX(percentage) 
FROM countrylanguage 
WHERE language='Italian' AND isofficial='t' AND countrycode!='VAT';
-- problem#4. find out what other city in that country she might be flying to. Except city of San Marino.
SELECT name 
FROM city 
WHERE countrycode='SMR' AND name!= 'San Marino';
-- problem#5. She's headed to South America as we speak; 
-- go find a city whose name is like the one we were headed to, but doesn't end the same. 
-- Find out the city, and do another search for what country it's in. Hurry!
SELECT 

SELECT countrycode 
FROM city 
WHERE name LIKE "Serra%" AND countrycode!='SMR';
