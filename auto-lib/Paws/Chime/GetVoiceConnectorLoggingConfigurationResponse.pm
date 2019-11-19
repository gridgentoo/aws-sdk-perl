
package Paws::Chime::GetVoiceConnectorLoggingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_LoggingConfiguration/;
  has LoggingConfiguration => (is => 'ro', isa => Chime_LoggingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoggingConfiguration' => {
                                           'class' => 'Paws::Chime::LoggingConfiguration',
                                           'type' => 'Chime_LoggingConfiguration'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetVoiceConnectorLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => Chime_LoggingConfiguration

The logging configuration details.


=head2 _request_id => Str


=cut

