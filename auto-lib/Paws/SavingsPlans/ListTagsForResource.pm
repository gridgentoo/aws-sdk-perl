
package Paws::SavingsPlans::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SavingsPlans::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/ListTagsForResource');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SavingsPlans::ListTagsForResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceArn' => 'resourceArn'
                     },
  'IsRequired' => {
                    'ResourceArn' => 1
                  },
  'types' => {
               'ResourceArn' => {
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

Paws::SavingsPlans::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $ListTagsForResourceResponse = $savingsplans->ListTagsForResource(
      ResourceArn => 'MySavingsPlanArn',

    );

    # Results:
    my $Tags = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::SavingsPlans::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

