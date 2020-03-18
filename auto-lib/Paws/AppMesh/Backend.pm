package Paws::AppMesh::Backend;
  use Moose;
  has VirtualService => (is => 'ro', isa => 'Paws::AppMesh::VirtualServiceBackend', request_name => 'virtualService', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::Backend

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::Backend object:

  $service_obj->Method(Att1 => { VirtualService => $value, ..., VirtualService => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::Backend object:

  $result = $service_obj->Method(...);
  $result->Att1->VirtualService

=head1 DESCRIPTION

An object that represents the backends that a virtual node is expected
to send outbound traffic to.

=head1 ATTRIBUTES


=head2 VirtualService => L<Paws::AppMesh::VirtualServiceBackend>

  Specifies a virtual service to use as a backend for a virtual node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

