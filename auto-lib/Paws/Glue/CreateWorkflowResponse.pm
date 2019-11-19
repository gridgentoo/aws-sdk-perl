# Generated from json/callresult_class.tt

package Paws::Glue::CreateWorkflowResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateWorkflowResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the workflow which was provided as part of the request.


=head2 _request_id => Str


=cut

1;