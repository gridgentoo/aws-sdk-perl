package Paws::Pinpoint::JourneyResponse;
  use Moose;
  has Activities => (is => 'ro', isa => 'Paws::Pinpoint::MapOfActivity');
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has CreationDate => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Limits => (is => 'ro', isa => 'Paws::Pinpoint::JourneyLimits');
  has LocalTime => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has QuietTime => (is => 'ro', isa => 'Paws::Pinpoint::QuietTime');
  has RefreshFrequency => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Pinpoint::JourneySchedule');
  has StartActivity => (is => 'ro', isa => 'Str');
  has StartCondition => (is => 'ro', isa => 'Paws::Pinpoint::StartCondition');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::JourneyResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::JourneyResponse object:

  $service_obj->Method(Att1 => { Activities => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::JourneyResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Activities

=head1 DESCRIPTION

Provides information about the status, configuration, and other
settings for a journey.

=head1 ATTRIBUTES


=head2 Activities => L<Paws::Pinpoint::MapOfActivity>

  A map that contains a set of Activity objects, one object for each
activity in the journey. For each Activity object, the key is the
unique identifier (string) for an activity and the value is the
settings for the activity.


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that the journey applies to.


=head2 CreationDate => Str

  The date, in ISO 8601 format, when the journey was created.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the journey.


=head2 LastModifiedDate => Str

  The date, in ISO 8601 format, when the journey was last modified.


=head2 Limits => L<Paws::Pinpoint::JourneyLimits>

  The messaging and entry limits for the journey.


=head2 LocalTime => Bool

  Specifies whether the journey's scheduled start and end times use each
participant's local time. If this value is true, the schedule uses each
participant's local time.


=head2 B<REQUIRED> Name => Str

  The name of the journey.


=head2 QuietTime => L<Paws::Pinpoint::QuietTime>

  The quiet time settings for the journey. Quiet time is a specific time
range when a journey doesn't send messages to participants, if all the
following conditions are met:

=over

=item *

The EndpointDemographic.Timezone property of the endpoint for the
participant is set to a valid value.

=item *

The current time in the participant's time zone is later than or equal
to the time specified by the QuietTime.Start property for the journey.

=item *

The current time in the participant's time zone is earlier than or
equal to the time specified by the QuietTime.End property for the
journey.

=back

If any of the preceding conditions isn't met, the participant will
receive messages from the journey, even if quiet time is enabled.


=head2 RefreshFrequency => Str

  The frequency with which Amazon Pinpoint evaluates segment and event
data for the journey, as a duration in ISO 8601 format.


=head2 Schedule => L<Paws::Pinpoint::JourneySchedule>

  The schedule settings for the journey.


=head2 StartActivity => Str

  The unique identifier for the first activity in the journey.


=head2 StartCondition => L<Paws::Pinpoint::StartCondition>

  The segment that defines which users are participants in the journey.


=head2 State => Str

  The current status of the journey. Possible values are:

=over

=item *

DRAFT - The journey is being developed and hasn't been published yet.

=item *

ACTIVE - The journey has been developed and published. Depending on the
journey's schedule, the journey may currently be running or scheduled
to start running at a later time. If a journey's status is ACTIVE, you
can't add, change, or remove activities from it.

=item *

COMPLETED - The journey has been published and has finished running.
All participants have entered the journey and no participants are
waiting to complete the journey or any activities in the journey.

=item *

CANCELLED - The journey has been stopped. If a journey's status is
CANCELLED, you can't add, change, or remove activities or segment
settings from the journey.

=item *

CLOSED - The journey has been published and has started running. It may
have also passed its scheduled end time, or passed its scheduled start
time and a refresh frequency hasn't been specified for it. If a
journey's status is CLOSED, you can't add participants to it, and no
existing participants can enter the journey for the first time.
However, any existing participants who are currently waiting to start
an activity may continue the journey.

=back



=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that identifies the tags that
are associated with the journey. Each tag consists of a required tag
key and an associated tag value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

