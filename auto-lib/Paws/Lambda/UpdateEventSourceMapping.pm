
package Paws::Lambda::UpdateEventSourceMapping;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::Lambda::Types qw//;
  has BatchSize => (is => 'ro', isa => Int, predicate => 1);
  has Enabled => (is => 'ro', isa => Bool, predicate => 1);
  has FunctionName => (is => 'ro', isa => Str, predicate => 1);
  has MaximumBatchingWindowInSeconds => (is => 'ro', isa => Int, predicate => 1);
  has UUID => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateEventSourceMapping');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2015-03-31/event-source-mappings/{UUID}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lambda::EventSourceMappingConfiguration');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'UUID' => 'UUID'
                  },
  'IsRequired' => {
                    'UUID' => 1
                  },
  'types' => {
               'FunctionName' => {
                                   'type' => 'Str'
                                 },
               'MaximumBatchingWindowInSeconds' => {
                                                     'type' => 'Int'
                                                   },
               'BatchSize' => {
                                'type' => 'Int'
                              },
               'UUID' => {
                           'type' => 'Str'
                         },
               'Enabled' => {
                              'type' => 'Bool'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateEventSourceMapping - Arguments for method UpdateEventSourceMapping on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventSourceMapping on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateEventSourceMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventSourceMapping.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To update a Lambda function event source mapping
    # This operation updates a Lambda function event source mapping
    my $EventSourceMappingConfiguration = $lambda->UpdateEventSourceMapping(
      'BatchSize'    => 123,
      'Enabled'      => 1,
      'FunctionName' => 'myFunction',
      'UUID'         => '1234xCy789012'
    );

    # Results:
    my $BatchSize      = $EventSourceMappingConfiguration->BatchSize;
    my $EventSourceArn = $EventSourceMappingConfiguration->EventSourceArn;
    my $FunctionArn    = $EventSourceMappingConfiguration->FunctionArn;
    my $LastModified   = $EventSourceMappingConfiguration->LastModified;
    my $LastProcessingResult =
      $EventSourceMappingConfiguration->LastProcessingResult;
    my $State = $EventSourceMappingConfiguration->State;
    my $StateTransitionReason =
      $EventSourceMappingConfiguration->StateTransitionReason;
    my $UUID = $EventSourceMappingConfiguration->UUID;

    # Returns a L<Paws::Lambda::EventSourceMappingConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateEventSourceMapping>

=head1 ATTRIBUTES


=head2 BatchSize => Int

The maximum number of items to retrieve in a single batch.

=over

=item *

B<Amazon Kinesis> - Default 100. Max 10,000.

=item *

B<Amazon DynamoDB Streams> - Default 100. Max 1,000.

=item *

B<Amazon Simple Queue Service> - Default 10. Max 10.

=back




=head2 Enabled => Bool

Disables the event source mapping to pause polling and invocation.



=head2 FunctionName => Str

The name of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<MyFunction>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Version or Alias ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD>.

=item *

B<Partial ARN> - C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it's limited to 64 characters in length.



=head2 MaximumBatchingWindowInSeconds => Int





=head2 B<REQUIRED> UUID => Str

The identifier of the event source mapping.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventSourceMapping in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

