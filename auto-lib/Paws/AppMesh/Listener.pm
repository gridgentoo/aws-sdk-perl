# Generated from default/object.tt
package Paws::AppMesh::Listener;
  use Moo;
  use Types::Standard qw//;
  use Paws::AppMesh::Types qw/AppMesh_HealthCheckPolicy AppMesh_PortMapping/;
  has HealthCheck => (is => 'ro', isa => AppMesh_HealthCheckPolicy);
  has PortMapping => (is => 'ro', isa => AppMesh_PortMapping, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PortMapping' => 'portMapping',
                       'HealthCheck' => 'healthCheck'
                     },
  'IsRequired' => {
                    'PortMapping' => 1
                  },
  'types' => {
               'PortMapping' => {
                                  'type' => 'AppMesh_PortMapping',
                                  'class' => 'Paws::AppMesh::PortMapping'
                                },
               'HealthCheck' => {
                                  'class' => 'Paws::AppMesh::HealthCheckPolicy',
                                  'type' => 'AppMesh_HealthCheckPolicy'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::Listener

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::Listener object:

  $service_obj->Method(Att1 => { HealthCheck => $value, ..., PortMapping => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::Listener object:

  $result = $service_obj->Method(...);
  $result->Att1->HealthCheck

=head1 DESCRIPTION

An object that represents a listener for a virtual node.

=head1 ATTRIBUTES


=head2 HealthCheck => AppMesh_HealthCheckPolicy

  The health check information for the listener.


=head2 B<REQUIRED> PortMapping => AppMesh_PortMapping

  The port mapping information for the listener.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

