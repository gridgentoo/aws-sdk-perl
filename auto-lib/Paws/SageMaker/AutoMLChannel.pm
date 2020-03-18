package Paws::SageMaker::AutoMLChannel;
  use Moose;
  has CompressionType => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::SageMaker::AutoMLDataSource', required => 1);
  has TargetAttributeName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLChannel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLChannel object:

  $service_obj->Method(Att1 => { CompressionType => $value, ..., TargetAttributeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLChannel object:

  $result = $service_obj->Method(...);
  $result->Att1->CompressionType

=head1 DESCRIPTION

Similar to Channel. A channel is a named input source that training
algorithms can consume. Refer to Channel for detailed descriptions.

=head1 ATTRIBUTES


=head2 CompressionType => Str

  You can use Gzip or None. The default value is None.


=head2 B<REQUIRED> DataSource => L<Paws::SageMaker::AutoMLDataSource>

  The data source.


=head2 B<REQUIRED> TargetAttributeName => Str

  The name of the target variable in supervised learning, a.k.a.
E<lsquo>yE<rsquo>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

