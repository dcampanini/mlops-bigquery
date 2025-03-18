CREATE OR REPLACE MODEL
`census.census_model`
OPTIONS
( model_type='RANDOM_FOREST_CLASSIFIER', # options: LOGISTIC_REF, AUTOML_CLASSIFIER, XGBOOST, RANDOM_FOREST_CLASSIFIER
  auto_class_weights=TRUE, # whether to balance class labels using weights for each class in inverse proportion to the frequency of that class
  enable_global_explain=TRUE,
  input_label_cols=['income_bracket']
) AS
SELECT * EXCEPT(dataframe)
FROM
`census.input_data`
WHERE
dataframe = 'training'