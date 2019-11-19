package Paws::Kafka::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type Kafka___mapOf__string, { class => 'Paws::Kafka::__mapOf__string' };
  class_type Kafka_BadRequestException, { class => 'Paws::Kafka::BadRequestException' };
  class_type Kafka_BrokerEBSVolumeInfo, { class => 'Paws::Kafka::BrokerEBSVolumeInfo' };
  class_type Kafka_BrokerNodeGroupInfo, { class => 'Paws::Kafka::BrokerNodeGroupInfo' };
  class_type Kafka_BrokerNodeInfo, { class => 'Paws::Kafka::BrokerNodeInfo' };
  class_type Kafka_BrokerSoftwareInfo, { class => 'Paws::Kafka::BrokerSoftwareInfo' };
  class_type Kafka_ClientAuthentication, { class => 'Paws::Kafka::ClientAuthentication' };
  class_type Kafka_ClusterInfo, { class => 'Paws::Kafka::ClusterInfo' };
  class_type Kafka_ClusterOperationInfo, { class => 'Paws::Kafka::ClusterOperationInfo' };
  class_type Kafka_Configuration, { class => 'Paws::Kafka::Configuration' };
  class_type Kafka_ConfigurationInfo, { class => 'Paws::Kafka::ConfigurationInfo' };
  class_type Kafka_ConfigurationRevision, { class => 'Paws::Kafka::ConfigurationRevision' };
  class_type Kafka_ConflictException, { class => 'Paws::Kafka::ConflictException' };
  class_type Kafka_CreateClusterRequest, { class => 'Paws::Kafka::CreateClusterRequest' };
  class_type Kafka_CreateClusterResponse, { class => 'Paws::Kafka::CreateClusterResponse' };
  class_type Kafka_CreateConfigurationRequest, { class => 'Paws::Kafka::CreateConfigurationRequest' };
  class_type Kafka_CreateConfigurationResponse, { class => 'Paws::Kafka::CreateConfigurationResponse' };
  class_type Kafka_DeleteClusterRequest, { class => 'Paws::Kafka::DeleteClusterRequest' };
  class_type Kafka_DeleteClusterResponse, { class => 'Paws::Kafka::DeleteClusterResponse' };
  class_type Kafka_DescribeClusterOperationRequest, { class => 'Paws::Kafka::DescribeClusterOperationRequest' };
  class_type Kafka_DescribeClusterOperationResponse, { class => 'Paws::Kafka::DescribeClusterOperationResponse' };
  class_type Kafka_DescribeClusterRequest, { class => 'Paws::Kafka::DescribeClusterRequest' };
  class_type Kafka_DescribeClusterResponse, { class => 'Paws::Kafka::DescribeClusterResponse' };
  class_type Kafka_DescribeConfigurationRequest, { class => 'Paws::Kafka::DescribeConfigurationRequest' };
  class_type Kafka_DescribeConfigurationResponse, { class => 'Paws::Kafka::DescribeConfigurationResponse' };
  class_type Kafka_DescribeConfigurationRevisionRequest, { class => 'Paws::Kafka::DescribeConfigurationRevisionRequest' };
  class_type Kafka_DescribeConfigurationRevisionResponse, { class => 'Paws::Kafka::DescribeConfigurationRevisionResponse' };
  class_type Kafka_EBSStorageInfo, { class => 'Paws::Kafka::EBSStorageInfo' };
  class_type Kafka_EncryptionAtRest, { class => 'Paws::Kafka::EncryptionAtRest' };
  class_type Kafka_EncryptionInfo, { class => 'Paws::Kafka::EncryptionInfo' };
  class_type Kafka_EncryptionInTransit, { class => 'Paws::Kafka::EncryptionInTransit' };
  class_type Kafka_Error, { class => 'Paws::Kafka::Error' };
  class_type Kafka_ErrorInfo, { class => 'Paws::Kafka::ErrorInfo' };
  class_type Kafka_ForbiddenException, { class => 'Paws::Kafka::ForbiddenException' };
  class_type Kafka_GetBootstrapBrokersRequest, { class => 'Paws::Kafka::GetBootstrapBrokersRequest' };
  class_type Kafka_GetBootstrapBrokersResponse, { class => 'Paws::Kafka::GetBootstrapBrokersResponse' };
  class_type Kafka_InternalServerErrorException, { class => 'Paws::Kafka::InternalServerErrorException' };
  class_type Kafka_ListClusterOperationsRequest, { class => 'Paws::Kafka::ListClusterOperationsRequest' };
  class_type Kafka_ListClusterOperationsResponse, { class => 'Paws::Kafka::ListClusterOperationsResponse' };
  class_type Kafka_ListClustersRequest, { class => 'Paws::Kafka::ListClustersRequest' };
  class_type Kafka_ListClustersResponse, { class => 'Paws::Kafka::ListClustersResponse' };
  class_type Kafka_ListConfigurationRevisionsRequest, { class => 'Paws::Kafka::ListConfigurationRevisionsRequest' };
  class_type Kafka_ListConfigurationRevisionsResponse, { class => 'Paws::Kafka::ListConfigurationRevisionsResponse' };
  class_type Kafka_ListConfigurationsRequest, { class => 'Paws::Kafka::ListConfigurationsRequest' };
  class_type Kafka_ListConfigurationsResponse, { class => 'Paws::Kafka::ListConfigurationsResponse' };
  class_type Kafka_ListNodesRequest, { class => 'Paws::Kafka::ListNodesRequest' };
  class_type Kafka_ListNodesResponse, { class => 'Paws::Kafka::ListNodesResponse' };
  class_type Kafka_ListTagsForResourceRequest, { class => 'Paws::Kafka::ListTagsForResourceRequest' };
  class_type Kafka_ListTagsForResourceResponse, { class => 'Paws::Kafka::ListTagsForResourceResponse' };
  class_type Kafka_MutableClusterInfo, { class => 'Paws::Kafka::MutableClusterInfo' };
  class_type Kafka_NodeInfo, { class => 'Paws::Kafka::NodeInfo' };
  class_type Kafka_NotFoundException, { class => 'Paws::Kafka::NotFoundException' };
  class_type Kafka_ServiceUnavailableException, { class => 'Paws::Kafka::ServiceUnavailableException' };
  class_type Kafka_StorageInfo, { class => 'Paws::Kafka::StorageInfo' };
  class_type Kafka_TagResourceRequest, { class => 'Paws::Kafka::TagResourceRequest' };
  class_type Kafka_Tls, { class => 'Paws::Kafka::Tls' };
  class_type Kafka_TooManyRequestsException, { class => 'Paws::Kafka::TooManyRequestsException' };
  class_type Kafka_UnauthorizedException, { class => 'Paws::Kafka::UnauthorizedException' };
  class_type Kafka_UntagResourceRequest, { class => 'Paws::Kafka::UntagResourceRequest' };
  class_type Kafka_UpdateBrokerCountRequest, { class => 'Paws::Kafka::UpdateBrokerCountRequest' };
  class_type Kafka_UpdateBrokerCountResponse, { class => 'Paws::Kafka::UpdateBrokerCountResponse' };
  class_type Kafka_UpdateBrokerStorageRequest, { class => 'Paws::Kafka::UpdateBrokerStorageRequest' };
  class_type Kafka_UpdateBrokerStorageResponse, { class => 'Paws::Kafka::UpdateBrokerStorageResponse' };
  class_type Kafka_UpdateClusterConfigurationRequest, { class => 'Paws::Kafka::UpdateClusterConfigurationRequest' };
  class_type Kafka_UpdateClusterConfigurationResponse, { class => 'Paws::Kafka::UpdateClusterConfigurationResponse' };
  class_type Kafka_ZookeeperNodeInfo, { class => 'Paws::Kafka::ZookeeperNodeInfo' };

1;
