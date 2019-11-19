package Paws::GroundStation::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type GroundStation_AntennaDownlinkConfig, { class => 'Paws::GroundStation::AntennaDownlinkConfig' };
  class_type GroundStation_AntennaDownlinkDemodDecodeConfig, { class => 'Paws::GroundStation::AntennaDownlinkDemodDecodeConfig' };
  class_type GroundStation_AntennaUplinkConfig, { class => 'Paws::GroundStation::AntennaUplinkConfig' };
  class_type GroundStation_CancelContactRequest, { class => 'Paws::GroundStation::CancelContactRequest' };
  class_type GroundStation_ConfigIdResponse, { class => 'Paws::GroundStation::ConfigIdResponse' };
  class_type GroundStation_ConfigListItem, { class => 'Paws::GroundStation::ConfigListItem' };
  class_type GroundStation_ConfigTypeData, { class => 'Paws::GroundStation::ConfigTypeData' };
  class_type GroundStation_ContactData, { class => 'Paws::GroundStation::ContactData' };
  class_type GroundStation_ContactIdResponse, { class => 'Paws::GroundStation::ContactIdResponse' };
  class_type GroundStation_CreateConfigRequest, { class => 'Paws::GroundStation::CreateConfigRequest' };
  class_type GroundStation_CreateDataflowEndpointGroupRequest, { class => 'Paws::GroundStation::CreateDataflowEndpointGroupRequest' };
  class_type GroundStation_CreateMissionProfileRequest, { class => 'Paws::GroundStation::CreateMissionProfileRequest' };
  class_type GroundStation_DataflowEndpoint, { class => 'Paws::GroundStation::DataflowEndpoint' };
  class_type GroundStation_DataflowEndpointConfig, { class => 'Paws::GroundStation::DataflowEndpointConfig' };
  class_type GroundStation_DataflowEndpointGroupIdResponse, { class => 'Paws::GroundStation::DataflowEndpointGroupIdResponse' };
  class_type GroundStation_DataflowEndpointListItem, { class => 'Paws::GroundStation::DataflowEndpointListItem' };
  class_type GroundStation_DecodeConfig, { class => 'Paws::GroundStation::DecodeConfig' };
  class_type GroundStation_DeleteConfigRequest, { class => 'Paws::GroundStation::DeleteConfigRequest' };
  class_type GroundStation_DeleteDataflowEndpointGroupRequest, { class => 'Paws::GroundStation::DeleteDataflowEndpointGroupRequest' };
  class_type GroundStation_DeleteMissionProfileRequest, { class => 'Paws::GroundStation::DeleteMissionProfileRequest' };
  class_type GroundStation_DemodulationConfig, { class => 'Paws::GroundStation::DemodulationConfig' };
  class_type GroundStation_DependencyException, { class => 'Paws::GroundStation::DependencyException' };
  class_type GroundStation_DescribeContactRequest, { class => 'Paws::GroundStation::DescribeContactRequest' };
  class_type GroundStation_DescribeContactResponse, { class => 'Paws::GroundStation::DescribeContactResponse' };
  class_type GroundStation_Eirp, { class => 'Paws::GroundStation::Eirp' };
  class_type GroundStation_Elevation, { class => 'Paws::GroundStation::Elevation' };
  class_type GroundStation_EndpointDetails, { class => 'Paws::GroundStation::EndpointDetails' };
  class_type GroundStation_Frequency, { class => 'Paws::GroundStation::Frequency' };
  class_type GroundStation_FrequencyBandwidth, { class => 'Paws::GroundStation::FrequencyBandwidth' };
  class_type GroundStation_GetConfigRequest, { class => 'Paws::GroundStation::GetConfigRequest' };
  class_type GroundStation_GetConfigResponse, { class => 'Paws::GroundStation::GetConfigResponse' };
  class_type GroundStation_GetDataflowEndpointGroupRequest, { class => 'Paws::GroundStation::GetDataflowEndpointGroupRequest' };
  class_type GroundStation_GetDataflowEndpointGroupResponse, { class => 'Paws::GroundStation::GetDataflowEndpointGroupResponse' };
  class_type GroundStation_GetMinuteUsageRequest, { class => 'Paws::GroundStation::GetMinuteUsageRequest' };
  class_type GroundStation_GetMinuteUsageResponse, { class => 'Paws::GroundStation::GetMinuteUsageResponse' };
  class_type GroundStation_GetMissionProfileRequest, { class => 'Paws::GroundStation::GetMissionProfileRequest' };
  class_type GroundStation_GetMissionProfileResponse, { class => 'Paws::GroundStation::GetMissionProfileResponse' };
  class_type GroundStation_GetSatelliteRequest, { class => 'Paws::GroundStation::GetSatelliteRequest' };
  class_type GroundStation_GetSatelliteResponse, { class => 'Paws::GroundStation::GetSatelliteResponse' };
  class_type GroundStation_GroundStationData, { class => 'Paws::GroundStation::GroundStationData' };
  class_type GroundStation_InvalidParameterException, { class => 'Paws::GroundStation::InvalidParameterException' };
  class_type GroundStation_ListConfigsRequest, { class => 'Paws::GroundStation::ListConfigsRequest' };
  class_type GroundStation_ListConfigsResponse, { class => 'Paws::GroundStation::ListConfigsResponse' };
  class_type GroundStation_ListContactsRequest, { class => 'Paws::GroundStation::ListContactsRequest' };
  class_type GroundStation_ListContactsResponse, { class => 'Paws::GroundStation::ListContactsResponse' };
  class_type GroundStation_ListDataflowEndpointGroupsRequest, { class => 'Paws::GroundStation::ListDataflowEndpointGroupsRequest' };
  class_type GroundStation_ListDataflowEndpointGroupsResponse, { class => 'Paws::GroundStation::ListDataflowEndpointGroupsResponse' };
  class_type GroundStation_ListGroundStationsRequest, { class => 'Paws::GroundStation::ListGroundStationsRequest' };
  class_type GroundStation_ListGroundStationsResponse, { class => 'Paws::GroundStation::ListGroundStationsResponse' };
  class_type GroundStation_ListMissionProfilesRequest, { class => 'Paws::GroundStation::ListMissionProfilesRequest' };
  class_type GroundStation_ListMissionProfilesResponse, { class => 'Paws::GroundStation::ListMissionProfilesResponse' };
  class_type GroundStation_ListSatellitesRequest, { class => 'Paws::GroundStation::ListSatellitesRequest' };
  class_type GroundStation_ListSatellitesResponse, { class => 'Paws::GroundStation::ListSatellitesResponse' };
  class_type GroundStation_ListTagsForResourceRequest, { class => 'Paws::GroundStation::ListTagsForResourceRequest' };
  class_type GroundStation_ListTagsForResourceResponse, { class => 'Paws::GroundStation::ListTagsForResourceResponse' };
  class_type GroundStation_MissionProfileIdResponse, { class => 'Paws::GroundStation::MissionProfileIdResponse' };
  class_type GroundStation_MissionProfileListItem, { class => 'Paws::GroundStation::MissionProfileListItem' };
  class_type GroundStation_ReserveContactRequest, { class => 'Paws::GroundStation::ReserveContactRequest' };
  class_type GroundStation_ResourceNotFoundException, { class => 'Paws::GroundStation::ResourceNotFoundException' };
  class_type GroundStation_SatelliteListItem, { class => 'Paws::GroundStation::SatelliteListItem' };
  class_type GroundStation_SecurityDetails, { class => 'Paws::GroundStation::SecurityDetails' };
  class_type GroundStation_SocketAddress, { class => 'Paws::GroundStation::SocketAddress' };
  class_type GroundStation_SpectrumConfig, { class => 'Paws::GroundStation::SpectrumConfig' };
  class_type GroundStation_TagResourceRequest, { class => 'Paws::GroundStation::TagResourceRequest' };
  class_type GroundStation_TagResourceResponse, { class => 'Paws::GroundStation::TagResourceResponse' };
  class_type GroundStation_TagsMap, { class => 'Paws::GroundStation::TagsMap' };
  class_type GroundStation_TrackingConfig, { class => 'Paws::GroundStation::TrackingConfig' };
  class_type GroundStation_UntagResourceRequest, { class => 'Paws::GroundStation::UntagResourceRequest' };
  class_type GroundStation_UntagResourceResponse, { class => 'Paws::GroundStation::UntagResourceResponse' };
  class_type GroundStation_UpdateConfigRequest, { class => 'Paws::GroundStation::UpdateConfigRequest' };
  class_type GroundStation_UpdateMissionProfileRequest, { class => 'Paws::GroundStation::UpdateMissionProfileRequest' };
  class_type GroundStation_UplinkEchoConfig, { class => 'Paws::GroundStation::UplinkEchoConfig' };
  class_type GroundStation_UplinkSpectrumConfig, { class => 'Paws::GroundStation::UplinkSpectrumConfig' };

1;
