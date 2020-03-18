package Paws::SageMaker::TrialSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has TrialArn => (is => 'ro', isa => 'Str');
  has TrialName => (is => 'ro', isa => 'Str');
  has TrialSource => (is => 'ro', isa => 'Paws::SageMaker::TrialSource');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TrialSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

A summary of the properties of a trial. To get the complete set of
properties, call the DescribeTrial API and provide the C<TrialName>.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When the trial was created.


=head2 DisplayName => Str

  The name of the trial as displayed. If C<DisplayName> isn't specified,
C<TrialName> is displayed.


=head2 LastModifiedTime => Str

  When the trial was last modified.


=head2 TrialArn => Str

  The Amazon Resource Name (ARN) of the trial.


=head2 TrialName => Str

  The name of the trial.


=head2 TrialSource => L<Paws::SageMaker::TrialSource>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

