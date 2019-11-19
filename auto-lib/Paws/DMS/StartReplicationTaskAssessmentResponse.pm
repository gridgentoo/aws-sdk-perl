# Generated from json/callresult_class.tt

package Paws::DMS::StartReplicationTaskAssessmentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_ReplicationTask/;
  has ReplicationTask => (is => 'ro', isa => DMS_ReplicationTask);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationTask' => {
                                      'type' => 'DMS_ReplicationTask',
                                      'class' => 'Paws::DMS::ReplicationTask'
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

Paws::DMS::StartReplicationTaskAssessmentResponse

=head1 ATTRIBUTES


=head2 ReplicationTask => DMS_ReplicationTask

The assessed replication task.


=head2 _request_id => Str


=cut

1;