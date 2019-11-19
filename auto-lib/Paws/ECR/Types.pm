package Paws::ECR::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type ECR_Attribute, { class => 'Paws::ECR::Attribute' };
  class_type ECR_AuthorizationData, { class => 'Paws::ECR::AuthorizationData' };
  class_type ECR_BatchCheckLayerAvailabilityRequest, { class => 'Paws::ECR::BatchCheckLayerAvailabilityRequest' };
  class_type ECR_BatchCheckLayerAvailabilityResponse, { class => 'Paws::ECR::BatchCheckLayerAvailabilityResponse' };
  class_type ECR_BatchDeleteImageRequest, { class => 'Paws::ECR::BatchDeleteImageRequest' };
  class_type ECR_BatchDeleteImageResponse, { class => 'Paws::ECR::BatchDeleteImageResponse' };
  class_type ECR_BatchGetImageRequest, { class => 'Paws::ECR::BatchGetImageRequest' };
  class_type ECR_BatchGetImageResponse, { class => 'Paws::ECR::BatchGetImageResponse' };
  class_type ECR_CompleteLayerUploadRequest, { class => 'Paws::ECR::CompleteLayerUploadRequest' };
  class_type ECR_CompleteLayerUploadResponse, { class => 'Paws::ECR::CompleteLayerUploadResponse' };
  class_type ECR_CreateRepositoryRequest, { class => 'Paws::ECR::CreateRepositoryRequest' };
  class_type ECR_CreateRepositoryResponse, { class => 'Paws::ECR::CreateRepositoryResponse' };
  class_type ECR_DeleteLifecyclePolicyRequest, { class => 'Paws::ECR::DeleteLifecyclePolicyRequest' };
  class_type ECR_DeleteLifecyclePolicyResponse, { class => 'Paws::ECR::DeleteLifecyclePolicyResponse' };
  class_type ECR_DeleteRepositoryPolicyRequest, { class => 'Paws::ECR::DeleteRepositoryPolicyRequest' };
  class_type ECR_DeleteRepositoryPolicyResponse, { class => 'Paws::ECR::DeleteRepositoryPolicyResponse' };
  class_type ECR_DeleteRepositoryRequest, { class => 'Paws::ECR::DeleteRepositoryRequest' };
  class_type ECR_DeleteRepositoryResponse, { class => 'Paws::ECR::DeleteRepositoryResponse' };
  class_type ECR_DescribeImageScanFindingsRequest, { class => 'Paws::ECR::DescribeImageScanFindingsRequest' };
  class_type ECR_DescribeImageScanFindingsResponse, { class => 'Paws::ECR::DescribeImageScanFindingsResponse' };
  class_type ECR_DescribeImagesFilter, { class => 'Paws::ECR::DescribeImagesFilter' };
  class_type ECR_DescribeImagesRequest, { class => 'Paws::ECR::DescribeImagesRequest' };
  class_type ECR_DescribeImagesResponse, { class => 'Paws::ECR::DescribeImagesResponse' };
  class_type ECR_DescribeRepositoriesRequest, { class => 'Paws::ECR::DescribeRepositoriesRequest' };
  class_type ECR_DescribeRepositoriesResponse, { class => 'Paws::ECR::DescribeRepositoriesResponse' };
  class_type ECR_EmptyUploadException, { class => 'Paws::ECR::EmptyUploadException' };
  class_type ECR_FindingSeverityCounts, { class => 'Paws::ECR::FindingSeverityCounts' };
  class_type ECR_GetAuthorizationTokenRequest, { class => 'Paws::ECR::GetAuthorizationTokenRequest' };
  class_type ECR_GetAuthorizationTokenResponse, { class => 'Paws::ECR::GetAuthorizationTokenResponse' };
  class_type ECR_GetDownloadUrlForLayerRequest, { class => 'Paws::ECR::GetDownloadUrlForLayerRequest' };
  class_type ECR_GetDownloadUrlForLayerResponse, { class => 'Paws::ECR::GetDownloadUrlForLayerResponse' };
  class_type ECR_GetLifecyclePolicyPreviewRequest, { class => 'Paws::ECR::GetLifecyclePolicyPreviewRequest' };
  class_type ECR_GetLifecyclePolicyPreviewResponse, { class => 'Paws::ECR::GetLifecyclePolicyPreviewResponse' };
  class_type ECR_GetLifecyclePolicyRequest, { class => 'Paws::ECR::GetLifecyclePolicyRequest' };
  class_type ECR_GetLifecyclePolicyResponse, { class => 'Paws::ECR::GetLifecyclePolicyResponse' };
  class_type ECR_GetRepositoryPolicyRequest, { class => 'Paws::ECR::GetRepositoryPolicyRequest' };
  class_type ECR_GetRepositoryPolicyResponse, { class => 'Paws::ECR::GetRepositoryPolicyResponse' };
  class_type ECR_Image, { class => 'Paws::ECR::Image' };
  class_type ECR_ImageAlreadyExistsException, { class => 'Paws::ECR::ImageAlreadyExistsException' };
  class_type ECR_ImageDetail, { class => 'Paws::ECR::ImageDetail' };
  class_type ECR_ImageFailure, { class => 'Paws::ECR::ImageFailure' };
  class_type ECR_ImageIdentifier, { class => 'Paws::ECR::ImageIdentifier' };
  class_type ECR_ImageNotFoundException, { class => 'Paws::ECR::ImageNotFoundException' };
  class_type ECR_ImageScanFinding, { class => 'Paws::ECR::ImageScanFinding' };
  class_type ECR_ImageScanFindings, { class => 'Paws::ECR::ImageScanFindings' };
  class_type ECR_ImageScanFindingsSummary, { class => 'Paws::ECR::ImageScanFindingsSummary' };
  class_type ECR_ImageScanningConfiguration, { class => 'Paws::ECR::ImageScanningConfiguration' };
  class_type ECR_ImageScanStatus, { class => 'Paws::ECR::ImageScanStatus' };
  class_type ECR_ImageTagAlreadyExistsException, { class => 'Paws::ECR::ImageTagAlreadyExistsException' };
  class_type ECR_InitiateLayerUploadRequest, { class => 'Paws::ECR::InitiateLayerUploadRequest' };
  class_type ECR_InitiateLayerUploadResponse, { class => 'Paws::ECR::InitiateLayerUploadResponse' };
  class_type ECR_InvalidLayerException, { class => 'Paws::ECR::InvalidLayerException' };
  class_type ECR_InvalidLayerPartException, { class => 'Paws::ECR::InvalidLayerPartException' };
  class_type ECR_InvalidParameterException, { class => 'Paws::ECR::InvalidParameterException' };
  class_type ECR_InvalidTagParameterException, { class => 'Paws::ECR::InvalidTagParameterException' };
  class_type ECR_Layer, { class => 'Paws::ECR::Layer' };
  class_type ECR_LayerAlreadyExistsException, { class => 'Paws::ECR::LayerAlreadyExistsException' };
  class_type ECR_LayerFailure, { class => 'Paws::ECR::LayerFailure' };
  class_type ECR_LayerInaccessibleException, { class => 'Paws::ECR::LayerInaccessibleException' };
  class_type ECR_LayerPartTooSmallException, { class => 'Paws::ECR::LayerPartTooSmallException' };
  class_type ECR_LayersNotFoundException, { class => 'Paws::ECR::LayersNotFoundException' };
  class_type ECR_LifecyclePolicyNotFoundException, { class => 'Paws::ECR::LifecyclePolicyNotFoundException' };
  class_type ECR_LifecyclePolicyPreviewFilter, { class => 'Paws::ECR::LifecyclePolicyPreviewFilter' };
  class_type ECR_LifecyclePolicyPreviewInProgressException, { class => 'Paws::ECR::LifecyclePolicyPreviewInProgressException' };
  class_type ECR_LifecyclePolicyPreviewNotFoundException, { class => 'Paws::ECR::LifecyclePolicyPreviewNotFoundException' };
  class_type ECR_LifecyclePolicyPreviewResult, { class => 'Paws::ECR::LifecyclePolicyPreviewResult' };
  class_type ECR_LifecyclePolicyPreviewSummary, { class => 'Paws::ECR::LifecyclePolicyPreviewSummary' };
  class_type ECR_LifecyclePolicyRuleAction, { class => 'Paws::ECR::LifecyclePolicyRuleAction' };
  class_type ECR_LimitExceededException, { class => 'Paws::ECR::LimitExceededException' };
  class_type ECR_ListImagesFilter, { class => 'Paws::ECR::ListImagesFilter' };
  class_type ECR_ListImagesRequest, { class => 'Paws::ECR::ListImagesRequest' };
  class_type ECR_ListImagesResponse, { class => 'Paws::ECR::ListImagesResponse' };
  class_type ECR_ListTagsForResourceRequest, { class => 'Paws::ECR::ListTagsForResourceRequest' };
  class_type ECR_ListTagsForResourceResponse, { class => 'Paws::ECR::ListTagsForResourceResponse' };
  class_type ECR_PutImageRequest, { class => 'Paws::ECR::PutImageRequest' };
  class_type ECR_PutImageResponse, { class => 'Paws::ECR::PutImageResponse' };
  class_type ECR_PutImageScanningConfigurationRequest, { class => 'Paws::ECR::PutImageScanningConfigurationRequest' };
  class_type ECR_PutImageScanningConfigurationResponse, { class => 'Paws::ECR::PutImageScanningConfigurationResponse' };
  class_type ECR_PutImageTagMutabilityRequest, { class => 'Paws::ECR::PutImageTagMutabilityRequest' };
  class_type ECR_PutImageTagMutabilityResponse, { class => 'Paws::ECR::PutImageTagMutabilityResponse' };
  class_type ECR_PutLifecyclePolicyRequest, { class => 'Paws::ECR::PutLifecyclePolicyRequest' };
  class_type ECR_PutLifecyclePolicyResponse, { class => 'Paws::ECR::PutLifecyclePolicyResponse' };
  class_type ECR_Repository, { class => 'Paws::ECR::Repository' };
  class_type ECR_RepositoryAlreadyExistsException, { class => 'Paws::ECR::RepositoryAlreadyExistsException' };
  class_type ECR_RepositoryNotEmptyException, { class => 'Paws::ECR::RepositoryNotEmptyException' };
  class_type ECR_RepositoryNotFoundException, { class => 'Paws::ECR::RepositoryNotFoundException' };
  class_type ECR_RepositoryPolicyNotFoundException, { class => 'Paws::ECR::RepositoryPolicyNotFoundException' };
  class_type ECR_ScanNotFoundException, { class => 'Paws::ECR::ScanNotFoundException' };
  class_type ECR_ServerException, { class => 'Paws::ECR::ServerException' };
  class_type ECR_SetRepositoryPolicyRequest, { class => 'Paws::ECR::SetRepositoryPolicyRequest' };
  class_type ECR_SetRepositoryPolicyResponse, { class => 'Paws::ECR::SetRepositoryPolicyResponse' };
  class_type ECR_StartImageScanRequest, { class => 'Paws::ECR::StartImageScanRequest' };
  class_type ECR_StartImageScanResponse, { class => 'Paws::ECR::StartImageScanResponse' };
  class_type ECR_StartLifecyclePolicyPreviewRequest, { class => 'Paws::ECR::StartLifecyclePolicyPreviewRequest' };
  class_type ECR_StartLifecyclePolicyPreviewResponse, { class => 'Paws::ECR::StartLifecyclePolicyPreviewResponse' };
  class_type ECR_Tag, { class => 'Paws::ECR::Tag' };
  class_type ECR_TagResourceRequest, { class => 'Paws::ECR::TagResourceRequest' };
  class_type ECR_TagResourceResponse, { class => 'Paws::ECR::TagResourceResponse' };
  class_type ECR_TooManyTagsException, { class => 'Paws::ECR::TooManyTagsException' };
  class_type ECR_UntagResourceRequest, { class => 'Paws::ECR::UntagResourceRequest' };
  class_type ECR_UntagResourceResponse, { class => 'Paws::ECR::UntagResourceResponse' };
  class_type ECR_UploadLayerPartRequest, { class => 'Paws::ECR::UploadLayerPartRequest' };
  class_type ECR_UploadLayerPartResponse, { class => 'Paws::ECR::UploadLayerPartResponse' };
  class_type ECR_UploadNotFoundException, { class => 'Paws::ECR::UploadNotFoundException' };

1;
