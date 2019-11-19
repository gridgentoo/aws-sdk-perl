
package Paws::Batch::SubmitJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Batch::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1);
  has JobName => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'JobId' => 'jobId',
                       'JobName' => 'jobName'
                     },
  'IsRequired' => {
                    'JobName' => 1,
                    'JobId' => 1
                  },
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'JobName' => {
                              'type' => 'Str'
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

Paws::Batch::SubmitJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier for the job.


=head2 B<REQUIRED> JobName => Str

The name of the job.


=head2 _request_id => Str


=cut

