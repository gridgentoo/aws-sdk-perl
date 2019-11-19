package Paws::MTurk::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type MTurk_AcceptQualificationRequestRequest, { class => 'Paws::MTurk::AcceptQualificationRequestRequest' };
  class_type MTurk_AcceptQualificationRequestResponse, { class => 'Paws::MTurk::AcceptQualificationRequestResponse' };
  class_type MTurk_ApproveAssignmentRequest, { class => 'Paws::MTurk::ApproveAssignmentRequest' };
  class_type MTurk_ApproveAssignmentResponse, { class => 'Paws::MTurk::ApproveAssignmentResponse' };
  class_type MTurk_Assignment, { class => 'Paws::MTurk::Assignment' };
  class_type MTurk_AssociateQualificationWithWorkerRequest, { class => 'Paws::MTurk::AssociateQualificationWithWorkerRequest' };
  class_type MTurk_AssociateQualificationWithWorkerResponse, { class => 'Paws::MTurk::AssociateQualificationWithWorkerResponse' };
  class_type MTurk_BonusPayment, { class => 'Paws::MTurk::BonusPayment' };
  class_type MTurk_CreateAdditionalAssignmentsForHITRequest, { class => 'Paws::MTurk::CreateAdditionalAssignmentsForHITRequest' };
  class_type MTurk_CreateAdditionalAssignmentsForHITResponse, { class => 'Paws::MTurk::CreateAdditionalAssignmentsForHITResponse' };
  class_type MTurk_CreateHITRequest, { class => 'Paws::MTurk::CreateHITRequest' };
  class_type MTurk_CreateHITResponse, { class => 'Paws::MTurk::CreateHITResponse' };
  class_type MTurk_CreateHITTypeRequest, { class => 'Paws::MTurk::CreateHITTypeRequest' };
  class_type MTurk_CreateHITTypeResponse, { class => 'Paws::MTurk::CreateHITTypeResponse' };
  class_type MTurk_CreateHITWithHITTypeRequest, { class => 'Paws::MTurk::CreateHITWithHITTypeRequest' };
  class_type MTurk_CreateHITWithHITTypeResponse, { class => 'Paws::MTurk::CreateHITWithHITTypeResponse' };
  class_type MTurk_CreateQualificationTypeRequest, { class => 'Paws::MTurk::CreateQualificationTypeRequest' };
  class_type MTurk_CreateQualificationTypeResponse, { class => 'Paws::MTurk::CreateQualificationTypeResponse' };
  class_type MTurk_CreateWorkerBlockRequest, { class => 'Paws::MTurk::CreateWorkerBlockRequest' };
  class_type MTurk_CreateWorkerBlockResponse, { class => 'Paws::MTurk::CreateWorkerBlockResponse' };
  class_type MTurk_DeleteHITRequest, { class => 'Paws::MTurk::DeleteHITRequest' };
  class_type MTurk_DeleteHITResponse, { class => 'Paws::MTurk::DeleteHITResponse' };
  class_type MTurk_DeleteQualificationTypeRequest, { class => 'Paws::MTurk::DeleteQualificationTypeRequest' };
  class_type MTurk_DeleteQualificationTypeResponse, { class => 'Paws::MTurk::DeleteQualificationTypeResponse' };
  class_type MTurk_DeleteWorkerBlockRequest, { class => 'Paws::MTurk::DeleteWorkerBlockRequest' };
  class_type MTurk_DeleteWorkerBlockResponse, { class => 'Paws::MTurk::DeleteWorkerBlockResponse' };
  class_type MTurk_DisassociateQualificationFromWorkerRequest, { class => 'Paws::MTurk::DisassociateQualificationFromWorkerRequest' };
  class_type MTurk_DisassociateQualificationFromWorkerResponse, { class => 'Paws::MTurk::DisassociateQualificationFromWorkerResponse' };
  class_type MTurk_GetAccountBalanceRequest, { class => 'Paws::MTurk::GetAccountBalanceRequest' };
  class_type MTurk_GetAccountBalanceResponse, { class => 'Paws::MTurk::GetAccountBalanceResponse' };
  class_type MTurk_GetAssignmentRequest, { class => 'Paws::MTurk::GetAssignmentRequest' };
  class_type MTurk_GetAssignmentResponse, { class => 'Paws::MTurk::GetAssignmentResponse' };
  class_type MTurk_GetFileUploadURLRequest, { class => 'Paws::MTurk::GetFileUploadURLRequest' };
  class_type MTurk_GetFileUploadURLResponse, { class => 'Paws::MTurk::GetFileUploadURLResponse' };
  class_type MTurk_GetHITRequest, { class => 'Paws::MTurk::GetHITRequest' };
  class_type MTurk_GetHITResponse, { class => 'Paws::MTurk::GetHITResponse' };
  class_type MTurk_GetQualificationScoreRequest, { class => 'Paws::MTurk::GetQualificationScoreRequest' };
  class_type MTurk_GetQualificationScoreResponse, { class => 'Paws::MTurk::GetQualificationScoreResponse' };
  class_type MTurk_GetQualificationTypeRequest, { class => 'Paws::MTurk::GetQualificationTypeRequest' };
  class_type MTurk_GetQualificationTypeResponse, { class => 'Paws::MTurk::GetQualificationTypeResponse' };
  class_type MTurk_HIT, { class => 'Paws::MTurk::HIT' };
  class_type MTurk_HITLayoutParameter, { class => 'Paws::MTurk::HITLayoutParameter' };
  class_type MTurk_ListAssignmentsForHITRequest, { class => 'Paws::MTurk::ListAssignmentsForHITRequest' };
  class_type MTurk_ListAssignmentsForHITResponse, { class => 'Paws::MTurk::ListAssignmentsForHITResponse' };
  class_type MTurk_ListBonusPaymentsRequest, { class => 'Paws::MTurk::ListBonusPaymentsRequest' };
  class_type MTurk_ListBonusPaymentsResponse, { class => 'Paws::MTurk::ListBonusPaymentsResponse' };
  class_type MTurk_ListHITsForQualificationTypeRequest, { class => 'Paws::MTurk::ListHITsForQualificationTypeRequest' };
  class_type MTurk_ListHITsForQualificationTypeResponse, { class => 'Paws::MTurk::ListHITsForQualificationTypeResponse' };
  class_type MTurk_ListHITsRequest, { class => 'Paws::MTurk::ListHITsRequest' };
  class_type MTurk_ListHITsResponse, { class => 'Paws::MTurk::ListHITsResponse' };
  class_type MTurk_ListQualificationRequestsRequest, { class => 'Paws::MTurk::ListQualificationRequestsRequest' };
  class_type MTurk_ListQualificationRequestsResponse, { class => 'Paws::MTurk::ListQualificationRequestsResponse' };
  class_type MTurk_ListQualificationTypesRequest, { class => 'Paws::MTurk::ListQualificationTypesRequest' };
  class_type MTurk_ListQualificationTypesResponse, { class => 'Paws::MTurk::ListQualificationTypesResponse' };
  class_type MTurk_ListReviewableHITsRequest, { class => 'Paws::MTurk::ListReviewableHITsRequest' };
  class_type MTurk_ListReviewableHITsResponse, { class => 'Paws::MTurk::ListReviewableHITsResponse' };
  class_type MTurk_ListReviewPolicyResultsForHITRequest, { class => 'Paws::MTurk::ListReviewPolicyResultsForHITRequest' };
  class_type MTurk_ListReviewPolicyResultsForHITResponse, { class => 'Paws::MTurk::ListReviewPolicyResultsForHITResponse' };
  class_type MTurk_ListWorkerBlocksRequest, { class => 'Paws::MTurk::ListWorkerBlocksRequest' };
  class_type MTurk_ListWorkerBlocksResponse, { class => 'Paws::MTurk::ListWorkerBlocksResponse' };
  class_type MTurk_ListWorkersWithQualificationTypeRequest, { class => 'Paws::MTurk::ListWorkersWithQualificationTypeRequest' };
  class_type MTurk_ListWorkersWithQualificationTypeResponse, { class => 'Paws::MTurk::ListWorkersWithQualificationTypeResponse' };
  class_type MTurk_Locale, { class => 'Paws::MTurk::Locale' };
  class_type MTurk_NotificationSpecification, { class => 'Paws::MTurk::NotificationSpecification' };
  class_type MTurk_NotifyWorkersFailureStatus, { class => 'Paws::MTurk::NotifyWorkersFailureStatus' };
  class_type MTurk_NotifyWorkersRequest, { class => 'Paws::MTurk::NotifyWorkersRequest' };
  class_type MTurk_NotifyWorkersResponse, { class => 'Paws::MTurk::NotifyWorkersResponse' };
  class_type MTurk_ParameterMapEntry, { class => 'Paws::MTurk::ParameterMapEntry' };
  class_type MTurk_PolicyParameter, { class => 'Paws::MTurk::PolicyParameter' };
  class_type MTurk_Qualification, { class => 'Paws::MTurk::Qualification' };
  class_type MTurk_QualificationRequest, { class => 'Paws::MTurk::QualificationRequest' };
  class_type MTurk_QualificationRequirement, { class => 'Paws::MTurk::QualificationRequirement' };
  class_type MTurk_QualificationType, { class => 'Paws::MTurk::QualificationType' };
  class_type MTurk_RejectAssignmentRequest, { class => 'Paws::MTurk::RejectAssignmentRequest' };
  class_type MTurk_RejectAssignmentResponse, { class => 'Paws::MTurk::RejectAssignmentResponse' };
  class_type MTurk_RejectQualificationRequestRequest, { class => 'Paws::MTurk::RejectQualificationRequestRequest' };
  class_type MTurk_RejectQualificationRequestResponse, { class => 'Paws::MTurk::RejectQualificationRequestResponse' };
  class_type MTurk_RequestError, { class => 'Paws::MTurk::RequestError' };
  class_type MTurk_ReviewActionDetail, { class => 'Paws::MTurk::ReviewActionDetail' };
  class_type MTurk_ReviewPolicy, { class => 'Paws::MTurk::ReviewPolicy' };
  class_type MTurk_ReviewReport, { class => 'Paws::MTurk::ReviewReport' };
  class_type MTurk_ReviewResultDetail, { class => 'Paws::MTurk::ReviewResultDetail' };
  class_type MTurk_SendBonusRequest, { class => 'Paws::MTurk::SendBonusRequest' };
  class_type MTurk_SendBonusResponse, { class => 'Paws::MTurk::SendBonusResponse' };
  class_type MTurk_SendTestEventNotificationRequest, { class => 'Paws::MTurk::SendTestEventNotificationRequest' };
  class_type MTurk_SendTestEventNotificationResponse, { class => 'Paws::MTurk::SendTestEventNotificationResponse' };
  class_type MTurk_ServiceFault, { class => 'Paws::MTurk::ServiceFault' };
  class_type MTurk_UpdateExpirationForHITRequest, { class => 'Paws::MTurk::UpdateExpirationForHITRequest' };
  class_type MTurk_UpdateExpirationForHITResponse, { class => 'Paws::MTurk::UpdateExpirationForHITResponse' };
  class_type MTurk_UpdateHITReviewStatusRequest, { class => 'Paws::MTurk::UpdateHITReviewStatusRequest' };
  class_type MTurk_UpdateHITReviewStatusResponse, { class => 'Paws::MTurk::UpdateHITReviewStatusResponse' };
  class_type MTurk_UpdateHITTypeOfHITRequest, { class => 'Paws::MTurk::UpdateHITTypeOfHITRequest' };
  class_type MTurk_UpdateHITTypeOfHITResponse, { class => 'Paws::MTurk::UpdateHITTypeOfHITResponse' };
  class_type MTurk_UpdateNotificationSettingsRequest, { class => 'Paws::MTurk::UpdateNotificationSettingsRequest' };
  class_type MTurk_UpdateNotificationSettingsResponse, { class => 'Paws::MTurk::UpdateNotificationSettingsResponse' };
  class_type MTurk_UpdateQualificationTypeRequest, { class => 'Paws::MTurk::UpdateQualificationTypeRequest' };
  class_type MTurk_UpdateQualificationTypeResponse, { class => 'Paws::MTurk::UpdateQualificationTypeResponse' };
  class_type MTurk_WorkerBlock, { class => 'Paws::MTurk::WorkerBlock' };

1;
