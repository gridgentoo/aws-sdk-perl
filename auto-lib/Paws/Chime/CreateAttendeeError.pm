package Paws::Chime::CreateAttendeeError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ExternalUserId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAttendeeError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::CreateAttendeeError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ExternalUserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::CreateAttendeeError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

The list of errors returned when errors are encountered during the
BatchCreateAttendee and CreateAttendee actions. This includes external
user IDs, error codes, and error messages.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code.


=head2 ErrorMessage => Str

  The error message.


=head2 ExternalUserId => Str

  The Amazon Chime SDK external user ID. Links the attendee to an
identity managed by a builder application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

