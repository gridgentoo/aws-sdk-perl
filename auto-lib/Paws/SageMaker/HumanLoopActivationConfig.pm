package Paws::SageMaker::HumanLoopActivationConfig;
  use Moose;
  has HumanLoopActivationConditionsConfig => (is => 'ro', isa => 'Paws::SageMaker::HumanLoopActivationConditionsConfig', required => 1);
  has HumanLoopRequestSource => (is => 'ro', isa => 'Paws::SageMaker::HumanLoopRequestSource', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HumanLoopActivationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HumanLoopActivationConfig object:

  $service_obj->Method(Att1 => { HumanLoopActivationConditionsConfig => $value, ..., HumanLoopRequestSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HumanLoopActivationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HumanLoopActivationConditionsConfig

=head1 DESCRIPTION

Provides information about how and under what conditions SageMaker
creates a human loop. If C<HumanLoopActivationConfig> is not given,
then all requests go to humans.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanLoopActivationConditionsConfig => L<Paws::SageMaker::HumanLoopActivationConditionsConfig>

  Container structure for defining under what conditions SageMaker
creates a human loop.


=head2 B<REQUIRED> HumanLoopRequestSource => L<Paws::SageMaker::HumanLoopRequestSource>

  Container for configuring the source of human task requests.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

