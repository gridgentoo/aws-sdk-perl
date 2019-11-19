
package Paws::Chime::GetEventsConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_EventsConfiguration/;
  has EventsConfiguration => (is => 'ro', isa => Chime_EventsConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventsConfiguration' => {
                                          'type' => 'Chime_EventsConfiguration',
                                          'class' => 'Paws::Chime::EventsConfiguration'
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

Paws::Chime::GetEventsConfigurationResponse

=head1 ATTRIBUTES


=head2 EventsConfiguration => Chime_EventsConfiguration

The events configuration details.


=head2 _request_id => Str


=cut

