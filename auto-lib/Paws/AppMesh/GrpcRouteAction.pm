# Generated from default/object.tt
package Paws::AppMesh::GrpcRouteAction;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_WeightedTarget/;
  has WeightedTargets => (is => 'ro', isa => ArrayRef[AppMesh_WeightedTarget], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WeightedTargets' => {
                                      'type' => 'ArrayRef[AppMesh_WeightedTarget]',
                                      'class' => 'Paws::AppMesh::WeightedTarget'
                                    }
             },
  'IsRequired' => {
                    'WeightedTargets' => 1
                  },
  'NameInRequest' => {
                       'WeightedTargets' => 'weightedTargets'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::GrpcRouteAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::GrpcRouteAction object:

  $service_obj->Method(Att1 => { WeightedTargets => $value, ..., WeightedTargets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::GrpcRouteAction object:

  $result = $service_obj->Method(...);
  $result->Att1->WeightedTargets

=head1 DESCRIPTION

An object that represents the action to take if a match is determined.

=head1 ATTRIBUTES


=head2 B<REQUIRED> WeightedTargets => ArrayRef[AppMesh_WeightedTarget]

  An object that represents the targets that traffic is routed to when a
request matches the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

