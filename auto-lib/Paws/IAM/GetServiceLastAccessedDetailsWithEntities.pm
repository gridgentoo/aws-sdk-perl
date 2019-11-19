# Generated from callargs_class.tt

package Paws::IAM::GetServiceLastAccessedDetailsWithEntities;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IAM::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxItems => (is => 'ro', isa => Int, predicate => 1);
  has ServiceNamespace => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetServiceLastAccessedDetailsWithEntities');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IAM::GetServiceLastAccessedDetailsWithEntitiesResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'GetServiceLastAccessedDetailsWithEntitiesResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'JobId' => 1,
                    'ServiceNamespace' => 1
                  },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'JobId' => {
                            'type' => 'Str'
                          },
               'ServiceNamespace' => {
                                       'type' => 'Str'
                                     },
               'MaxItems' => {
                               'type' => 'Int'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetServiceLastAccessedDetailsWithEntities - Arguments for method GetServiceLastAccessedDetailsWithEntities on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceLastAccessedDetailsWithEntities on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetServiceLastAccessedDetailsWithEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceLastAccessedDetailsWithEntities.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetServiceLastAccessedDetailsWithEntitiesResponse =
      $iam->GetServiceLastAccessedDetailsWithEntities(
      JobId            => 'MyjobIDType',
      ServiceNamespace => 'MyserviceNamespaceType',
      Marker           => 'MymarkerType',             # OPTIONAL
      MaxItems         => 1,                          # OPTIONAL
      );

    # Results:
    my $EntityDetailsList =
      $GetServiceLastAccessedDetailsWithEntitiesResponse->EntityDetailsList;
    my $Error = $GetServiceLastAccessedDetailsWithEntitiesResponse->Error;
    my $IsTruncated =
      $GetServiceLastAccessedDetailsWithEntitiesResponse->IsTruncated;
    my $JobCompletionDate =
      $GetServiceLastAccessedDetailsWithEntitiesResponse->JobCompletionDate;
    my $JobCreationDate =
      $GetServiceLastAccessedDetailsWithEntitiesResponse->JobCreationDate;
    my $JobStatus =
      $GetServiceLastAccessedDetailsWithEntitiesResponse->JobStatus;
    my $Marker = $GetServiceLastAccessedDetailsWithEntitiesResponse->Marker;

# Returns a L<Paws::IAM::GetServiceLastAccessedDetailsWithEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetServiceLastAccessedDetailsWithEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the request generated by the
C<GenerateServiceLastAccessedDetails> operation.



=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 MaxItems => Int

Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the C<IsTruncated> response element is C<true>.

If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the C<IsTruncated> response element
returns C<true>, and C<Marker> contains a value to include in the
subsequent call that tells the service where to continue from.



=head2 B<REQUIRED> ServiceNamespace => Str

The service namespace for an AWS service. Provide the service namespace
to learn when the IAM entity last attempted to access the specified
service.

To learn the service namespace for a service, go to Actions, Resources,
and Condition Keys for AWS Services
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html)
in the I<IAM User Guide>. Choose the name of the service to view
details for that service. In the first paragraph, find the service
prefix. For example, C<(service prefix: a4b)>. For more information
about service namespaces, see AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceLastAccessedDetailsWithEntities in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

