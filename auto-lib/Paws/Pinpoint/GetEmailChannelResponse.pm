
package Paws::Pinpoint::GetEmailChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EmailChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_EmailChannelResponse/;
  has EmailChannelResponse => (is => 'ro', isa => Pinpoint_EmailChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EmailChannelResponse' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EmailChannelResponse' => {
                                           'class' => 'Paws::Pinpoint::EmailChannelResponse',
                                           'type' => 'Pinpoint_EmailChannelResponse'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetEmailChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailChannelResponse => Pinpoint_EmailChannelResponse




=head2 _request_id => Str


=cut

