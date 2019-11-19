
package Paws::Pinpoint::GetSegmentVersionsResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SegmentsResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SegmentsResponse/;
  has SegmentsResponse => (is => 'ro', isa => Pinpoint_SegmentsResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SegmentsResponse' => {
                                       'class' => 'Paws::Pinpoint::SegmentsResponse',
                                       'type' => 'Pinpoint_SegmentsResponse'
                                     }
             },
  'IsRequired' => {
                    'SegmentsResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentsResponse => Pinpoint_SegmentsResponse




=head2 _request_id => Str


=cut

