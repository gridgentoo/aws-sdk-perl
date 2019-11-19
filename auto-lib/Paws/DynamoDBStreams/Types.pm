package Paws::DynamoDBStreams::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type DynamoDBStreams_AttributeMap, { class => 'Paws::DynamoDBStreams::AttributeMap' };
  class_type DynamoDBStreams_AttributeValue, { class => 'Paws::DynamoDBStreams::AttributeValue' };
  class_type DynamoDBStreams_DescribeStreamInput, { class => 'Paws::DynamoDBStreams::DescribeStreamInput' };
  class_type DynamoDBStreams_DescribeStreamOutput, { class => 'Paws::DynamoDBStreams::DescribeStreamOutput' };
  class_type DynamoDBStreams_ExpiredIteratorException, { class => 'Paws::DynamoDBStreams::ExpiredIteratorException' };
  class_type DynamoDBStreams_GetRecordsInput, { class => 'Paws::DynamoDBStreams::GetRecordsInput' };
  class_type DynamoDBStreams_GetRecordsOutput, { class => 'Paws::DynamoDBStreams::GetRecordsOutput' };
  class_type DynamoDBStreams_GetShardIteratorInput, { class => 'Paws::DynamoDBStreams::GetShardIteratorInput' };
  class_type DynamoDBStreams_GetShardIteratorOutput, { class => 'Paws::DynamoDBStreams::GetShardIteratorOutput' };
  class_type DynamoDBStreams_Identity, { class => 'Paws::DynamoDBStreams::Identity' };
  class_type DynamoDBStreams_InternalServerError, { class => 'Paws::DynamoDBStreams::InternalServerError' };
  class_type DynamoDBStreams_KeySchemaElement, { class => 'Paws::DynamoDBStreams::KeySchemaElement' };
  class_type DynamoDBStreams_LimitExceededException, { class => 'Paws::DynamoDBStreams::LimitExceededException' };
  class_type DynamoDBStreams_ListStreamsInput, { class => 'Paws::DynamoDBStreams::ListStreamsInput' };
  class_type DynamoDBStreams_ListStreamsOutput, { class => 'Paws::DynamoDBStreams::ListStreamsOutput' };
  class_type DynamoDBStreams_MapAttributeValue, { class => 'Paws::DynamoDBStreams::MapAttributeValue' };
  class_type DynamoDBStreams_Record, { class => 'Paws::DynamoDBStreams::Record' };
  class_type DynamoDBStreams_ResourceNotFoundException, { class => 'Paws::DynamoDBStreams::ResourceNotFoundException' };
  class_type DynamoDBStreams_SequenceNumberRange, { class => 'Paws::DynamoDBStreams::SequenceNumberRange' };
  class_type DynamoDBStreams_Shard, { class => 'Paws::DynamoDBStreams::Shard' };
  class_type DynamoDBStreams_Stream, { class => 'Paws::DynamoDBStreams::Stream' };
  class_type DynamoDBStreams_StreamDescription, { class => 'Paws::DynamoDBStreams::StreamDescription' };
  class_type DynamoDBStreams_StreamRecord, { class => 'Paws::DynamoDBStreams::StreamRecord' };
  class_type DynamoDBStreams_TrimmedDataAccessException, { class => 'Paws::DynamoDBStreams::TrimmedDataAccessException' };

1;
