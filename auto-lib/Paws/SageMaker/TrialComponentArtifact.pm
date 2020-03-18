package Paws::SageMaker::TrialComponentArtifact;
  use Moose;
  has MediaType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponentArtifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponentArtifact object:

  $service_obj->Method(Att1 => { MediaType => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponentArtifact object:

  $result = $service_obj->Method(...);
  $result->Att1->MediaType

=head1 DESCRIPTION

Represents an input or output artifact of a trial component. You
specify C<TrialComponentArtifact> as part of the C<InputArtifacts> and
C<OutputArtifacts> parameters in the CreateTrialComponent request.

Examples of input artifacts are datasets, algorithms, hyperparameters,
source code, and instance types. Examples of output artifacts are
metrics, snapshots, logs, and images.

=head1 ATTRIBUTES


=head2 MediaType => Str

  The media type of the artifact, which indicates the type of data in the
artifact file. The media type consists of a I<type> and a I<subtype>
concatenated with a slash (/) character, for example, text/csv,
image/jpeg, and s3/uri. The type specifies the category of the media.
The subtype specifies the kind of data.


=head2 B<REQUIRED> Value => Str

  The location of the artifact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

