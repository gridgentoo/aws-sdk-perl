# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifactOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_FailedServiceActionAssociation/;
  has FailedServiceActionAssociations => (is => 'ro', isa => ArrayRef[ServiceCatalog_FailedServiceActionAssociation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailedServiceActionAssociations' => {
                                                      'class' => 'Paws::ServiceCatalog::FailedServiceActionAssociation',
                                                      'type' => 'ArrayRef[ServiceCatalog_FailedServiceActionAssociation]'
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

Paws::ServiceCatalog::BatchAssociateServiceActionWithProvisioningArtifactOutput

=head1 ATTRIBUTES


=head2 FailedServiceActionAssociations => ArrayRef[ServiceCatalog_FailedServiceActionAssociation]

An object that contains a list of errors, along with information to
help you identify the self-service action.


=head2 _request_id => Str


=cut

1;