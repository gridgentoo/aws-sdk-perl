package Paws::Pinpoint::EventCondition;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::Pinpoint::EventDimensions', required => 1);
  has MessageActivity => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EventCondition object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., MessageActivity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EventCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Specifies the conditions to evaluate for an event that applies to an
activity in a journey.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Dimensions => L<Paws::Pinpoint::EventDimensions>

  The dimensions for the event filter to use for the activity.


=head2 MessageActivity => Str

  The message identifier (message_id) for the message to use when
determining whether message events meet the condition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

