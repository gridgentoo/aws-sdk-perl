
package Paws::EC2::DeprovisionByoipCidrResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ByoipCidr/;
  has ByoipCidr => (is => 'ro', isa => EC2_ByoipCidr);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ByoipCidr' => 'byoipCidr'
                     },
  'types' => {
               'ByoipCidr' => {
                                'type' => 'EC2_ByoipCidr',
                                'class' => 'Paws::EC2::ByoipCidr'
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

Paws::EC2::DeprovisionByoipCidrResult

=head1 ATTRIBUTES


=head2 ByoipCidr => EC2_ByoipCidr

Information about the address range.


=head2 _request_id => Str


=cut

