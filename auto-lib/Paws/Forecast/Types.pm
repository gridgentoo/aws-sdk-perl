package Paws::Forecast::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type Forecast_CategoricalParameterRange, { class => 'Paws::Forecast::CategoricalParameterRange' };
  class_type Forecast_ContinuousParameterRange, { class => 'Paws::Forecast::ContinuousParameterRange' };
  class_type Forecast_CreateDatasetGroupRequest, { class => 'Paws::Forecast::CreateDatasetGroupRequest' };
  class_type Forecast_CreateDatasetGroupResponse, { class => 'Paws::Forecast::CreateDatasetGroupResponse' };
  class_type Forecast_CreateDatasetImportJobRequest, { class => 'Paws::Forecast::CreateDatasetImportJobRequest' };
  class_type Forecast_CreateDatasetImportJobResponse, { class => 'Paws::Forecast::CreateDatasetImportJobResponse' };
  class_type Forecast_CreateDatasetRequest, { class => 'Paws::Forecast::CreateDatasetRequest' };
  class_type Forecast_CreateDatasetResponse, { class => 'Paws::Forecast::CreateDatasetResponse' };
  class_type Forecast_CreateForecastExportJobRequest, { class => 'Paws::Forecast::CreateForecastExportJobRequest' };
  class_type Forecast_CreateForecastExportJobResponse, { class => 'Paws::Forecast::CreateForecastExportJobResponse' };
  class_type Forecast_CreateForecastRequest, { class => 'Paws::Forecast::CreateForecastRequest' };
  class_type Forecast_CreateForecastResponse, { class => 'Paws::Forecast::CreateForecastResponse' };
  class_type Forecast_CreatePredictorRequest, { class => 'Paws::Forecast::CreatePredictorRequest' };
  class_type Forecast_CreatePredictorResponse, { class => 'Paws::Forecast::CreatePredictorResponse' };
  class_type Forecast_DataDestination, { class => 'Paws::Forecast::DataDestination' };
  class_type Forecast_DatasetGroupSummary, { class => 'Paws::Forecast::DatasetGroupSummary' };
  class_type Forecast_DatasetImportJobSummary, { class => 'Paws::Forecast::DatasetImportJobSummary' };
  class_type Forecast_DatasetSummary, { class => 'Paws::Forecast::DatasetSummary' };
  class_type Forecast_DataSource, { class => 'Paws::Forecast::DataSource' };
  class_type Forecast_DeleteDatasetGroupRequest, { class => 'Paws::Forecast::DeleteDatasetGroupRequest' };
  class_type Forecast_DeleteDatasetImportJobRequest, { class => 'Paws::Forecast::DeleteDatasetImportJobRequest' };
  class_type Forecast_DeleteDatasetRequest, { class => 'Paws::Forecast::DeleteDatasetRequest' };
  class_type Forecast_DeleteForecastExportJobRequest, { class => 'Paws::Forecast::DeleteForecastExportJobRequest' };
  class_type Forecast_DeleteForecastRequest, { class => 'Paws::Forecast::DeleteForecastRequest' };
  class_type Forecast_DeletePredictorRequest, { class => 'Paws::Forecast::DeletePredictorRequest' };
  class_type Forecast_DescribeDatasetGroupRequest, { class => 'Paws::Forecast::DescribeDatasetGroupRequest' };
  class_type Forecast_DescribeDatasetGroupResponse, { class => 'Paws::Forecast::DescribeDatasetGroupResponse' };
  class_type Forecast_DescribeDatasetImportJobRequest, { class => 'Paws::Forecast::DescribeDatasetImportJobRequest' };
  class_type Forecast_DescribeDatasetImportJobResponse, { class => 'Paws::Forecast::DescribeDatasetImportJobResponse' };
  class_type Forecast_DescribeDatasetRequest, { class => 'Paws::Forecast::DescribeDatasetRequest' };
  class_type Forecast_DescribeDatasetResponse, { class => 'Paws::Forecast::DescribeDatasetResponse' };
  class_type Forecast_DescribeForecastExportJobRequest, { class => 'Paws::Forecast::DescribeForecastExportJobRequest' };
  class_type Forecast_DescribeForecastExportJobResponse, { class => 'Paws::Forecast::DescribeForecastExportJobResponse' };
  class_type Forecast_DescribeForecastRequest, { class => 'Paws::Forecast::DescribeForecastRequest' };
  class_type Forecast_DescribeForecastResponse, { class => 'Paws::Forecast::DescribeForecastResponse' };
  class_type Forecast_DescribePredictorRequest, { class => 'Paws::Forecast::DescribePredictorRequest' };
  class_type Forecast_DescribePredictorResponse, { class => 'Paws::Forecast::DescribePredictorResponse' };
  class_type Forecast_EncryptionConfig, { class => 'Paws::Forecast::EncryptionConfig' };
  class_type Forecast_EvaluationParameters, { class => 'Paws::Forecast::EvaluationParameters' };
  class_type Forecast_EvaluationResult, { class => 'Paws::Forecast::EvaluationResult' };
  class_type Forecast_Featurization, { class => 'Paws::Forecast::Featurization' };
  class_type Forecast_FeaturizationConfig, { class => 'Paws::Forecast::FeaturizationConfig' };
  class_type Forecast_FeaturizationMethod, { class => 'Paws::Forecast::FeaturizationMethod' };
  class_type Forecast_FeaturizationMethodParameters, { class => 'Paws::Forecast::FeaturizationMethodParameters' };
  class_type Forecast_FieldStatistics, { class => 'Paws::Forecast::FieldStatistics' };
  class_type Forecast_Filter, { class => 'Paws::Forecast::Filter' };
  class_type Forecast_ForecastExportJobSummary, { class => 'Paws::Forecast::ForecastExportJobSummary' };
  class_type Forecast_ForecastSummary, { class => 'Paws::Forecast::ForecastSummary' };
  class_type Forecast_GetAccuracyMetricsRequest, { class => 'Paws::Forecast::GetAccuracyMetricsRequest' };
  class_type Forecast_GetAccuracyMetricsResponse, { class => 'Paws::Forecast::GetAccuracyMetricsResponse' };
  class_type Forecast_HyperParameterTuningJobConfig, { class => 'Paws::Forecast::HyperParameterTuningJobConfig' };
  class_type Forecast_InputDataConfig, { class => 'Paws::Forecast::InputDataConfig' };
  class_type Forecast_IntegerParameterRange, { class => 'Paws::Forecast::IntegerParameterRange' };
  class_type Forecast_InvalidInputException, { class => 'Paws::Forecast::InvalidInputException' };
  class_type Forecast_InvalidNextTokenException, { class => 'Paws::Forecast::InvalidNextTokenException' };
  class_type Forecast_LimitExceededException, { class => 'Paws::Forecast::LimitExceededException' };
  class_type Forecast_ListDatasetGroupsRequest, { class => 'Paws::Forecast::ListDatasetGroupsRequest' };
  class_type Forecast_ListDatasetGroupsResponse, { class => 'Paws::Forecast::ListDatasetGroupsResponse' };
  class_type Forecast_ListDatasetImportJobsRequest, { class => 'Paws::Forecast::ListDatasetImportJobsRequest' };
  class_type Forecast_ListDatasetImportJobsResponse, { class => 'Paws::Forecast::ListDatasetImportJobsResponse' };
  class_type Forecast_ListDatasetsRequest, { class => 'Paws::Forecast::ListDatasetsRequest' };
  class_type Forecast_ListDatasetsResponse, { class => 'Paws::Forecast::ListDatasetsResponse' };
  class_type Forecast_ListForecastExportJobsRequest, { class => 'Paws::Forecast::ListForecastExportJobsRequest' };
  class_type Forecast_ListForecastExportJobsResponse, { class => 'Paws::Forecast::ListForecastExportJobsResponse' };
  class_type Forecast_ListForecastsRequest, { class => 'Paws::Forecast::ListForecastsRequest' };
  class_type Forecast_ListForecastsResponse, { class => 'Paws::Forecast::ListForecastsResponse' };
  class_type Forecast_ListPredictorsRequest, { class => 'Paws::Forecast::ListPredictorsRequest' };
  class_type Forecast_ListPredictorsResponse, { class => 'Paws::Forecast::ListPredictorsResponse' };
  class_type Forecast_Metrics, { class => 'Paws::Forecast::Metrics' };
  class_type Forecast_ParameterRanges, { class => 'Paws::Forecast::ParameterRanges' };
  class_type Forecast_PredictorSummary, { class => 'Paws::Forecast::PredictorSummary' };
  class_type Forecast_ResourceAlreadyExistsException, { class => 'Paws::Forecast::ResourceAlreadyExistsException' };
  class_type Forecast_ResourceInUseException, { class => 'Paws::Forecast::ResourceInUseException' };
  class_type Forecast_ResourceNotFoundException, { class => 'Paws::Forecast::ResourceNotFoundException' };
  class_type Forecast_S3Config, { class => 'Paws::Forecast::S3Config' };
  class_type Forecast_Schema, { class => 'Paws::Forecast::Schema' };
  class_type Forecast_SchemaAttribute, { class => 'Paws::Forecast::SchemaAttribute' };
  class_type Forecast_Statistics, { class => 'Paws::Forecast::Statistics' };
  class_type Forecast_SupplementaryFeature, { class => 'Paws::Forecast::SupplementaryFeature' };
  class_type Forecast_TrainingParameters, { class => 'Paws::Forecast::TrainingParameters' };
  class_type Forecast_UpdateDatasetGroupRequest, { class => 'Paws::Forecast::UpdateDatasetGroupRequest' };
  class_type Forecast_UpdateDatasetGroupResponse, { class => 'Paws::Forecast::UpdateDatasetGroupResponse' };
  class_type Forecast_WeightedQuantileLoss, { class => 'Paws::Forecast::WeightedQuantileLoss' };
  class_type Forecast_WindowSummary, { class => 'Paws::Forecast::WindowSummary' };

1;
