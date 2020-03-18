package Paws::Pinpoint::SimpleCondition;
  use Moose;
  has EventCondition => (is => 'ro', isa => 'Paws::Pinpoint::EventCondition');
  has SegmentCondition => (is => 'ro', isa => 'Paws::Pinpoint::SegmentCondition');
  has SegmentDimensions => (is => 'ro', isa => 'Paws::Pinpoint::SegmentDimensions', request_name => 'segmentDimensions', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SimpleCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SimpleCondition object:

  $service_obj->Method(Att1 => { EventCondition => $value, ..., SegmentDimensions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SimpleCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->EventCondition

=head1 DESCRIPTION

Specifies a condition to evaluate for an activity in a journey.

=head1 ATTRIBUTES


=head2 EventCondition => L<Paws::Pinpoint::EventCondition>

  The dimension settings for the event that's associated with the
activity.


=head2 SegmentCondition => L<Paws::Pinpoint::SegmentCondition>

  The segment that's associated with the activity.


=head2 SegmentDimensions => L<Paws::Pinpoint::SegmentDimensions>

  The dimension settings for the segment that's associated with the
activity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

