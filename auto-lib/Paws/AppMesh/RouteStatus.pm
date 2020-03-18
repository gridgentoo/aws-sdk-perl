package Paws::AppMesh::RouteStatus;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::RouteStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::RouteStatus object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::RouteStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

An object that represents the current status of a route.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

  The current status for the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

