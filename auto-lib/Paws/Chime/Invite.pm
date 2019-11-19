# Generated from default/object.tt
package Paws::Chime::Invite;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has EmailAddress => (is => 'ro', isa => Str);
  has EmailStatus => (is => 'ro', isa => Str);
  has InviteId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EmailAddress' => {
                                   'type' => 'Str'
                                 },
               'InviteId' => {
                               'type' => 'Str'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'EmailStatus' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Invite

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Invite object:

  $service_obj->Method(Att1 => { EmailAddress => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Invite object:

  $result = $service_obj->Method(...);
  $result->Att1->EmailAddress

=head1 DESCRIPTION

Invitation object returned after emailing users to invite them to join
the Amazon Chime C<Team> account.

=head1 ATTRIBUTES


=head2 EmailAddress => Str

  The email address to which the invite is sent.


=head2 EmailStatus => Str

  The status of the invite email.


=head2 InviteId => Str

  The invite ID.


=head2 Status => Str

  The status of the invite.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

