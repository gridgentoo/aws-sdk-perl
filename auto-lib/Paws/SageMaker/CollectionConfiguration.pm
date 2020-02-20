package Paws::SageMaker::CollectionConfiguration;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str');
  has CollectionParameters => (is => 'ro', isa => 'Paws::SageMaker::CollectionParameters');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CollectionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CollectionConfiguration object:

  $service_obj->Method(Att1 => { CollectionName => $value, ..., CollectionParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CollectionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CollectionName

=head1 DESCRIPTION

Configuration information for tensor collections.

=head1 ATTRIBUTES


=head2 CollectionName => Str

  The name of the tensor collection. The name must be unique relative to
other rule configuration names.


=head2 CollectionParameters => L<Paws::SageMaker::CollectionParameters>

  Parameter values for the tensor collection. The allowed parameters are
C<"name">, C<"include_regex">, C<"reduction_config">, C<"save_config">,
C<"tensor_names">, and C<"save_histogram">.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

