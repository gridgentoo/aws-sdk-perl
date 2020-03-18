package Paws::Personalize::DefaultHyperParameterRanges;
  use Moose;
  has CategoricalHyperParameterRanges => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DefaultCategoricalHyperParameterRange]', request_name => 'categoricalHyperParameterRanges', traits => ['NameInRequest']);
  has ContinuousHyperParameterRanges => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DefaultContinuousHyperParameterRange]', request_name => 'continuousHyperParameterRanges', traits => ['NameInRequest']);
  has IntegerHyperParameterRanges => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DefaultIntegerHyperParameterRange]', request_name => 'integerHyperParameterRanges', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DefaultHyperParameterRanges

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DefaultHyperParameterRanges object:

  $service_obj->Method(Att1 => { CategoricalHyperParameterRanges => $value, ..., IntegerHyperParameterRanges => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DefaultHyperParameterRanges object:

  $result = $service_obj->Method(...);
  $result->Att1->CategoricalHyperParameterRanges

=head1 DESCRIPTION

Specifies the hyperparameters and their default ranges. Hyperparameters
can be categorical, continuous, or integer-valued.

=head1 ATTRIBUTES


=head2 CategoricalHyperParameterRanges => ArrayRef[L<Paws::Personalize::DefaultCategoricalHyperParameterRange>]

  The categorical hyperparameters and their default ranges.


=head2 ContinuousHyperParameterRanges => ArrayRef[L<Paws::Personalize::DefaultContinuousHyperParameterRange>]

  The continuous hyperparameters and their default ranges.


=head2 IntegerHyperParameterRanges => ArrayRef[L<Paws::Personalize::DefaultIntegerHyperParameterRange>]

  The integer-valued hyperparameters and their default ranges.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

