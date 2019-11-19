package Paws::Route53Domains::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type Route53Domains_BillingRecord, { class => 'Paws::Route53Domains::BillingRecord' };
  class_type Route53Domains_CheckDomainAvailabilityRequest, { class => 'Paws::Route53Domains::CheckDomainAvailabilityRequest' };
  class_type Route53Domains_CheckDomainAvailabilityResponse, { class => 'Paws::Route53Domains::CheckDomainAvailabilityResponse' };
  class_type Route53Domains_CheckDomainTransferabilityRequest, { class => 'Paws::Route53Domains::CheckDomainTransferabilityRequest' };
  class_type Route53Domains_CheckDomainTransferabilityResponse, { class => 'Paws::Route53Domains::CheckDomainTransferabilityResponse' };
  class_type Route53Domains_ContactDetail, { class => 'Paws::Route53Domains::ContactDetail' };
  class_type Route53Domains_DeleteTagsForDomainRequest, { class => 'Paws::Route53Domains::DeleteTagsForDomainRequest' };
  class_type Route53Domains_DeleteTagsForDomainResponse, { class => 'Paws::Route53Domains::DeleteTagsForDomainResponse' };
  class_type Route53Domains_DisableDomainAutoRenewRequest, { class => 'Paws::Route53Domains::DisableDomainAutoRenewRequest' };
  class_type Route53Domains_DisableDomainAutoRenewResponse, { class => 'Paws::Route53Domains::DisableDomainAutoRenewResponse' };
  class_type Route53Domains_DisableDomainTransferLockRequest, { class => 'Paws::Route53Domains::DisableDomainTransferLockRequest' };
  class_type Route53Domains_DisableDomainTransferLockResponse, { class => 'Paws::Route53Domains::DisableDomainTransferLockResponse' };
  class_type Route53Domains_DomainLimitExceeded, { class => 'Paws::Route53Domains::DomainLimitExceeded' };
  class_type Route53Domains_DomainSuggestion, { class => 'Paws::Route53Domains::DomainSuggestion' };
  class_type Route53Domains_DomainSummary, { class => 'Paws::Route53Domains::DomainSummary' };
  class_type Route53Domains_DomainTransferability, { class => 'Paws::Route53Domains::DomainTransferability' };
  class_type Route53Domains_DuplicateRequest, { class => 'Paws::Route53Domains::DuplicateRequest' };
  class_type Route53Domains_EnableDomainAutoRenewRequest, { class => 'Paws::Route53Domains::EnableDomainAutoRenewRequest' };
  class_type Route53Domains_EnableDomainAutoRenewResponse, { class => 'Paws::Route53Domains::EnableDomainAutoRenewResponse' };
  class_type Route53Domains_EnableDomainTransferLockRequest, { class => 'Paws::Route53Domains::EnableDomainTransferLockRequest' };
  class_type Route53Domains_EnableDomainTransferLockResponse, { class => 'Paws::Route53Domains::EnableDomainTransferLockResponse' };
  class_type Route53Domains_ExtraParam, { class => 'Paws::Route53Domains::ExtraParam' };
  class_type Route53Domains_GetContactReachabilityStatusRequest, { class => 'Paws::Route53Domains::GetContactReachabilityStatusRequest' };
  class_type Route53Domains_GetContactReachabilityStatusResponse, { class => 'Paws::Route53Domains::GetContactReachabilityStatusResponse' };
  class_type Route53Domains_GetDomainDetailRequest, { class => 'Paws::Route53Domains::GetDomainDetailRequest' };
  class_type Route53Domains_GetDomainDetailResponse, { class => 'Paws::Route53Domains::GetDomainDetailResponse' };
  class_type Route53Domains_GetDomainSuggestionsRequest, { class => 'Paws::Route53Domains::GetDomainSuggestionsRequest' };
  class_type Route53Domains_GetDomainSuggestionsResponse, { class => 'Paws::Route53Domains::GetDomainSuggestionsResponse' };
  class_type Route53Domains_GetOperationDetailRequest, { class => 'Paws::Route53Domains::GetOperationDetailRequest' };
  class_type Route53Domains_GetOperationDetailResponse, { class => 'Paws::Route53Domains::GetOperationDetailResponse' };
  class_type Route53Domains_InvalidInput, { class => 'Paws::Route53Domains::InvalidInput' };
  class_type Route53Domains_ListDomainsRequest, { class => 'Paws::Route53Domains::ListDomainsRequest' };
  class_type Route53Domains_ListDomainsResponse, { class => 'Paws::Route53Domains::ListDomainsResponse' };
  class_type Route53Domains_ListOperationsRequest, { class => 'Paws::Route53Domains::ListOperationsRequest' };
  class_type Route53Domains_ListOperationsResponse, { class => 'Paws::Route53Domains::ListOperationsResponse' };
  class_type Route53Domains_ListTagsForDomainRequest, { class => 'Paws::Route53Domains::ListTagsForDomainRequest' };
  class_type Route53Domains_ListTagsForDomainResponse, { class => 'Paws::Route53Domains::ListTagsForDomainResponse' };
  class_type Route53Domains_Nameserver, { class => 'Paws::Route53Domains::Nameserver' };
  class_type Route53Domains_OperationLimitExceeded, { class => 'Paws::Route53Domains::OperationLimitExceeded' };
  class_type Route53Domains_OperationSummary, { class => 'Paws::Route53Domains::OperationSummary' };
  class_type Route53Domains_RegisterDomainRequest, { class => 'Paws::Route53Domains::RegisterDomainRequest' };
  class_type Route53Domains_RegisterDomainResponse, { class => 'Paws::Route53Domains::RegisterDomainResponse' };
  class_type Route53Domains_RenewDomainRequest, { class => 'Paws::Route53Domains::RenewDomainRequest' };
  class_type Route53Domains_RenewDomainResponse, { class => 'Paws::Route53Domains::RenewDomainResponse' };
  class_type Route53Domains_ResendContactReachabilityEmailRequest, { class => 'Paws::Route53Domains::ResendContactReachabilityEmailRequest' };
  class_type Route53Domains_ResendContactReachabilityEmailResponse, { class => 'Paws::Route53Domains::ResendContactReachabilityEmailResponse' };
  class_type Route53Domains_RetrieveDomainAuthCodeRequest, { class => 'Paws::Route53Domains::RetrieveDomainAuthCodeRequest' };
  class_type Route53Domains_RetrieveDomainAuthCodeResponse, { class => 'Paws::Route53Domains::RetrieveDomainAuthCodeResponse' };
  class_type Route53Domains_Tag, { class => 'Paws::Route53Domains::Tag' };
  class_type Route53Domains_TLDRulesViolation, { class => 'Paws::Route53Domains::TLDRulesViolation' };
  class_type Route53Domains_TransferDomainRequest, { class => 'Paws::Route53Domains::TransferDomainRequest' };
  class_type Route53Domains_TransferDomainResponse, { class => 'Paws::Route53Domains::TransferDomainResponse' };
  class_type Route53Domains_UnsupportedTLD, { class => 'Paws::Route53Domains::UnsupportedTLD' };
  class_type Route53Domains_UpdateDomainContactPrivacyRequest, { class => 'Paws::Route53Domains::UpdateDomainContactPrivacyRequest' };
  class_type Route53Domains_UpdateDomainContactPrivacyResponse, { class => 'Paws::Route53Domains::UpdateDomainContactPrivacyResponse' };
  class_type Route53Domains_UpdateDomainContactRequest, { class => 'Paws::Route53Domains::UpdateDomainContactRequest' };
  class_type Route53Domains_UpdateDomainContactResponse, { class => 'Paws::Route53Domains::UpdateDomainContactResponse' };
  class_type Route53Domains_UpdateDomainNameserversRequest, { class => 'Paws::Route53Domains::UpdateDomainNameserversRequest' };
  class_type Route53Domains_UpdateDomainNameserversResponse, { class => 'Paws::Route53Domains::UpdateDomainNameserversResponse' };
  class_type Route53Domains_UpdateTagsForDomainRequest, { class => 'Paws::Route53Domains::UpdateTagsForDomainRequest' };
  class_type Route53Domains_UpdateTagsForDomainResponse, { class => 'Paws::Route53Domains::UpdateTagsForDomainResponse' };
  class_type Route53Domains_ViewBillingRequest, { class => 'Paws::Route53Domains::ViewBillingRequest' };
  class_type Route53Domains_ViewBillingResponse, { class => 'Paws::Route53Domains::ViewBillingResponse' };

1;
