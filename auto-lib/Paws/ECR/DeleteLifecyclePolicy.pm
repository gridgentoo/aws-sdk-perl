# Generated from json/callargs_class.tt

package Paws::ECR::DeleteLifecyclePolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has RegistryId => (is => 'ro', isa => Str, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteLifecyclePolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECR::DeleteLifecyclePolicyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'RepositoryName' => 'repositoryName'
                     },
  'IsRequired' => {
                    'RepositoryName' => 1
                  },
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'RegistryId' => {
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

Paws::ECR::DeleteLifecyclePolicy - Arguments for method DeleteLifecyclePolicy on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLifecyclePolicy on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DeleteLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLifecyclePolicy.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $DeleteLifecyclePolicyResponse = $api . ecr->DeleteLifecyclePolicy(
      RepositoryName => 'MyRepositoryName',
      RegistryId     => 'MyRegistryId',       # OPTIONAL
    );

    # Results:
    my $LastEvaluatedAt = $DeleteLifecyclePolicyResponse->LastEvaluatedAt;
    my $LifecyclePolicyText =
      $DeleteLifecyclePolicyResponse->LifecyclePolicyText;
    my $RegistryId     = $DeleteLifecyclePolicyResponse->RegistryId;
    my $RepositoryName = $DeleteLifecyclePolicyResponse->RepositoryName;

    # Returns a L<Paws::ECR::DeleteLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/DeleteLifecyclePolicy>

=head1 ATTRIBUTES


=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository. If you do not specify a registry, the default registry is
assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLifecyclePolicy in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

