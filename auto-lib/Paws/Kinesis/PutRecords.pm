# Generated from json/callargs_class.tt

package Paws::Kinesis::PutRecords;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kinesis::Types qw/Kinesis_PutRecordsRequestEntry/;
  has Records => (is => 'ro', isa => ArrayRef[Kinesis_PutRecordsRequestEntry], required => 1, predicate => 1);
  has StreamName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutRecords');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Kinesis::PutRecordsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Records' => 1,
                    'StreamName' => 1
                  },
  'types' => {
               'Records' => {
                              'class' => 'Paws::Kinesis::PutRecordsRequestEntry',
                              'type' => 'ArrayRef[Kinesis_PutRecordsRequestEntry]'
                            },
               'StreamName' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::PutRecords - Arguments for method PutRecords on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRecords on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method PutRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRecords.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $PutRecordsOutput = $kinesis->PutRecords(
      Records => [
        {
          Data            => 'BlobData',          # max: 1048576
          PartitionKey    => 'MyPartitionKey',    # min: 1, max: 256
          ExplicitHashKey => 'MyHashKey',         # OPTIONAL
        },
        ...
      ],
      StreamName => 'MyStreamName',

    );

    # Results:
    my $EncryptionType    = $PutRecordsOutput->EncryptionType;
    my $FailedRecordCount = $PutRecordsOutput->FailedRecordCount;
    my $Records           = $PutRecordsOutput->Records;

    # Returns a L<Paws::Kinesis::PutRecordsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/PutRecords>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Records => ArrayRef[Kinesis_PutRecordsRequestEntry]

The records associated with the request.



=head2 B<REQUIRED> StreamName => Str

The stream name associated with the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRecords in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

