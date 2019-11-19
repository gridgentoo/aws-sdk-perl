# Generated from callresult_class.tt

package Paws::RDS::DeleteDBClusterSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBClusterSnapshot/;
  has DBClusterSnapshot => (is => 'ro', isa => RDS_DBClusterSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusterSnapshot' => {
                                        'class' => 'Paws::RDS::DBClusterSnapshot',
                                        'type' => 'RDS_DBClusterSnapshot'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBClusterSnapshotResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshot => RDS_DBClusterSnapshot




=head2 _request_id => Str


=cut

