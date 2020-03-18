package Paws::Pinpoint::SegmentCondition;
  use Moose;
  has SegmentId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentCondition object:

  $service_obj->Method(Att1 => { SegmentId => $value, ..., SegmentId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->SegmentId

=head1 DESCRIPTION

Specifies a segment to associate with an activity in a journey.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentId => Str

  The unique identifier for the segment to associate with the activity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

