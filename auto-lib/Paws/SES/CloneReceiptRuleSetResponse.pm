# Generated from callresult_class.tt

package Paws::SES::CloneReceiptRuleSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw//;

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::SES::CloneReceiptRuleSetResponse

=head1 ATTRIBUTES


=head2 _request_id => Str


=cut

