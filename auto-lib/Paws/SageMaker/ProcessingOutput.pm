package Paws::SageMaker::ProcessingOutput;
  use Moose;
  has OutputName => (is => 'ro', isa => 'Str', required => 1);
  has S3Output => (is => 'ro', isa => 'Paws::SageMaker::ProcessingS3Output', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProcessingOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProcessingOutput object:

  $service_obj->Method(Att1 => { OutputName => $value, ..., S3Output => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProcessingOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputName

=head1 DESCRIPTION

Describes the results of a processing job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OutputName => Str

  The name for the processing job output.


=head2 B<REQUIRED> S3Output => L<Paws::SageMaker::ProcessingS3Output>

  Configuration for processing job outputs in Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

