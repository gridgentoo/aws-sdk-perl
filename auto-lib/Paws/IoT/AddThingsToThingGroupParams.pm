package Paws::IoT::AddThingsToThingGroupParams;
  use Moose;
  has OverrideDynamicGroups => (is => 'ro', isa => 'Bool', request_name => 'overrideDynamicGroups', traits => ['NameInRequest']);
  has ThingGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'thingGroupNames', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AddThingsToThingGroupParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AddThingsToThingGroupParams object:

  $service_obj->Method(Att1 => { OverrideDynamicGroups => $value, ..., ThingGroupNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AddThingsToThingGroupParams object:

  $result = $service_obj->Method(...);
  $result->Att1->OverrideDynamicGroups

=head1 DESCRIPTION

Parameters used when defining a mitigation action that move a set of
things to a thing group.

=head1 ATTRIBUTES


=head2 OverrideDynamicGroups => Bool

  Specifies if this mitigation action can move the things that triggered
the mitigation action even if they are part of one or more dynamic
things groups.


=head2 B<REQUIRED> ThingGroupNames => ArrayRef[Str|Undef]

  The list of groups to which you want to add the things that triggered
the mitigation action. You can add a thing to a maximum of 10 groups,
but you cannot add a thing to more than one group in the same
hierarchy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

