# Generated from callresult_class.tt

package Paws::DocDB::ApplyPendingMaintenanceActionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_ResourcePendingMaintenanceActions/;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => DocDB_ResourcePendingMaintenanceActions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourcePendingMaintenanceActions' => {
                                                        'type' => 'DocDB_ResourcePendingMaintenanceActions',
                                                        'class' => 'Paws::DocDB::ResourcePendingMaintenanceActions'
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

Paws::DocDB::ApplyPendingMaintenanceActionResult

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => DocDB_ResourcePendingMaintenanceActions




=head2 _request_id => Str


=cut

