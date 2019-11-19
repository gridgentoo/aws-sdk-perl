# Generated from json/callresult_class.tt

package Paws::StorageGateway::UpdateChapCredentialsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has InitiatorName => (is => 'ro', isa => Str);
  has TargetARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TargetARN' => {
                                'type' => 'Str'
                              },
               'InitiatorName' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateChapCredentialsOutput

=head1 ATTRIBUTES


=head2 InitiatorName => Str

The iSCSI initiator that connects to the target. This is the same
initiator name specified in the request.


=head2 TargetARN => Str

The Amazon Resource Name (ARN) of the target. This is the same target
specified in the request.


=head2 _request_id => Str


=cut

1;