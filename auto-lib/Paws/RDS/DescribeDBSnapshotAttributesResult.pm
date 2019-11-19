# Generated from callresult_class.tt

package Paws::RDS::DescribeDBSnapshotAttributesResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBSnapshotAttributesResult/;
  has DBSnapshotAttributesResult => (is => 'ro', isa => RDS_DBSnapshotAttributesResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBSnapshotAttributesResult' => {
                                                 'class' => 'Paws::RDS::DBSnapshotAttributesResult',
                                                 'type' => 'RDS_DBSnapshotAttributesResult'
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

Paws::RDS::DescribeDBSnapshotAttributesResult

=head1 ATTRIBUTES


=head2 DBSnapshotAttributesResult => RDS_DBSnapshotAttributesResult




=head2 _request_id => Str


=cut

