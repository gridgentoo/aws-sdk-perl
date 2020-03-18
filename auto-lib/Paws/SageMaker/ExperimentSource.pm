package Paws::SageMaker::ExperimentSource;
  use Moose;
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ExperimentSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ExperimentSource object:

  $service_obj->Method(Att1 => { SourceArn => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ExperimentSource object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceArn

=head1 DESCRIPTION

The source of the experiment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceArn => Str

  The Amazon Resource Name (ARN) of the source.


=head2 SourceType => Str

  The source type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

