package Paws::Rekognition::Asset;
  use Moose;
  has GroundTruthManifest => (is => 'ro', isa => 'Paws::Rekognition::GroundTruthManifest');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Asset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Asset object:

  $service_obj->Method(Att1 => { GroundTruthManifest => $value, ..., GroundTruthManifest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Asset object:

  $result = $service_obj->Method(...);
  $result->Att1->GroundTruthManifest

=head1 DESCRIPTION

Assets are the images that you use to train and evaluate a model
version. Assets are referenced by Sagemaker GroundTruth manifest files.

=head1 ATTRIBUTES


=head2 GroundTruthManifest => L<Paws::Rekognition::GroundTruthManifest>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

