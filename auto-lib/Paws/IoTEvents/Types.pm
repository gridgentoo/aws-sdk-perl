package Paws::IoTEvents::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type IoTEvents_Action, { class => 'Paws::IoTEvents::Action' };
  class_type IoTEvents_Attribute, { class => 'Paws::IoTEvents::Attribute' };
  class_type IoTEvents_ClearTimerAction, { class => 'Paws::IoTEvents::ClearTimerAction' };
  class_type IoTEvents_CreateDetectorModelRequest, { class => 'Paws::IoTEvents::CreateDetectorModelRequest' };
  class_type IoTEvents_CreateDetectorModelResponse, { class => 'Paws::IoTEvents::CreateDetectorModelResponse' };
  class_type IoTEvents_CreateInputRequest, { class => 'Paws::IoTEvents::CreateInputRequest' };
  class_type IoTEvents_CreateInputResponse, { class => 'Paws::IoTEvents::CreateInputResponse' };
  class_type IoTEvents_DeleteDetectorModelRequest, { class => 'Paws::IoTEvents::DeleteDetectorModelRequest' };
  class_type IoTEvents_DeleteDetectorModelResponse, { class => 'Paws::IoTEvents::DeleteDetectorModelResponse' };
  class_type IoTEvents_DeleteInputRequest, { class => 'Paws::IoTEvents::DeleteInputRequest' };
  class_type IoTEvents_DeleteInputResponse, { class => 'Paws::IoTEvents::DeleteInputResponse' };
  class_type IoTEvents_DescribeDetectorModelRequest, { class => 'Paws::IoTEvents::DescribeDetectorModelRequest' };
  class_type IoTEvents_DescribeDetectorModelResponse, { class => 'Paws::IoTEvents::DescribeDetectorModelResponse' };
  class_type IoTEvents_DescribeInputRequest, { class => 'Paws::IoTEvents::DescribeInputRequest' };
  class_type IoTEvents_DescribeInputResponse, { class => 'Paws::IoTEvents::DescribeInputResponse' };
  class_type IoTEvents_DescribeLoggingOptionsRequest, { class => 'Paws::IoTEvents::DescribeLoggingOptionsRequest' };
  class_type IoTEvents_DescribeLoggingOptionsResponse, { class => 'Paws::IoTEvents::DescribeLoggingOptionsResponse' };
  class_type IoTEvents_DetectorDebugOption, { class => 'Paws::IoTEvents::DetectorDebugOption' };
  class_type IoTEvents_DetectorModel, { class => 'Paws::IoTEvents::DetectorModel' };
  class_type IoTEvents_DetectorModelConfiguration, { class => 'Paws::IoTEvents::DetectorModelConfiguration' };
  class_type IoTEvents_DetectorModelDefinition, { class => 'Paws::IoTEvents::DetectorModelDefinition' };
  class_type IoTEvents_DetectorModelSummary, { class => 'Paws::IoTEvents::DetectorModelSummary' };
  class_type IoTEvents_DetectorModelVersionSummary, { class => 'Paws::IoTEvents::DetectorModelVersionSummary' };
  class_type IoTEvents_Event, { class => 'Paws::IoTEvents::Event' };
  class_type IoTEvents_FirehoseAction, { class => 'Paws::IoTEvents::FirehoseAction' };
  class_type IoTEvents_Input, { class => 'Paws::IoTEvents::Input' };
  class_type IoTEvents_InputConfiguration, { class => 'Paws::IoTEvents::InputConfiguration' };
  class_type IoTEvents_InputDefinition, { class => 'Paws::IoTEvents::InputDefinition' };
  class_type IoTEvents_InputSummary, { class => 'Paws::IoTEvents::InputSummary' };
  class_type IoTEvents_InternalFailureException, { class => 'Paws::IoTEvents::InternalFailureException' };
  class_type IoTEvents_InvalidRequestException, { class => 'Paws::IoTEvents::InvalidRequestException' };
  class_type IoTEvents_IotEventsAction, { class => 'Paws::IoTEvents::IotEventsAction' };
  class_type IoTEvents_IotTopicPublishAction, { class => 'Paws::IoTEvents::IotTopicPublishAction' };
  class_type IoTEvents_LambdaAction, { class => 'Paws::IoTEvents::LambdaAction' };
  class_type IoTEvents_LimitExceededException, { class => 'Paws::IoTEvents::LimitExceededException' };
  class_type IoTEvents_ListDetectorModelsRequest, { class => 'Paws::IoTEvents::ListDetectorModelsRequest' };
  class_type IoTEvents_ListDetectorModelsResponse, { class => 'Paws::IoTEvents::ListDetectorModelsResponse' };
  class_type IoTEvents_ListDetectorModelVersionsRequest, { class => 'Paws::IoTEvents::ListDetectorModelVersionsRequest' };
  class_type IoTEvents_ListDetectorModelVersionsResponse, { class => 'Paws::IoTEvents::ListDetectorModelVersionsResponse' };
  class_type IoTEvents_ListInputsRequest, { class => 'Paws::IoTEvents::ListInputsRequest' };
  class_type IoTEvents_ListInputsResponse, { class => 'Paws::IoTEvents::ListInputsResponse' };
  class_type IoTEvents_ListTagsForResourceRequest, { class => 'Paws::IoTEvents::ListTagsForResourceRequest' };
  class_type IoTEvents_ListTagsForResourceResponse, { class => 'Paws::IoTEvents::ListTagsForResourceResponse' };
  class_type IoTEvents_LoggingOptions, { class => 'Paws::IoTEvents::LoggingOptions' };
  class_type IoTEvents_OnEnterLifecycle, { class => 'Paws::IoTEvents::OnEnterLifecycle' };
  class_type IoTEvents_OnExitLifecycle, { class => 'Paws::IoTEvents::OnExitLifecycle' };
  class_type IoTEvents_OnInputLifecycle, { class => 'Paws::IoTEvents::OnInputLifecycle' };
  class_type IoTEvents_PutLoggingOptionsRequest, { class => 'Paws::IoTEvents::PutLoggingOptionsRequest' };
  class_type IoTEvents_ResetTimerAction, { class => 'Paws::IoTEvents::ResetTimerAction' };
  class_type IoTEvents_ResourceAlreadyExistsException, { class => 'Paws::IoTEvents::ResourceAlreadyExistsException' };
  class_type IoTEvents_ResourceInUseException, { class => 'Paws::IoTEvents::ResourceInUseException' };
  class_type IoTEvents_ResourceNotFoundException, { class => 'Paws::IoTEvents::ResourceNotFoundException' };
  class_type IoTEvents_ServiceUnavailableException, { class => 'Paws::IoTEvents::ServiceUnavailableException' };
  class_type IoTEvents_SetTimerAction, { class => 'Paws::IoTEvents::SetTimerAction' };
  class_type IoTEvents_SetVariableAction, { class => 'Paws::IoTEvents::SetVariableAction' };
  class_type IoTEvents_SNSTopicPublishAction, { class => 'Paws::IoTEvents::SNSTopicPublishAction' };
  class_type IoTEvents_SqsAction, { class => 'Paws::IoTEvents::SqsAction' };
  class_type IoTEvents_State, { class => 'Paws::IoTEvents::State' };
  class_type IoTEvents_Tag, { class => 'Paws::IoTEvents::Tag' };
  class_type IoTEvents_TagResourceRequest, { class => 'Paws::IoTEvents::TagResourceRequest' };
  class_type IoTEvents_TagResourceResponse, { class => 'Paws::IoTEvents::TagResourceResponse' };
  class_type IoTEvents_ThrottlingException, { class => 'Paws::IoTEvents::ThrottlingException' };
  class_type IoTEvents_TransitionEvent, { class => 'Paws::IoTEvents::TransitionEvent' };
  class_type IoTEvents_UnsupportedOperationException, { class => 'Paws::IoTEvents::UnsupportedOperationException' };
  class_type IoTEvents_UntagResourceRequest, { class => 'Paws::IoTEvents::UntagResourceRequest' };
  class_type IoTEvents_UntagResourceResponse, { class => 'Paws::IoTEvents::UntagResourceResponse' };
  class_type IoTEvents_UpdateDetectorModelRequest, { class => 'Paws::IoTEvents::UpdateDetectorModelRequest' };
  class_type IoTEvents_UpdateDetectorModelResponse, { class => 'Paws::IoTEvents::UpdateDetectorModelResponse' };
  class_type IoTEvents_UpdateInputRequest, { class => 'Paws::IoTEvents::UpdateInputRequest' };
  class_type IoTEvents_UpdateInputResponse, { class => 'Paws::IoTEvents::UpdateInputResponse' };

1;
