# Generated by default/object.tt
package Paws::EMRContainers::ContainerInfo;
  use Moose;
  has EksInfo => (is => 'ro', isa => 'Paws::EMRContainers::EksInfo', request_name => 'eksInfo', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ContainerInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMRContainers::ContainerInfo object:

  $service_obj->Method(Att1 => { EksInfo => $value, ..., EksInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMRContainers::ContainerInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->EksInfo

=head1 DESCRIPTION

The information about the container used for a job run or a managed
endpoint.

=head1 ATTRIBUTES


=head2 EksInfo => L<Paws::EMRContainers::EksInfo>

The information about the EKS cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

