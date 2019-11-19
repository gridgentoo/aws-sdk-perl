# Generated from json/callresult_class.tt

package Paws::Glue::DeleteJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has JobName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteJobResponse

=head1 ATTRIBUTES


=head2 JobName => Str

The name of the job definition that was deleted.


=head2 _request_id => Str


=cut

1;