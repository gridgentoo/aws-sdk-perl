package Paws::AppMesh::RouteSpec;
  use Moose;
  has GrpcRoute => (is => 'ro', isa => 'Paws::AppMesh::GrpcRoute', request_name => 'grpcRoute', traits => ['NameInRequest']);
  has Http2Route => (is => 'ro', isa => 'Paws::AppMesh::HttpRoute', request_name => 'http2Route', traits => ['NameInRequest']);
  has HttpRoute => (is => 'ro', isa => 'Paws::AppMesh::HttpRoute', request_name => 'httpRoute', traits => ['NameInRequest']);
  has Priority => (is => 'ro', isa => 'Int', request_name => 'priority', traits => ['NameInRequest']);
  has TcpRoute => (is => 'ro', isa => 'Paws::AppMesh::TcpRoute', request_name => 'tcpRoute', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::RouteSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::RouteSpec object:

  $service_obj->Method(Att1 => { GrpcRoute => $value, ..., TcpRoute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::RouteSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->GrpcRoute

=head1 DESCRIPTION

An object that represents a route specification. Specify one route
type.

=head1 ATTRIBUTES


=head2 GrpcRoute => L<Paws::AppMesh::GrpcRoute>

  An object that represents the specification of a GRPC route.


=head2 Http2Route => L<Paws::AppMesh::HttpRoute>

  An object that represents the specification of an HTTP2 route.


=head2 HttpRoute => L<Paws::AppMesh::HttpRoute>

  An object that represents the specification of an HTTP route.


=head2 Priority => Int

  The priority for the route. Routes are matched based on the specified
value, where 0 is the highest priority.


=head2 TcpRoute => L<Paws::AppMesh::TcpRoute>

  An object that represents the specification of a TCP route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

