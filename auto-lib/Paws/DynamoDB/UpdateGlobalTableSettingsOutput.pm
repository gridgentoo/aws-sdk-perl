# Generated from json/callresult_class.tt

package Paws::DynamoDB::UpdateGlobalTableSettingsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_ReplicaSettingsDescription/;
  has GlobalTableName => (is => 'ro', isa => Str);
  has ReplicaSettings => (is => 'ro', isa => ArrayRef[DynamoDB_ReplicaSettingsDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicaSettings' => {
                                      'type' => 'ArrayRef[DynamoDB_ReplicaSettingsDescription]',
                                      'class' => 'Paws::DynamoDB::ReplicaSettingsDescription'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GlobalTableName' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateGlobalTableSettingsOutput

=head1 ATTRIBUTES


=head2 GlobalTableName => Str

The name of the global table.


=head2 ReplicaSettings => ArrayRef[DynamoDB_ReplicaSettingsDescription]

The Region-specific settings for the global table.


=head2 _request_id => Str


=cut

1;