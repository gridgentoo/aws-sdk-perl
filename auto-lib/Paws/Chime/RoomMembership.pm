# Generated from default/object.tt
package Paws::Chime::RoomMembership;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Member/;
  has InvitedBy => (is => 'ro', isa => Str);
  has Member => (is => 'ro', isa => Chime_Member);
  has Role => (is => 'ro', isa => Str);
  has RoomId => (is => 'ro', isa => Str);
  has UpdatedTimestamp => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UpdatedTimestamp' => {
                                       'type' => 'Str'
                                     },
               'InvitedBy' => {
                                'type' => 'Str'
                              },
               'Role' => {
                           'type' => 'Str'
                         },
               'RoomId' => {
                             'type' => 'Str'
                           },
               'Member' => {
                             'class' => 'Paws::Chime::Member',
                             'type' => 'Chime_Member'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::RoomMembership

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::RoomMembership object:

  $service_obj->Method(Att1 => { InvitedBy => $value, ..., UpdatedTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::RoomMembership object:

  $result = $service_obj->Method(...);
  $result->Att1->InvitedBy

=head1 DESCRIPTION

The room membership details.

=head1 ATTRIBUTES


=head2 InvitedBy => Str

  The identifier of the user that invited the room member.


=head2 Member => Chime_Member

  


=head2 Role => Str

  The membership role.


=head2 RoomId => Str

  The room ID.


=head2 UpdatedTimestamp => Str

  The room membership update timestamp, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

