
package Paws::Kafka::ListClusterOperations;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw//;
  has ClusterArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListClusterOperations');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/clusters/{clusterArn}/operations');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Kafka::ListClusterOperationsResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ClusterArn' => 1
                  },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ClusterArn' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'ClusterArn' => 'clusterArn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClusterOperations - Arguments for method ListClusterOperations on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusterOperations on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method ListClusterOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusterOperations.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $ListClusterOperationsResponse = $kafka->ListClusterOperations(
      ClusterArn => 'My__string',
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ClusterOperationInfoList =
      $ListClusterOperationsResponse->ClusterOperationInfoList;
    my $NextToken = $ListClusterOperationsResponse->NextToken;

    # Returns a L<Paws::Kafka::ListClusterOperationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/ListClusterOperations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.



=head2 MaxResults => Int

The maximum number of results to return in the response. If there are
more results, the response includes a NextToken parameter.



=head2 NextToken => Str

The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusterOperations in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

