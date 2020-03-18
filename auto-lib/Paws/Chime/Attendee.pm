package Paws::Chime::Attendee;
  use Moose;
  has AttendeeId => (is => 'ro', isa => 'Str');
  has ExternalUserId => (is => 'ro', isa => 'Str');
  has JoinToken => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Attendee

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Attendee object:

  $service_obj->Method(Att1 => { AttendeeId => $value, ..., JoinToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Attendee object:

  $result = $service_obj->Method(...);
  $result->Att1->AttendeeId

=head1 DESCRIPTION

An Amazon Chime SDK meeting attendee. Includes a unique C<AttendeeId>
and C<JoinToken>. The C<JoinToken> allows a client to authenticate and
join as the specified attendee. The C<JoinToken> expires when the
meeting ends or when DeleteAttendee is called. After that, the attendee
is unable to join the meeting.

We recommend securely transferring each C<JoinToken> from your server
application to the client so that no other client has access to the
token except for the one authorized to represent the attendee.

=head1 ATTRIBUTES


=head2 AttendeeId => Str

  The Amazon Chime SDK attendee ID.


=head2 ExternalUserId => Str

  The Amazon Chime SDK external user ID. Links the attendee to an
identity managed by a builder application.


=head2 JoinToken => Str

  The join token used by the Amazon Chime SDK attendee.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

