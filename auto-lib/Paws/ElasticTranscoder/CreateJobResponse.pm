
package Paws::ElasticTranscoder::CreateJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Job/;
  has Job => (is => 'ro', isa => ElasticTranscoder_Job);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Job' => {
                          'class' => 'Paws::ElasticTranscoder::Job',
                          'type' => 'ElasticTranscoder_Job'
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

Paws::ElasticTranscoder::CreateJobResponse

=head1 ATTRIBUTES


=head2 Job => ElasticTranscoder_Job

A section of the response body that provides information about the job
that is created.


=head2 _request_id => Str


=cut

