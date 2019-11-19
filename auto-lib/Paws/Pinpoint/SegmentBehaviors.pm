# Generated from default/object.tt
package Paws::Pinpoint::SegmentBehaviors;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_RecencyDimension/;
  has Recency => (is => 'ro', isa => Pinpoint_RecencyDimension);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Recency' => {
                              'class' => 'Paws::Pinpoint::RecencyDimension',
                              'type' => 'Pinpoint_RecencyDimension'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentBehaviors

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentBehaviors object:

  $service_obj->Method(Att1 => { Recency => $value, ..., Recency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentBehaviors object:

  $result = $service_obj->Method(...);
  $result->Att1->Recency

=head1 DESCRIPTION

Specifies dimension settings for including or excluding endpoints from
a segment based on how recently an endpoint was active.

=head1 ATTRIBUTES


=head2 Recency => Pinpoint_RecencyDimension

  The dimension settings that are based on how recently an endpoint was
active.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

