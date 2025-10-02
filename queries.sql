SELECT name, cuisine, avg_cost
FROM restaurants
ORDER BY avg_cost ASC
LIMIT 5;

SELECT name, cuisine, distance_miles, rating
FROM restaurants
WHERE distance_miles <= 5 AND rating >= 4.0
ORDER BY rating DESC, distance_miles ASC;

SELECT
  name,
  distance_miles
FROM restaurants
WHERE distance_miles <= 2.0
ORDER BY distance_miles ASC, name ASC;

SELECT
  name,
  rating
FROM restaurants
ORDER BY rating DESC, name ASC
LIMIT 3;

SELECT
  name,
  avg_cost,
  ROUND(avg_cost * 1.075, 2) AS cost_with_tax
FROM restaurants
ORDER BY name ASC;

SELECT
  cuisine,
  COUNT(*) AS restaurant_count
FROM restaurants
GROUP BY cuisine
ORDER BY restaurant_count DESC, cuisine ASC;
