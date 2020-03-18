package Paws::Rekognition::TrainingDataResult;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::Rekognition::TrainingData');
  has Output => (is => 'ro', isa => 'Paws::Rekognition::TrainingData');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::TrainingDataResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::TrainingDataResult object:

  $service_obj->Method(Att1 => { Input => $value, ..., Output => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::TrainingDataResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

A Sagemaker Groundtruth format manifest file that represents the
dataset used for training.

=head1 ATTRIBUTES


=head2 Input => L<Paws::Rekognition::TrainingData>

  The training assets that you supplied for training.


=head2 Output => L<Paws::Rekognition::TrainingData>

  The images (assets) that were actually trained by Amazon Rekognition
Custom Labels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

