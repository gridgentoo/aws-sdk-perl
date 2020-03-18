package Paws::Pinpoint::JourneyLimits;
  use Moose;
  has DailyCap => (is => 'ro', isa => 'Int');
  has EndpointReentryCap => (is => 'ro', isa => 'Int');
  has MessagesPerSecond => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::JourneyLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::JourneyLimits object:

  $service_obj->Method(Att1 => { DailyCap => $value, ..., MessagesPerSecond => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::JourneyLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->DailyCap

=head1 DESCRIPTION

Specifies limits on the messages that a journey can send and the number
of times participants can enter a journey.

=head1 ATTRIBUTES


=head2 DailyCap => Int

  The maximum number of messages that the journey can send to a single
participant during a 24-hour period. The maximum value is 100.


=head2 EndpointReentryCap => Int

  The maximum number of times that a participant can enter the journey.
The maximum value is 100. To allow participants to enter the journey an
unlimited number of times, set this value to 0.


=head2 MessagesPerSecond => Int

  The maximum number of messages that the journey can send each second.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

