package Paws::AppMesh::GrpcRoute;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::AppMesh::GrpcRouteAction', request_name => 'action', traits => ['NameInRequest'], required => 1);
  has Match => (is => 'ro', isa => 'Paws::AppMesh::GrpcRouteMatch', request_name => 'match', traits => ['NameInRequest'], required => 1);
  has RetryPolicy => (is => 'ro', isa => 'Paws::AppMesh::GrpcRetryPolicy', request_name => 'retryPolicy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::GrpcRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::GrpcRoute object:

  $service_obj->Method(Att1 => { Action => $value, ..., RetryPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::GrpcRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

An object that represents a GRPC route type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => L<Paws::AppMesh::GrpcRouteAction>

  An object that represents the action to take if a match is determined.


=head2 B<REQUIRED> Match => L<Paws::AppMesh::GrpcRouteMatch>

  An object that represents the criteria for determining a request match.


=head2 RetryPolicy => L<Paws::AppMesh::GrpcRetryPolicy>

  An object that represents a retry policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
