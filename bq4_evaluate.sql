SELECT
*
FROM
ML.EVALUATE (MODEL `census.census_model`,
  (
  SELECT
    *
  FROM
    `census.input_data`
  WHERE
    dataframe = 'evaluation'
  )
)