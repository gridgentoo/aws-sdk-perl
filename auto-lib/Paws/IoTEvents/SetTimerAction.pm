package Paws::IoTEvents::SetTimerAction;
  use Moose;
  has Seconds => (is => 'ro', isa => 'Int', request_name => 'seconds', traits => ['NameInRequest'], required => 1);
  has TimerName => (is => 'ro', isa => 'Str', request_name => 'timerName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::SetTimerAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::SetTimerAction object:

  $service_obj->Method(Att1 => { Seconds => $value, ..., TimerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::SetTimerAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Seconds

=head1 DESCRIPTION

Information needed to set the timer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Seconds => Int

  The number of seconds until the timer expires. The minimum value is 60
seconds to ensure accuracy.


=head2 B<REQUIRED> TimerName => Str

  The name of the timer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

