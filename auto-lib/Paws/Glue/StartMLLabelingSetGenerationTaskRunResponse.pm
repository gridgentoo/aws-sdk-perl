# Generated from json/callresult_class.tt

package Paws::Glue::StartMLLabelingSetGenerationTaskRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has TaskRunId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskRunId' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartMLLabelingSetGenerationTaskRunResponse

=head1 ATTRIBUTES


=head2 TaskRunId => Str

The unique run identifier that is associated with this task run.


=head2 _request_id => Str


=cut

1;