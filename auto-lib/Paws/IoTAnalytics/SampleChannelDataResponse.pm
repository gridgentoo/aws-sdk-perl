
package Paws::IoTAnalytics::SampleChannelDataResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::IoTAnalytics::Types qw//;
  has Payloads => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Payloads' => 'payloads'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Payloads' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::SampleChannelDataResponse

=head1 ATTRIBUTES


=head2 Payloads => ArrayRef[Str|Undef]

The list of message samples. Each sample message is returned as a
base64-encoded string.


=head2 _request_id => Str


=cut

