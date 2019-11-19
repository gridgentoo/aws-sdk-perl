package Paws::S3::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type S3_AbortIncompleteMultipartUpload, { class => 'Paws::S3::AbortIncompleteMultipartUpload' };
  class_type S3_AbortMultipartUploadOutput, { class => 'Paws::S3::AbortMultipartUploadOutput' };
  class_type S3_AbortMultipartUploadRequest, { class => 'Paws::S3::AbortMultipartUploadRequest' };
  class_type S3_AccelerateConfiguration, { class => 'Paws::S3::AccelerateConfiguration' };
  class_type S3_AccessControlPolicy, { class => 'Paws::S3::AccessControlPolicy' };
  class_type S3_AccessControlTranslation, { class => 'Paws::S3::AccessControlTranslation' };
  class_type S3_AnalyticsAndOperator, { class => 'Paws::S3::AnalyticsAndOperator' };
  class_type S3_AnalyticsConfiguration, { class => 'Paws::S3::AnalyticsConfiguration' };
  class_type S3_AnalyticsExportDestination, { class => 'Paws::S3::AnalyticsExportDestination' };
  class_type S3_AnalyticsFilter, { class => 'Paws::S3::AnalyticsFilter' };
  class_type S3_AnalyticsS3BucketDestination, { class => 'Paws::S3::AnalyticsS3BucketDestination' };
  class_type S3_And, { class => 'Paws::S3::And' };
  class_type S3_Bucket, { class => 'Paws::S3::Bucket' };
  class_type S3_BucketAlreadyExists, { class => 'Paws::S3::BucketAlreadyExists' };
  class_type S3_BucketAlreadyOwnedByYou, { class => 'Paws::S3::BucketAlreadyOwnedByYou' };
  class_type S3_BucketLifecycleConfiguration, { class => 'Paws::S3::BucketLifecycleConfiguration' };
  class_type S3_BucketLoggingStatus, { class => 'Paws::S3::BucketLoggingStatus' };
  class_type S3_CloudFunctionConfiguration, { class => 'Paws::S3::CloudFunctionConfiguration' };
  class_type S3_CommonPrefix, { class => 'Paws::S3::CommonPrefix' };
  class_type S3_CompletedMultipartUpload, { class => 'Paws::S3::CompletedMultipartUpload' };
  class_type S3_CompletedPart, { class => 'Paws::S3::CompletedPart' };
  class_type S3_CompleteMultipartUploadOutput, { class => 'Paws::S3::CompleteMultipartUploadOutput' };
  class_type S3_CompleteMultipartUploadRequest, { class => 'Paws::S3::CompleteMultipartUploadRequest' };
  class_type S3_Condition, { class => 'Paws::S3::Condition' };
  class_type S3_ContinuationEvent, { class => 'Paws::S3::ContinuationEvent' };
  class_type S3_CopyObjectOutput, { class => 'Paws::S3::CopyObjectOutput' };
  class_type S3_CopyObjectRequest, { class => 'Paws::S3::CopyObjectRequest' };
  class_type S3_CopyObjectResult, { class => 'Paws::S3::CopyObjectResult' };
  class_type S3_CopyPartResult, { class => 'Paws::S3::CopyPartResult' };
  class_type S3_CORSConfiguration, { class => 'Paws::S3::CORSConfiguration' };
  class_type S3_CORSRule, { class => 'Paws::S3::CORSRule' };
  class_type S3_CreateBucketConfiguration, { class => 'Paws::S3::CreateBucketConfiguration' };
  class_type S3_CreateBucketOutput, { class => 'Paws::S3::CreateBucketOutput' };
  class_type S3_CreateBucketRequest, { class => 'Paws::S3::CreateBucketRequest' };
  class_type S3_CreateMultipartUploadOutput, { class => 'Paws::S3::CreateMultipartUploadOutput' };
  class_type S3_CreateMultipartUploadRequest, { class => 'Paws::S3::CreateMultipartUploadRequest' };
  class_type S3_CSVInput, { class => 'Paws::S3::CSVInput' };
  class_type S3_CSVOutput, { class => 'Paws::S3::CSVOutput' };
  class_type S3_DefaultRetention, { class => 'Paws::S3::DefaultRetention' };
  class_type S3_Delete, { class => 'Paws::S3::Delete' };
  class_type S3_DeleteBucketAnalyticsConfigurationRequest, { class => 'Paws::S3::DeleteBucketAnalyticsConfigurationRequest' };
  class_type S3_DeleteBucketCorsRequest, { class => 'Paws::S3::DeleteBucketCorsRequest' };
  class_type S3_DeleteBucketEncryptionRequest, { class => 'Paws::S3::DeleteBucketEncryptionRequest' };
  class_type S3_DeleteBucketInventoryConfigurationRequest, { class => 'Paws::S3::DeleteBucketInventoryConfigurationRequest' };
  class_type S3_DeleteBucketLifecycleRequest, { class => 'Paws::S3::DeleteBucketLifecycleRequest' };
  class_type S3_DeleteBucketMetricsConfigurationRequest, { class => 'Paws::S3::DeleteBucketMetricsConfigurationRequest' };
  class_type S3_DeleteBucketPolicyRequest, { class => 'Paws::S3::DeleteBucketPolicyRequest' };
  class_type S3_DeleteBucketReplicationRequest, { class => 'Paws::S3::DeleteBucketReplicationRequest' };
  class_type S3_DeleteBucketRequest, { class => 'Paws::S3::DeleteBucketRequest' };
  class_type S3_DeleteBucketTaggingRequest, { class => 'Paws::S3::DeleteBucketTaggingRequest' };
  class_type S3_DeleteBucketWebsiteRequest, { class => 'Paws::S3::DeleteBucketWebsiteRequest' };
  class_type S3_DeletedObject, { class => 'Paws::S3::DeletedObject' };
  class_type S3_DeleteMarkerEntry, { class => 'Paws::S3::DeleteMarkerEntry' };
  class_type S3_DeleteMarkerReplication, { class => 'Paws::S3::DeleteMarkerReplication' };
  class_type S3_DeleteObjectOutput, { class => 'Paws::S3::DeleteObjectOutput' };
  class_type S3_DeleteObjectRequest, { class => 'Paws::S3::DeleteObjectRequest' };
  class_type S3_DeleteObjectsOutput, { class => 'Paws::S3::DeleteObjectsOutput' };
  class_type S3_DeleteObjectsRequest, { class => 'Paws::S3::DeleteObjectsRequest' };
  class_type S3_DeleteObjectTaggingOutput, { class => 'Paws::S3::DeleteObjectTaggingOutput' };
  class_type S3_DeleteObjectTaggingRequest, { class => 'Paws::S3::DeleteObjectTaggingRequest' };
  class_type S3_DeletePublicAccessBlockRequest, { class => 'Paws::S3::DeletePublicAccessBlockRequest' };
  class_type S3_Destination, { class => 'Paws::S3::Destination' };
  class_type S3_Encryption, { class => 'Paws::S3::Encryption' };
  class_type S3_EncryptionConfiguration, { class => 'Paws::S3::EncryptionConfiguration' };
  class_type S3_EndEvent, { class => 'Paws::S3::EndEvent' };
  class_type S3_Error, { class => 'Paws::S3::Error' };
  class_type S3_ErrorDocument, { class => 'Paws::S3::ErrorDocument' };
  class_type S3_ExistingObjectReplication, { class => 'Paws::S3::ExistingObjectReplication' };
  class_type S3_Filter, { class => 'Paws::S3::Filter' };
  class_type S3_FilterRule, { class => 'Paws::S3::FilterRule' };
  class_type S3_GetBucketAccelerateConfigurationOutput, { class => 'Paws::S3::GetBucketAccelerateConfigurationOutput' };
  class_type S3_GetBucketAccelerateConfigurationRequest, { class => 'Paws::S3::GetBucketAccelerateConfigurationRequest' };
  class_type S3_GetBucketAclOutput, { class => 'Paws::S3::GetBucketAclOutput' };
  class_type S3_GetBucketAclRequest, { class => 'Paws::S3::GetBucketAclRequest' };
  class_type S3_GetBucketAnalyticsConfigurationOutput, { class => 'Paws::S3::GetBucketAnalyticsConfigurationOutput' };
  class_type S3_GetBucketAnalyticsConfigurationRequest, { class => 'Paws::S3::GetBucketAnalyticsConfigurationRequest' };
  class_type S3_GetBucketCorsOutput, { class => 'Paws::S3::GetBucketCorsOutput' };
  class_type S3_GetBucketCorsRequest, { class => 'Paws::S3::GetBucketCorsRequest' };
  class_type S3_GetBucketEncryptionOutput, { class => 'Paws::S3::GetBucketEncryptionOutput' };
  class_type S3_GetBucketEncryptionRequest, { class => 'Paws::S3::GetBucketEncryptionRequest' };
  class_type S3_GetBucketInventoryConfigurationOutput, { class => 'Paws::S3::GetBucketInventoryConfigurationOutput' };
  class_type S3_GetBucketInventoryConfigurationRequest, { class => 'Paws::S3::GetBucketInventoryConfigurationRequest' };
  class_type S3_GetBucketLifecycleConfigurationOutput, { class => 'Paws::S3::GetBucketLifecycleConfigurationOutput' };
  class_type S3_GetBucketLifecycleConfigurationRequest, { class => 'Paws::S3::GetBucketLifecycleConfigurationRequest' };
  class_type S3_GetBucketLifecycleOutput, { class => 'Paws::S3::GetBucketLifecycleOutput' };
  class_type S3_GetBucketLifecycleRequest, { class => 'Paws::S3::GetBucketLifecycleRequest' };
  class_type S3_GetBucketLocationOutput, { class => 'Paws::S3::GetBucketLocationOutput' };
  class_type S3_GetBucketLocationRequest, { class => 'Paws::S3::GetBucketLocationRequest' };
  class_type S3_GetBucketLoggingOutput, { class => 'Paws::S3::GetBucketLoggingOutput' };
  class_type S3_GetBucketLoggingRequest, { class => 'Paws::S3::GetBucketLoggingRequest' };
  class_type S3_GetBucketMetricsConfigurationOutput, { class => 'Paws::S3::GetBucketMetricsConfigurationOutput' };
  class_type S3_GetBucketMetricsConfigurationRequest, { class => 'Paws::S3::GetBucketMetricsConfigurationRequest' };
  class_type S3_GetBucketNotificationConfigurationRequest, { class => 'Paws::S3::GetBucketNotificationConfigurationRequest' };
  class_type S3_GetBucketPolicyOutput, { class => 'Paws::S3::GetBucketPolicyOutput' };
  class_type S3_GetBucketPolicyRequest, { class => 'Paws::S3::GetBucketPolicyRequest' };
  class_type S3_GetBucketPolicyStatusOutput, { class => 'Paws::S3::GetBucketPolicyStatusOutput' };
  class_type S3_GetBucketPolicyStatusRequest, { class => 'Paws::S3::GetBucketPolicyStatusRequest' };
  class_type S3_GetBucketReplicationOutput, { class => 'Paws::S3::GetBucketReplicationOutput' };
  class_type S3_GetBucketReplicationRequest, { class => 'Paws::S3::GetBucketReplicationRequest' };
  class_type S3_GetBucketRequestPaymentOutput, { class => 'Paws::S3::GetBucketRequestPaymentOutput' };
  class_type S3_GetBucketRequestPaymentRequest, { class => 'Paws::S3::GetBucketRequestPaymentRequest' };
  class_type S3_GetBucketTaggingOutput, { class => 'Paws::S3::GetBucketTaggingOutput' };
  class_type S3_GetBucketTaggingRequest, { class => 'Paws::S3::GetBucketTaggingRequest' };
  class_type S3_GetBucketVersioningOutput, { class => 'Paws::S3::GetBucketVersioningOutput' };
  class_type S3_GetBucketVersioningRequest, { class => 'Paws::S3::GetBucketVersioningRequest' };
  class_type S3_GetBucketWebsiteOutput, { class => 'Paws::S3::GetBucketWebsiteOutput' };
  class_type S3_GetBucketWebsiteRequest, { class => 'Paws::S3::GetBucketWebsiteRequest' };
  class_type S3_GetObjectAclOutput, { class => 'Paws::S3::GetObjectAclOutput' };
  class_type S3_GetObjectAclRequest, { class => 'Paws::S3::GetObjectAclRequest' };
  class_type S3_GetObjectLegalHoldOutput, { class => 'Paws::S3::GetObjectLegalHoldOutput' };
  class_type S3_GetObjectLegalHoldRequest, { class => 'Paws::S3::GetObjectLegalHoldRequest' };
  class_type S3_GetObjectLockConfigurationOutput, { class => 'Paws::S3::GetObjectLockConfigurationOutput' };
  class_type S3_GetObjectLockConfigurationRequest, { class => 'Paws::S3::GetObjectLockConfigurationRequest' };
  class_type S3_GetObjectOutput, { class => 'Paws::S3::GetObjectOutput' };
  class_type S3_GetObjectRequest, { class => 'Paws::S3::GetObjectRequest' };
  class_type S3_GetObjectRetentionOutput, { class => 'Paws::S3::GetObjectRetentionOutput' };
  class_type S3_GetObjectRetentionRequest, { class => 'Paws::S3::GetObjectRetentionRequest' };
  class_type S3_GetObjectTaggingOutput, { class => 'Paws::S3::GetObjectTaggingOutput' };
  class_type S3_GetObjectTaggingRequest, { class => 'Paws::S3::GetObjectTaggingRequest' };
  class_type S3_GetObjectTorrentOutput, { class => 'Paws::S3::GetObjectTorrentOutput' };
  class_type S3_GetObjectTorrentRequest, { class => 'Paws::S3::GetObjectTorrentRequest' };
  class_type S3_GetPublicAccessBlockOutput, { class => 'Paws::S3::GetPublicAccessBlockOutput' };
  class_type S3_GetPublicAccessBlockRequest, { class => 'Paws::S3::GetPublicAccessBlockRequest' };
  class_type S3_GlacierJobParameters, { class => 'Paws::S3::GlacierJobParameters' };
  class_type S3_Grant, { class => 'Paws::S3::Grant' };
  class_type S3_Grantee, { class => 'Paws::S3::Grantee' };
  class_type S3_HeadBucketRequest, { class => 'Paws::S3::HeadBucketRequest' };
  class_type S3_HeadObjectOutput, { class => 'Paws::S3::HeadObjectOutput' };
  class_type S3_HeadObjectRequest, { class => 'Paws::S3::HeadObjectRequest' };
  class_type S3_IndexDocument, { class => 'Paws::S3::IndexDocument' };
  class_type S3_Initiator, { class => 'Paws::S3::Initiator' };
  class_type S3_InputSerialization, { class => 'Paws::S3::InputSerialization' };
  class_type S3_InventoryConfiguration, { class => 'Paws::S3::InventoryConfiguration' };
  class_type S3_InventoryDestination, { class => 'Paws::S3::InventoryDestination' };
  class_type S3_InventoryEncryption, { class => 'Paws::S3::InventoryEncryption' };
  class_type S3_InventoryFilter, { class => 'Paws::S3::InventoryFilter' };
  class_type S3_InventoryS3BucketDestination, { class => 'Paws::S3::InventoryS3BucketDestination' };
  class_type S3_InventorySchedule, { class => 'Paws::S3::InventorySchedule' };
  class_type S3_JSONInput, { class => 'Paws::S3::JSONInput' };
  class_type S3_JSONOutput, { class => 'Paws::S3::JSONOutput' };
  class_type S3_LambdaFunctionConfiguration, { class => 'Paws::S3::LambdaFunctionConfiguration' };
  class_type S3_LifecycleConfiguration, { class => 'Paws::S3::LifecycleConfiguration' };
  class_type S3_LifecycleExpiration, { class => 'Paws::S3::LifecycleExpiration' };
  class_type S3_LifecycleRule, { class => 'Paws::S3::LifecycleRule' };
  class_type S3_LifecycleRuleAndOperator, { class => 'Paws::S3::LifecycleRuleAndOperator' };
  class_type S3_LifecycleRuleFilter, { class => 'Paws::S3::LifecycleRuleFilter' };
  class_type S3_ListBucketAnalyticsConfigurationsOutput, { class => 'Paws::S3::ListBucketAnalyticsConfigurationsOutput' };
  class_type S3_ListBucketAnalyticsConfigurationsRequest, { class => 'Paws::S3::ListBucketAnalyticsConfigurationsRequest' };
  class_type S3_ListBucketInventoryConfigurationsOutput, { class => 'Paws::S3::ListBucketInventoryConfigurationsOutput' };
  class_type S3_ListBucketInventoryConfigurationsRequest, { class => 'Paws::S3::ListBucketInventoryConfigurationsRequest' };
  class_type S3_ListBucketMetricsConfigurationsOutput, { class => 'Paws::S3::ListBucketMetricsConfigurationsOutput' };
  class_type S3_ListBucketMetricsConfigurationsRequest, { class => 'Paws::S3::ListBucketMetricsConfigurationsRequest' };
  class_type S3_ListBucketsOutput, { class => 'Paws::S3::ListBucketsOutput' };
  class_type S3_ListMultipartUploadsOutput, { class => 'Paws::S3::ListMultipartUploadsOutput' };
  class_type S3_ListMultipartUploadsRequest, { class => 'Paws::S3::ListMultipartUploadsRequest' };
  class_type S3_ListObjectsOutput, { class => 'Paws::S3::ListObjectsOutput' };
  class_type S3_ListObjectsRequest, { class => 'Paws::S3::ListObjectsRequest' };
  class_type S3_ListObjectsV2Output, { class => 'Paws::S3::ListObjectsV2Output' };
  class_type S3_ListObjectsV2Request, { class => 'Paws::S3::ListObjectsV2Request' };
  class_type S3_ListObjectVersionsOutput, { class => 'Paws::S3::ListObjectVersionsOutput' };
  class_type S3_ListObjectVersionsRequest, { class => 'Paws::S3::ListObjectVersionsRequest' };
  class_type S3_ListPartsOutput, { class => 'Paws::S3::ListPartsOutput' };
  class_type S3_ListPartsRequest, { class => 'Paws::S3::ListPartsRequest' };
  class_type S3_LoggingEnabled, { class => 'Paws::S3::LoggingEnabled' };
  class_type S3_Metadata, { class => 'Paws::S3::Metadata' };
  class_type S3_MetadataEntry, { class => 'Paws::S3::MetadataEntry' };
  class_type S3_MetricsAndOperator, { class => 'Paws::S3::MetricsAndOperator' };
  class_type S3_MetricsConfiguration, { class => 'Paws::S3::MetricsConfiguration' };
  class_type S3_MetricsFilter, { class => 'Paws::S3::MetricsFilter' };
  class_type S3_MultipartUpload, { class => 'Paws::S3::MultipartUpload' };
  class_type S3_NoncurrentVersionExpiration, { class => 'Paws::S3::NoncurrentVersionExpiration' };
  class_type S3_NoncurrentVersionTransition, { class => 'Paws::S3::NoncurrentVersionTransition' };
  class_type S3_NoSuchBucket, { class => 'Paws::S3::NoSuchBucket' };
  class_type S3_NoSuchKey, { class => 'Paws::S3::NoSuchKey' };
  class_type S3_NoSuchUpload, { class => 'Paws::S3::NoSuchUpload' };
  class_type S3_NotificationConfiguration, { class => 'Paws::S3::NotificationConfiguration' };
  class_type S3_NotificationConfigurationDeprecated, { class => 'Paws::S3::NotificationConfigurationDeprecated' };
  class_type S3_NotificationConfigurationFilter, { class => 'Paws::S3::NotificationConfigurationFilter' };
  class_type S3_Object, { class => 'Paws::S3::Object' };
  class_type S3_ObjectAlreadyInActiveTierError, { class => 'Paws::S3::ObjectAlreadyInActiveTierError' };
  class_type S3_ObjectIdentifier, { class => 'Paws::S3::ObjectIdentifier' };
  class_type S3_ObjectLockConfiguration, { class => 'Paws::S3::ObjectLockConfiguration' };
  class_type S3_ObjectLockLegalHold, { class => 'Paws::S3::ObjectLockLegalHold' };
  class_type S3_ObjectLockRetention, { class => 'Paws::S3::ObjectLockRetention' };
  class_type S3_ObjectLockRule, { class => 'Paws::S3::ObjectLockRule' };
  class_type S3_ObjectNotInActiveTierError, { class => 'Paws::S3::ObjectNotInActiveTierError' };
  class_type S3_ObjectVersion, { class => 'Paws::S3::ObjectVersion' };
  class_type S3_OutputLocation, { class => 'Paws::S3::OutputLocation' };
  class_type S3_OutputSerialization, { class => 'Paws::S3::OutputSerialization' };
  class_type S3_Owner, { class => 'Paws::S3::Owner' };
  class_type S3_ParquetInput, { class => 'Paws::S3::ParquetInput' };
  class_type S3_Part, { class => 'Paws::S3::Part' };
  class_type S3_PolicyStatus, { class => 'Paws::S3::PolicyStatus' };
  class_type S3_Progress, { class => 'Paws::S3::Progress' };
  class_type S3_ProgressEvent, { class => 'Paws::S3::ProgressEvent' };
  class_type S3_PublicAccessBlockConfiguration, { class => 'Paws::S3::PublicAccessBlockConfiguration' };
  class_type S3_PutBucketAccelerateConfigurationRequest, { class => 'Paws::S3::PutBucketAccelerateConfigurationRequest' };
  class_type S3_PutBucketAclRequest, { class => 'Paws::S3::PutBucketAclRequest' };
  class_type S3_PutBucketAnalyticsConfigurationRequest, { class => 'Paws::S3::PutBucketAnalyticsConfigurationRequest' };
  class_type S3_PutBucketCorsRequest, { class => 'Paws::S3::PutBucketCorsRequest' };
  class_type S3_PutBucketEncryptionRequest, { class => 'Paws::S3::PutBucketEncryptionRequest' };
  class_type S3_PutBucketInventoryConfigurationRequest, { class => 'Paws::S3::PutBucketInventoryConfigurationRequest' };
  class_type S3_PutBucketLifecycleConfigurationRequest, { class => 'Paws::S3::PutBucketLifecycleConfigurationRequest' };
  class_type S3_PutBucketLifecycleRequest, { class => 'Paws::S3::PutBucketLifecycleRequest' };
  class_type S3_PutBucketLoggingRequest, { class => 'Paws::S3::PutBucketLoggingRequest' };
  class_type S3_PutBucketMetricsConfigurationRequest, { class => 'Paws::S3::PutBucketMetricsConfigurationRequest' };
  class_type S3_PutBucketNotificationConfigurationRequest, { class => 'Paws::S3::PutBucketNotificationConfigurationRequest' };
  class_type S3_PutBucketNotificationRequest, { class => 'Paws::S3::PutBucketNotificationRequest' };
  class_type S3_PutBucketPolicyRequest, { class => 'Paws::S3::PutBucketPolicyRequest' };
  class_type S3_PutBucketReplicationRequest, { class => 'Paws::S3::PutBucketReplicationRequest' };
  class_type S3_PutBucketRequestPaymentRequest, { class => 'Paws::S3::PutBucketRequestPaymentRequest' };
  class_type S3_PutBucketTaggingRequest, { class => 'Paws::S3::PutBucketTaggingRequest' };
  class_type S3_PutBucketVersioningRequest, { class => 'Paws::S3::PutBucketVersioningRequest' };
  class_type S3_PutBucketWebsiteRequest, { class => 'Paws::S3::PutBucketWebsiteRequest' };
  class_type S3_PutObjectAclOutput, { class => 'Paws::S3::PutObjectAclOutput' };
  class_type S3_PutObjectAclRequest, { class => 'Paws::S3::PutObjectAclRequest' };
  class_type S3_PutObjectLegalHoldOutput, { class => 'Paws::S3::PutObjectLegalHoldOutput' };
  class_type S3_PutObjectLegalHoldRequest, { class => 'Paws::S3::PutObjectLegalHoldRequest' };
  class_type S3_PutObjectLockConfigurationOutput, { class => 'Paws::S3::PutObjectLockConfigurationOutput' };
  class_type S3_PutObjectLockConfigurationRequest, { class => 'Paws::S3::PutObjectLockConfigurationRequest' };
  class_type S3_PutObjectOutput, { class => 'Paws::S3::PutObjectOutput' };
  class_type S3_PutObjectRequest, { class => 'Paws::S3::PutObjectRequest' };
  class_type S3_PutObjectRetentionOutput, { class => 'Paws::S3::PutObjectRetentionOutput' };
  class_type S3_PutObjectRetentionRequest, { class => 'Paws::S3::PutObjectRetentionRequest' };
  class_type S3_PutObjectTaggingOutput, { class => 'Paws::S3::PutObjectTaggingOutput' };
  class_type S3_PutObjectTaggingRequest, { class => 'Paws::S3::PutObjectTaggingRequest' };
  class_type S3_PutPublicAccessBlockRequest, { class => 'Paws::S3::PutPublicAccessBlockRequest' };
  class_type S3_QueueConfiguration, { class => 'Paws::S3::QueueConfiguration' };
  class_type S3_QueueConfigurationDeprecated, { class => 'Paws::S3::QueueConfigurationDeprecated' };
  class_type S3_RecordsEvent, { class => 'Paws::S3::RecordsEvent' };
  class_type S3_Redirect, { class => 'Paws::S3::Redirect' };
  class_type S3_RedirectAllRequestsTo, { class => 'Paws::S3::RedirectAllRequestsTo' };
  class_type S3_ReplicationConfiguration, { class => 'Paws::S3::ReplicationConfiguration' };
  class_type S3_ReplicationRule, { class => 'Paws::S3::ReplicationRule' };
  class_type S3_ReplicationRuleAndOperator, { class => 'Paws::S3::ReplicationRuleAndOperator' };
  class_type S3_ReplicationRuleFilter, { class => 'Paws::S3::ReplicationRuleFilter' };
  class_type S3_RequestPaymentConfiguration, { class => 'Paws::S3::RequestPaymentConfiguration' };
  class_type S3_RequestProgress, { class => 'Paws::S3::RequestProgress' };
  class_type S3_RestoreObjectOutput, { class => 'Paws::S3::RestoreObjectOutput' };
  class_type S3_RestoreObjectRequest, { class => 'Paws::S3::RestoreObjectRequest' };
  class_type S3_RestoreRequest, { class => 'Paws::S3::RestoreRequest' };
  class_type S3_RoutingRule, { class => 'Paws::S3::RoutingRule' };
  class_type S3_Rule, { class => 'Paws::S3::Rule' };
  class_type S3_S3KeyFilter, { class => 'Paws::S3::S3KeyFilter' };
  class_type S3_S3Location, { class => 'Paws::S3::S3Location' };
  class_type S3_ScanRange, { class => 'Paws::S3::ScanRange' };
  class_type S3_SelectObjectContentEventStream, { class => 'Paws::S3::SelectObjectContentEventStream' };
  class_type S3_SelectObjectContentOutput, { class => 'Paws::S3::SelectObjectContentOutput' };
  class_type S3_SelectObjectContentRequest, { class => 'Paws::S3::SelectObjectContentRequest' };
  class_type S3_SelectParameters, { class => 'Paws::S3::SelectParameters' };
  class_type S3_ServerSideEncryptionByDefault, { class => 'Paws::S3::ServerSideEncryptionByDefault' };
  class_type S3_ServerSideEncryptionConfiguration, { class => 'Paws::S3::ServerSideEncryptionConfiguration' };
  class_type S3_ServerSideEncryptionRule, { class => 'Paws::S3::ServerSideEncryptionRule' };
  class_type S3_SourceSelectionCriteria, { class => 'Paws::S3::SourceSelectionCriteria' };
  class_type S3_SSEKMS, { class => 'Paws::S3::SSEKMS' };
  class_type S3_SseKmsEncryptedObjects, { class => 'Paws::S3::SseKmsEncryptedObjects' };
  class_type S3_SSES3, { class => 'Paws::S3::SSES3' };
  class_type S3_Stats, { class => 'Paws::S3::Stats' };
  class_type S3_StatsEvent, { class => 'Paws::S3::StatsEvent' };
  class_type S3_StorageClassAnalysis, { class => 'Paws::S3::StorageClassAnalysis' };
  class_type S3_StorageClassAnalysisDataExport, { class => 'Paws::S3::StorageClassAnalysisDataExport' };
  class_type S3_Tag, { class => 'Paws::S3::Tag' };
  class_type S3_Tagging, { class => 'Paws::S3::Tagging' };
  class_type S3_TargetGrant, { class => 'Paws::S3::TargetGrant' };
  class_type S3_TopicConfiguration, { class => 'Paws::S3::TopicConfiguration' };
  class_type S3_TopicConfigurationDeprecated, { class => 'Paws::S3::TopicConfigurationDeprecated' };
  class_type S3_Transition, { class => 'Paws::S3::Transition' };
  class_type S3_UploadPartCopyOutput, { class => 'Paws::S3::UploadPartCopyOutput' };
  class_type S3_UploadPartCopyRequest, { class => 'Paws::S3::UploadPartCopyRequest' };
  class_type S3_UploadPartOutput, { class => 'Paws::S3::UploadPartOutput' };
  class_type S3_UploadPartRequest, { class => 'Paws::S3::UploadPartRequest' };
  class_type S3_VersioningConfiguration, { class => 'Paws::S3::VersioningConfiguration' };
  class_type S3_WebsiteConfiguration, { class => 'Paws::S3::WebsiteConfiguration' };

1;
