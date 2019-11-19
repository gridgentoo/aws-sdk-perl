# Generated from json/callresult_class.tt

package Paws::Inspector::ListFindingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Inspector::Types qw//;
  has FindingArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'FindingArns' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                }
             },
  'IsRequired' => {
                    'FindingArns' => 1
                  },
  'NameInRequest' => {
                       'FindingArns' => 'findingArns',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingArns => ArrayRef[Str|Undef]

A list of ARNs that specifies the findings returned by the action.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;