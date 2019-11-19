
package Paws::Pinpoint::GetGcmChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GCMChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_GCMChannelResponse/;
  has GCMChannelResponse => (is => 'ro', isa => Pinpoint_GCMChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GCMChannelResponse' => {
                                         'type' => 'Pinpoint_GCMChannelResponse',
                                         'class' => 'Paws::Pinpoint::GCMChannelResponse'
                                       }
             },
  'IsRequired' => {
                    'GCMChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetGcmChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GCMChannelResponse => Pinpoint_GCMChannelResponse




=head2 _request_id => Str


=cut

