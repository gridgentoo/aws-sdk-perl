# Generated from callresult_class.tt

package Paws::ElastiCache::DeleteSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_Snapshot/;
  has Snapshot => (is => 'ro', isa => ElastiCache_Snapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Snapshot' => {
                               'class' => 'Paws::ElastiCache::Snapshot',
                               'type' => 'ElastiCache_Snapshot'
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

Paws::ElastiCache::DeleteSnapshotResult

=head1 ATTRIBUTES


=head2 Snapshot => ElastiCache_Snapshot




=head2 _request_id => Str


=cut

