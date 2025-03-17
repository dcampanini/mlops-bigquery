SELECT
age,
workclass,
marital_status,
education_num,
occupation,
hours_per_week,
income_bracket,
functional_weight
FROM
`bigquery-public-data.ml_datasets.census_adult_income`
LIMIT
100;

select count(*) from `bigquery-public-data.ml_datasets.census_adult_income`;

select distinct workclass from `bigquery-public-data.ml_datasets.census_adult_income`;

select distinct income_bracket from `bigquery-public-data.ml_datasets.census_adult_income`;