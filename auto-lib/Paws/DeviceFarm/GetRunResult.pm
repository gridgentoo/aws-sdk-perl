# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetRunResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Run/;
  has Run => (is => 'ro', isa => DeviceFarm_Run);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Run' => {
                          'class' => 'Paws::DeviceFarm::Run',
                          'type' => 'DeviceFarm_Run'
                        }
             },
  'NameInRequest' => {
                       'Run' => 'run'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetRunResult

=head1 ATTRIBUTES


=head2 Run => DeviceFarm_Run

The run you wish to get results from.


=head2 _request_id => Str


=cut

1;