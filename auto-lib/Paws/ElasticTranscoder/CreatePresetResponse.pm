
package Paws::ElasticTranscoder::CreatePresetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Preset/;
  has Preset => (is => 'ro', isa => ElasticTranscoder_Preset);
  has Warning => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Preset' => {
                             'type' => 'ElasticTranscoder_Preset',
                             'class' => 'Paws::ElasticTranscoder::Preset'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Warning' => {
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

Paws::ElasticTranscoder::CreatePresetResponse

=head1 ATTRIBUTES


=head2 Preset => ElasticTranscoder_Preset

A section of the response body that provides information about the
preset that is created.


=head2 Warning => Str

If the preset settings don't comply with the standards for the video
codec but Elastic Transcoder created the preset, this message explains
the reason the preset settings don't meet the standard. Elastic
Transcoder created the preset because the settings might produce
acceptable output.


=head2 _request_id => Str


=cut

