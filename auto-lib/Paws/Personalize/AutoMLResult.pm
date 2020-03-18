package Paws::Personalize::AutoMLResult;
  use Moose;
  has BestRecipeArn => (is => 'ro', isa => 'Str', request_name => 'bestRecipeArn', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::AutoMLResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::AutoMLResult object:

  $service_obj->Method(Att1 => { BestRecipeArn => $value, ..., BestRecipeArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::AutoMLResult object:

  $result = $service_obj->Method(...);
  $result->Att1->BestRecipeArn

=head1 DESCRIPTION

When the solution performs AutoML (C<performAutoML> is true in
CreateSolution), specifies the recipe that best optimized the specified
metric.

=head1 ATTRIBUTES


=head2 BestRecipeArn => Str

  The Amazon Resource Name (ARN) of the best recipe.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

