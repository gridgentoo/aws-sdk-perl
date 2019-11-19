# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::ListOperationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_OperationSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Operations => (is => 'ro', isa => ArrayRef[ServiceDiscovery_OperationSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Operations' => {
                                 'type' => 'ArrayRef[ServiceDiscovery_OperationSummary]',
                                 'class' => 'Paws::ServiceDiscovery::OperationSummary'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListOperationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response contains C<NextToken>, submit another C<ListOperations>
request to get the next group of results. Specify the value of
C<NextToken> from the previous response in the next request.

AWS Cloud Map gets C<MaxResults> operations and then filters them based
on the specified criteria. It's possible that no operations in the
first C<MaxResults> operations matched the specified criteria but that
subsequent groups of C<MaxResults> operations do contain operations
that match the criteria.


=head2 Operations => ArrayRef[ServiceDiscovery_OperationSummary]

Summary information about the operations that match the specified
criteria.


=head2 _request_id => Str


=cut

1;