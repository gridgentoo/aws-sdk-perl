package Paws::Amplify::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type Amplify_App, { class => 'Paws::Amplify::App' };
  class_type Amplify_Artifact, { class => 'Paws::Amplify::Artifact' };
  class_type Amplify_AutoBranchCreationConfig, { class => 'Paws::Amplify::AutoBranchCreationConfig' };
  class_type Amplify_BadRequestException, { class => 'Paws::Amplify::BadRequestException' };
  class_type Amplify_Branch, { class => 'Paws::Amplify::Branch' };
  class_type Amplify_CreateAppRequest, { class => 'Paws::Amplify::CreateAppRequest' };
  class_type Amplify_CreateAppResult, { class => 'Paws::Amplify::CreateAppResult' };
  class_type Amplify_CreateBranchRequest, { class => 'Paws::Amplify::CreateBranchRequest' };
  class_type Amplify_CreateBranchResult, { class => 'Paws::Amplify::CreateBranchResult' };
  class_type Amplify_CreateDeploymentRequest, { class => 'Paws::Amplify::CreateDeploymentRequest' };
  class_type Amplify_CreateDeploymentResult, { class => 'Paws::Amplify::CreateDeploymentResult' };
  class_type Amplify_CreateDomainAssociationRequest, { class => 'Paws::Amplify::CreateDomainAssociationRequest' };
  class_type Amplify_CreateDomainAssociationResult, { class => 'Paws::Amplify::CreateDomainAssociationResult' };
  class_type Amplify_CreateWebhookRequest, { class => 'Paws::Amplify::CreateWebhookRequest' };
  class_type Amplify_CreateWebhookResult, { class => 'Paws::Amplify::CreateWebhookResult' };
  class_type Amplify_CustomRule, { class => 'Paws::Amplify::CustomRule' };
  class_type Amplify_DeleteAppRequest, { class => 'Paws::Amplify::DeleteAppRequest' };
  class_type Amplify_DeleteAppResult, { class => 'Paws::Amplify::DeleteAppResult' };
  class_type Amplify_DeleteBranchRequest, { class => 'Paws::Amplify::DeleteBranchRequest' };
  class_type Amplify_DeleteBranchResult, { class => 'Paws::Amplify::DeleteBranchResult' };
  class_type Amplify_DeleteDomainAssociationRequest, { class => 'Paws::Amplify::DeleteDomainAssociationRequest' };
  class_type Amplify_DeleteDomainAssociationResult, { class => 'Paws::Amplify::DeleteDomainAssociationResult' };
  class_type Amplify_DeleteJobRequest, { class => 'Paws::Amplify::DeleteJobRequest' };
  class_type Amplify_DeleteJobResult, { class => 'Paws::Amplify::DeleteJobResult' };
  class_type Amplify_DeleteWebhookRequest, { class => 'Paws::Amplify::DeleteWebhookRequest' };
  class_type Amplify_DeleteWebhookResult, { class => 'Paws::Amplify::DeleteWebhookResult' };
  class_type Amplify_DependentServiceFailureException, { class => 'Paws::Amplify::DependentServiceFailureException' };
  class_type Amplify_DomainAssociation, { class => 'Paws::Amplify::DomainAssociation' };
  class_type Amplify_EnvironmentVariables, { class => 'Paws::Amplify::EnvironmentVariables' };
  class_type Amplify_FileMap, { class => 'Paws::Amplify::FileMap' };
  class_type Amplify_FileUploadUrls, { class => 'Paws::Amplify::FileUploadUrls' };
  class_type Amplify_GenerateAccessLogsRequest, { class => 'Paws::Amplify::GenerateAccessLogsRequest' };
  class_type Amplify_GenerateAccessLogsResult, { class => 'Paws::Amplify::GenerateAccessLogsResult' };
  class_type Amplify_GetAppRequest, { class => 'Paws::Amplify::GetAppRequest' };
  class_type Amplify_GetAppResult, { class => 'Paws::Amplify::GetAppResult' };
  class_type Amplify_GetArtifactUrlRequest, { class => 'Paws::Amplify::GetArtifactUrlRequest' };
  class_type Amplify_GetArtifactUrlResult, { class => 'Paws::Amplify::GetArtifactUrlResult' };
  class_type Amplify_GetBranchRequest, { class => 'Paws::Amplify::GetBranchRequest' };
  class_type Amplify_GetBranchResult, { class => 'Paws::Amplify::GetBranchResult' };
  class_type Amplify_GetDomainAssociationRequest, { class => 'Paws::Amplify::GetDomainAssociationRequest' };
  class_type Amplify_GetDomainAssociationResult, { class => 'Paws::Amplify::GetDomainAssociationResult' };
  class_type Amplify_GetJobRequest, { class => 'Paws::Amplify::GetJobRequest' };
  class_type Amplify_GetJobResult, { class => 'Paws::Amplify::GetJobResult' };
  class_type Amplify_GetWebhookRequest, { class => 'Paws::Amplify::GetWebhookRequest' };
  class_type Amplify_GetWebhookResult, { class => 'Paws::Amplify::GetWebhookResult' };
  class_type Amplify_InternalFailureException, { class => 'Paws::Amplify::InternalFailureException' };
  class_type Amplify_Job, { class => 'Paws::Amplify::Job' };
  class_type Amplify_JobSummary, { class => 'Paws::Amplify::JobSummary' };
  class_type Amplify_LimitExceededException, { class => 'Paws::Amplify::LimitExceededException' };
  class_type Amplify_ListAppsRequest, { class => 'Paws::Amplify::ListAppsRequest' };
  class_type Amplify_ListAppsResult, { class => 'Paws::Amplify::ListAppsResult' };
  class_type Amplify_ListArtifactsRequest, { class => 'Paws::Amplify::ListArtifactsRequest' };
  class_type Amplify_ListArtifactsResult, { class => 'Paws::Amplify::ListArtifactsResult' };
  class_type Amplify_ListBranchesRequest, { class => 'Paws::Amplify::ListBranchesRequest' };
  class_type Amplify_ListBranchesResult, { class => 'Paws::Amplify::ListBranchesResult' };
  class_type Amplify_ListDomainAssociationsRequest, { class => 'Paws::Amplify::ListDomainAssociationsRequest' };
  class_type Amplify_ListDomainAssociationsResult, { class => 'Paws::Amplify::ListDomainAssociationsResult' };
  class_type Amplify_ListJobsRequest, { class => 'Paws::Amplify::ListJobsRequest' };
  class_type Amplify_ListJobsResult, { class => 'Paws::Amplify::ListJobsResult' };
  class_type Amplify_ListTagsForResourceRequest, { class => 'Paws::Amplify::ListTagsForResourceRequest' };
  class_type Amplify_ListTagsForResourceResponse, { class => 'Paws::Amplify::ListTagsForResourceResponse' };
  class_type Amplify_ListWebhooksRequest, { class => 'Paws::Amplify::ListWebhooksRequest' };
  class_type Amplify_ListWebhooksResult, { class => 'Paws::Amplify::ListWebhooksResult' };
  class_type Amplify_NotFoundException, { class => 'Paws::Amplify::NotFoundException' };
  class_type Amplify_ProductionBranch, { class => 'Paws::Amplify::ProductionBranch' };
  class_type Amplify_ResourceNotFoundException, { class => 'Paws::Amplify::ResourceNotFoundException' };
  class_type Amplify_Screenshots, { class => 'Paws::Amplify::Screenshots' };
  class_type Amplify_StartDeploymentRequest, { class => 'Paws::Amplify::StartDeploymentRequest' };
  class_type Amplify_StartDeploymentResult, { class => 'Paws::Amplify::StartDeploymentResult' };
  class_type Amplify_StartJobRequest, { class => 'Paws::Amplify::StartJobRequest' };
  class_type Amplify_StartJobResult, { class => 'Paws::Amplify::StartJobResult' };
  class_type Amplify_Step, { class => 'Paws::Amplify::Step' };
  class_type Amplify_StopJobRequest, { class => 'Paws::Amplify::StopJobRequest' };
  class_type Amplify_StopJobResult, { class => 'Paws::Amplify::StopJobResult' };
  class_type Amplify_SubDomain, { class => 'Paws::Amplify::SubDomain' };
  class_type Amplify_SubDomainSetting, { class => 'Paws::Amplify::SubDomainSetting' };
  class_type Amplify_TagMap, { class => 'Paws::Amplify::TagMap' };
  class_type Amplify_TagResourceRequest, { class => 'Paws::Amplify::TagResourceRequest' };
  class_type Amplify_TagResourceResponse, { class => 'Paws::Amplify::TagResourceResponse' };
  class_type Amplify_UnauthorizedException, { class => 'Paws::Amplify::UnauthorizedException' };
  class_type Amplify_UntagResourceRequest, { class => 'Paws::Amplify::UntagResourceRequest' };
  class_type Amplify_UntagResourceResponse, { class => 'Paws::Amplify::UntagResourceResponse' };
  class_type Amplify_UpdateAppRequest, { class => 'Paws::Amplify::UpdateAppRequest' };
  class_type Amplify_UpdateAppResult, { class => 'Paws::Amplify::UpdateAppResult' };
  class_type Amplify_UpdateBranchRequest, { class => 'Paws::Amplify::UpdateBranchRequest' };
  class_type Amplify_UpdateBranchResult, { class => 'Paws::Amplify::UpdateBranchResult' };
  class_type Amplify_UpdateDomainAssociationRequest, { class => 'Paws::Amplify::UpdateDomainAssociationRequest' };
  class_type Amplify_UpdateDomainAssociationResult, { class => 'Paws::Amplify::UpdateDomainAssociationResult' };
  class_type Amplify_UpdateWebhookRequest, { class => 'Paws::Amplify::UpdateWebhookRequest' };
  class_type Amplify_UpdateWebhookResult, { class => 'Paws::Amplify::UpdateWebhookResult' };
  class_type Amplify_Webhook, { class => 'Paws::Amplify::Webhook' };

1;
