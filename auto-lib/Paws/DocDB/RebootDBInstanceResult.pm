# Generated from callresult_class.tt

package Paws::DocDB::RebootDBInstanceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_DBInstance/;
  has DBInstance => (is => 'ro', isa => DocDB_DBInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBInstance' => {
                                 'type' => 'DocDB_DBInstance',
                                 'class' => 'Paws::DocDB::DBInstance'
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

Paws::DocDB::RebootDBInstanceResult

=head1 ATTRIBUTES


=head2 DBInstance => DocDB_DBInstance




=head2 _request_id => Str


=cut

