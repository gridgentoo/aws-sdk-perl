package Paws::Pinpoint::StartCondition;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has SegmentStartCondition => (is => 'ro', isa => 'Paws::Pinpoint::SegmentCondition');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::StartCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::StartCondition object:

  $service_obj->Method(Att1 => { Description => $value, ..., SegmentStartCondition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::StartCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Specifies the conditions for the first activity in a journey. This
activity and its conditions determine which users are participants in a
journey.

=head1 ATTRIBUTES


=head2 Description => Str

  The custom description of the condition.


=head2 SegmentStartCondition => L<Paws::Pinpoint::SegmentCondition>

  The segment that's associated with the first activity in the journey.
This segment determines which users are participants in the journey.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

