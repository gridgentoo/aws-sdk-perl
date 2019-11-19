# Generated from default/object.tt
package Paws::GuardDuty::Master;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has InvitationId => (is => 'ro', isa => Str);
  has InvitedAt => (is => 'ro', isa => Str);
  has RelationshipStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              },
               'InvitationId' => {
                                   'type' => 'Str'
                                 },
               'InvitedAt' => {
                                'type' => 'Str'
                              },
               'RelationshipStatus' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'RelationshipStatus' => 'relationshipStatus',
                       'InvitedAt' => 'invitedAt',
                       'AccountId' => 'accountId',
                       'InvitationId' => 'invitationId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Master

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Master object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., RelationshipStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Master object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Contains information about the Master account and invitation.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The ID of the account used as the Master account.


=head2 InvitationId => Str

  This value is used to validate the master account to the member
account.


=head2 InvitedAt => Str

  Timestamp at which the invitation was sent.


=head2 RelationshipStatus => Str

  The status of the relationship between the master and member accounts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

