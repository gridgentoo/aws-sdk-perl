# Generated from default/object.tt
package Paws::AppMesh::WeightedTarget;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AppMesh::Types qw//;
  has VirtualNode => (is => 'ro', isa => Str, required => 1);
  has Weight => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Weight' => {
                             'type' => 'Int'
                           },
               'VirtualNode' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Weight' => 1,
                    'VirtualNode' => 1
                  },
  'NameInRequest' => {
                       'VirtualNode' => 'virtualNode',
                       'Weight' => 'weight'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::WeightedTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::WeightedTarget object:

  $service_obj->Method(Att1 => { VirtualNode => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::WeightedTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->VirtualNode

=head1 DESCRIPTION

An object that represents a target and its relative weight. Traffic is
distributed across targets according to their relative weight. For
example, a weighted target with a relative weight of 50 receives five
times as much traffic as one with a relative weight of 10. The total
weight for all targets combined must be less than or equal to 100.

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualNode => Str

  The virtual node to associate with the weighted target.


=head2 B<REQUIRED> Weight => Int

  The relative weight of the weighted target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

