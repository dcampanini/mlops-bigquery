SELECT
*
FROM
ML.PREDICT (MODEL `census.census_model`,
  (
  SELECT
    *
  FROM
    `census.input_data`
  WHERE
    dataframe = 'prediction'
  )
)