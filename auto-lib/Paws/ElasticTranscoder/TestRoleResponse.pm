
package Paws::ElasticTranscoder::TestRoleResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ElasticTranscoder::Types qw//;
  has Messages => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Success => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Success' => {
                              'type' => 'Str'
                            },
               'Messages' => {
                               'type' => 'ArrayRef[Str|Undef]'
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

Paws::ElasticTranscoder::TestRoleResponse

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[Str|Undef]

If the C<Success> element contains C<false>, this value is an array of
one or more error messages that were generated during the test process.


=head2 Success => Str

If the operation is successful, this value is C<true>; otherwise, the
value is C<false>.


=head2 _request_id => Str


=cut

