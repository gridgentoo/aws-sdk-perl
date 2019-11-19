package Paws::QLDB::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type QLDB_CreateLedgerRequest, { class => 'Paws::QLDB::CreateLedgerRequest' };
  class_type QLDB_CreateLedgerResponse, { class => 'Paws::QLDB::CreateLedgerResponse' };
  class_type QLDB_DeleteLedgerRequest, { class => 'Paws::QLDB::DeleteLedgerRequest' };
  class_type QLDB_DescribeJournalS3ExportRequest, { class => 'Paws::QLDB::DescribeJournalS3ExportRequest' };
  class_type QLDB_DescribeJournalS3ExportResponse, { class => 'Paws::QLDB::DescribeJournalS3ExportResponse' };
  class_type QLDB_DescribeLedgerRequest, { class => 'Paws::QLDB::DescribeLedgerRequest' };
  class_type QLDB_DescribeLedgerResponse, { class => 'Paws::QLDB::DescribeLedgerResponse' };
  class_type QLDB_ExportJournalToS3Request, { class => 'Paws::QLDB::ExportJournalToS3Request' };
  class_type QLDB_ExportJournalToS3Response, { class => 'Paws::QLDB::ExportJournalToS3Response' };
  class_type QLDB_GetBlockRequest, { class => 'Paws::QLDB::GetBlockRequest' };
  class_type QLDB_GetBlockResponse, { class => 'Paws::QLDB::GetBlockResponse' };
  class_type QLDB_GetDigestRequest, { class => 'Paws::QLDB::GetDigestRequest' };
  class_type QLDB_GetDigestResponse, { class => 'Paws::QLDB::GetDigestResponse' };
  class_type QLDB_GetRevisionRequest, { class => 'Paws::QLDB::GetRevisionRequest' };
  class_type QLDB_GetRevisionResponse, { class => 'Paws::QLDB::GetRevisionResponse' };
  class_type QLDB_InvalidParameterException, { class => 'Paws::QLDB::InvalidParameterException' };
  class_type QLDB_JournalS3ExportDescription, { class => 'Paws::QLDB::JournalS3ExportDescription' };
  class_type QLDB_LedgerSummary, { class => 'Paws::QLDB::LedgerSummary' };
  class_type QLDB_LimitExceededException, { class => 'Paws::QLDB::LimitExceededException' };
  class_type QLDB_ListJournalS3ExportsForLedgerRequest, { class => 'Paws::QLDB::ListJournalS3ExportsForLedgerRequest' };
  class_type QLDB_ListJournalS3ExportsForLedgerResponse, { class => 'Paws::QLDB::ListJournalS3ExportsForLedgerResponse' };
  class_type QLDB_ListJournalS3ExportsRequest, { class => 'Paws::QLDB::ListJournalS3ExportsRequest' };
  class_type QLDB_ListJournalS3ExportsResponse, { class => 'Paws::QLDB::ListJournalS3ExportsResponse' };
  class_type QLDB_ListLedgersRequest, { class => 'Paws::QLDB::ListLedgersRequest' };
  class_type QLDB_ListLedgersResponse, { class => 'Paws::QLDB::ListLedgersResponse' };
  class_type QLDB_ListTagsForResourceRequest, { class => 'Paws::QLDB::ListTagsForResourceRequest' };
  class_type QLDB_ListTagsForResourceResponse, { class => 'Paws::QLDB::ListTagsForResourceResponse' };
  class_type QLDB_ResourceAlreadyExistsException, { class => 'Paws::QLDB::ResourceAlreadyExistsException' };
  class_type QLDB_ResourceInUseException, { class => 'Paws::QLDB::ResourceInUseException' };
  class_type QLDB_ResourceNotFoundException, { class => 'Paws::QLDB::ResourceNotFoundException' };
  class_type QLDB_ResourcePreconditionNotMetException, { class => 'Paws::QLDB::ResourcePreconditionNotMetException' };
  class_type QLDB_S3EncryptionConfiguration, { class => 'Paws::QLDB::S3EncryptionConfiguration' };
  class_type QLDB_S3ExportConfiguration, { class => 'Paws::QLDB::S3ExportConfiguration' };
  class_type QLDB_TagResourceRequest, { class => 'Paws::QLDB::TagResourceRequest' };
  class_type QLDB_TagResourceResponse, { class => 'Paws::QLDB::TagResourceResponse' };
  class_type QLDB_Tags, { class => 'Paws::QLDB::Tags' };
  class_type QLDB_UntagResourceRequest, { class => 'Paws::QLDB::UntagResourceRequest' };
  class_type QLDB_UntagResourceResponse, { class => 'Paws::QLDB::UntagResourceResponse' };
  class_type QLDB_UpdateLedgerRequest, { class => 'Paws::QLDB::UpdateLedgerRequest' };
  class_type QLDB_UpdateLedgerResponse, { class => 'Paws::QLDB::UpdateLedgerResponse' };
  class_type QLDB_ValueHolder, { class => 'Paws::QLDB::ValueHolder' };

1;
