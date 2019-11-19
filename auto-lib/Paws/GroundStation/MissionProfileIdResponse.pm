
package Paws::GroundStation::MissionProfileIdResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has MissionProfileId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MissionProfileId' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'MissionProfileId' => 'missionProfileId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::MissionProfileIdResponse

=head1 ATTRIBUTES


=head2 MissionProfileId => Str

ID of a mission profile.


=head2 _request_id => Str


=cut

