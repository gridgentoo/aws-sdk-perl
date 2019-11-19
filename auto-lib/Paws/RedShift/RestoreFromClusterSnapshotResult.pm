# Generated from callresult_class.tt

package Paws::RedShift::RestoreFromClusterSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_Cluster/;
  has Cluster => (is => 'ro', isa => RedShift_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Cluster' => {
                              'type' => 'RedShift_Cluster',
                              'class' => 'Paws::RedShift::Cluster'
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

Paws::RedShift::RestoreFromClusterSnapshotResult

=head1 ATTRIBUTES


=head2 Cluster => RedShift_Cluster




=head2 _request_id => Str


=cut

