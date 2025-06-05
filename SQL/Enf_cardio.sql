#Consultar valores de la tabla
SELECT * FROM `cardio.cardio_data`;

#Verificar valores nulos
SELECT COUNT(*) AS id_nulo,
FROM `cardio.cardio_data`
WHERE id IS NULL;
SELECT COUNT(*) AS age_nulo,
FROM `cardio.cardio_data`
WHERE age IS NULL;
SELECT COUNT(*) AS gender_nulo,
FROM `cardio.cardio_data`
WHERE gender IS NULL;
SELECT COUNT(*) AS height_nulo,
FROM `cardio.cardio_data`
WHERE height IS NULL;
SELECT COUNT(*) AS weight_nulo,
FROM `cardio.cardio_data`
WHERE weight IS NULL;
SELECT COUNT(*) AS aphi_nulo,
FROM `cardio.cardio_data`
WHERE ap_hi IS NULL;
SELECT COUNT(*) AS aplo_nulo,
FROM `cardio.cardio_data`
WHERE ap_lo IS NULL;
SELECT COUNT(*) AS cho_nulo,
FROM `cardio.cardio_data`
WHERE cholesterol IS NULL;
SELECT COUNT(*) AS gluc_nulo,
FROM `cardio.cardio_data`
WHERE gluc IS NULL;
SELECT COUNT(*) AS smoke_nulo,
FROM `cardio.cardio_data`
WHERE smoke IS NULL;
SELECT COUNT(*) AS alco_nulo,
FROM `cardio.cardio_data`
WHERE alco IS NULL;
SELECT COUNT(*) AS active_nulo,
FROM `cardio.cardio_data`
WHERE active IS NULL;
SELECT COUNT(*) AS cardio_nulo,
FROM `cardio.cardio_data`
WHERE cardio IS NULL;

#Convertir edad en años 
ALTER TABLE cardio_date ADD age_anios INT;
UPDATE cardio_date
SET age_anios = FLOOR(age/365);

#Tasa de enfermedades cardiovasculares por edad
SELECT age, AVG(cardio) AS tasa_riesgo
FROM `cardio.cardio_data`
GROUP BY age
ORDER BY age;

#Factores de riesgo más frecuentes 
SELECT AVG(cardio) AS tasa_riesgo,cholesterol, gluc, smoke, alco, active
FROM `cardio.cardio_data`
GROUP BY cholesterol, gluc, smoke, alco, active
ORDER BY tasa_riesgo DESC;

#Distribución por género 
SELECT gender, AVG(cardio) AS tasa_riesgo
FROM `cardio.cardio_data`
GROUP BY gender;