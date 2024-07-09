-- SELECT * FROM campusx.smartphones WHERE 1

-- SELECT model, price, rating FROM campusx.smartphones

-- Aliasing
-- SELECT os AS "Operating System", model, battery_capacity AS "MAH" FROM campusx.smartphones
SELECT model, SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size AS "ppi"
FROM campusx.smartphones



