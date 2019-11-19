# Generated from json/callresult_class.tt

package Paws::Route53Domains::UpdateDomainContactResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Domains::Types qw//;
  has OperationId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OperationId' => 1
                  },
  'types' => {
               'OperationId' => {
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

Paws::Route53Domains::UpdateDomainContactResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationId => Str

Identifier for tracking the progress of the request. To use this ID to
query the operation status, use GetOperationDetail.


=head2 _request_id => Str


=cut

1;