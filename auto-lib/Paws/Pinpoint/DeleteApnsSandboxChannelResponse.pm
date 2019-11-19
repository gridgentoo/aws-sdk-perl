
package Paws::Pinpoint::DeleteApnsSandboxChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSSandboxChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_APNSSandboxChannelResponse/;
  has APNSSandboxChannelResponse => (is => 'ro', isa => Pinpoint_APNSSandboxChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'APNSSandboxChannelResponse' => 1
                  },
  'types' => {
               'APNSSandboxChannelResponse' => {
                                                 'class' => 'Paws::Pinpoint::APNSSandboxChannelResponse',
                                                 'type' => 'Pinpoint_APNSSandboxChannelResponse'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteApnsSandboxChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSSandboxChannelResponse => Pinpoint_APNSSandboxChannelResponse




=head2 _request_id => Str


=cut

