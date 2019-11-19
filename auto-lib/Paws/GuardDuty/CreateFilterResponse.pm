
package Paws::GuardDuty::CreateFilterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateFilterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the successfully created filter.


=head2 _request_id => Str


=cut

