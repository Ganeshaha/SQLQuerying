-- Comments in SQL Start with dash-dash --
--1--
SELECT app_name FROM analytics WHERE ID = 1880;
--2--
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
--3--
SELECT category, count(*) FROM analytics GROUP BY category;
--4--
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
--5--
SELECT app_name, reviews FROM analytics 
WHERE rating >= 4.8
ORDER BY reviews DESC LIMIT 1;
--6--
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;
--7--
SELECT app_name, price, rating FROM analytics
WHERE rating <3
ORDER BY price DESC LIMIT 1;
--8--
SELECT app_name, min_installs, rating FROM analytics 
WHERE min_installs <=50 AND rating >0
ORDER BY rating DESC;
--9--
SELECT app_name FROM analytics WHERE rating<3 AND reviews>=10000;
--10--
SELECT app_name, price, reviews FROM analytics
WHERE price BETWEEN .10 AND 1
ORDER BY reviews DESC LIMIT 10;
--11--
SELECT app_name, last_updated FROM analytics
ORDER BY last_updated DESC LIMIT 1;
--12--
SELECT * FROM analytics
WHERE price = (SELECT MAX(price) FROM analytics);
--13--
SELECT SUM(reviews) FROM analytics;
--14--
SELECT category, COUNT(*) FROM analytics 
GROUP BY category
HAVING COUNT(*)>300;
--15--
SELECT app_name, min_installs, reviews, (min_installs/reviews) AS min_to_reviews FROM analytics
WHERE min_installs>=100000
LIMIT 1;