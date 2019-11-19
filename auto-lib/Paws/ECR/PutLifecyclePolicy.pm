# Generated from json/callargs_class.tt

package Paws::ECR::PutLifecyclePolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has LifecyclePolicyText => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RegistryId => (is => 'ro', isa => Str, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutLifecyclePolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECR::PutLifecyclePolicyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'LifecyclePolicyText' => {
                                          'type' => 'Str'
                                        },
               'RegistryId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'RepositoryName' => 1,
                    'LifecyclePolicyText' => 1
                  },
  'NameInRequest' => {
                       'RepositoryName' => 'repositoryName',
                       'RegistryId' => 'registryId',
                       'LifecyclePolicyText' => 'lifecyclePolicyText'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutLifecyclePolicy - Arguments for method PutLifecyclePolicy on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLifecyclePolicy on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method PutLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLifecyclePolicy.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $PutLifecyclePolicyResponse = $api . ecr->PutLifecyclePolicy(
      LifecyclePolicyText => 'MyLifecyclePolicyText',
      RepositoryName      => 'MyRepositoryName',
      RegistryId          => 'MyRegistryId',            # OPTIONAL
    );

    # Results:
    my $LifecyclePolicyText = $PutLifecyclePolicyResponse->LifecyclePolicyText;
    my $RegistryId          = $PutLifecyclePolicyResponse->RegistryId;
    my $RepositoryName      = $PutLifecyclePolicyResponse->RepositoryName;

    # Returns a L<Paws::ECR::PutLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/PutLifecyclePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LifecyclePolicyText => Str

The JSON repository policy text to apply to the repository.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository. If you do not specify a registry, the default registry is
assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to receive the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLifecyclePolicy in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

