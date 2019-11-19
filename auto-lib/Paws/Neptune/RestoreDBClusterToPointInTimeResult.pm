# Generated from callresult_class.tt

package Paws::Neptune::RestoreDBClusterToPointInTimeResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_DBCluster/;
  has DBCluster => (is => 'ro', isa => Neptune_DBCluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBCluster' => {
                                'type' => 'Neptune_DBCluster',
                                'class' => 'Paws::Neptune::DBCluster'
                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::RestoreDBClusterToPointInTimeResult

=head1 ATTRIBUTES


=head2 DBCluster => Neptune_DBCluster




=head2 _request_id => Str


=cut

