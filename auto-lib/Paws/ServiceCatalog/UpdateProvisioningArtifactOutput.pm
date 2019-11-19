# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::UpdateProvisioningArtifactOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisioningArtifactDetail ServiceCatalog_ProvisioningArtifactInfo/;
  has Info => (is => 'ro', isa => ServiceCatalog_ProvisioningArtifactInfo);
  has ProvisioningArtifactDetail => (is => 'ro', isa => ServiceCatalog_ProvisioningArtifactDetail);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Info' => {
                           'class' => 'Paws::ServiceCatalog::ProvisioningArtifactInfo',
                           'type' => 'ServiceCatalog_ProvisioningArtifactInfo'
                         },
               'ProvisioningArtifactDetail' => {
                                                 'class' => 'Paws::ServiceCatalog::ProvisioningArtifactDetail',
                                                 'type' => 'ServiceCatalog_ProvisioningArtifactDetail'
                                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisioningArtifactOutput

=head1 ATTRIBUTES


=head2 Info => ServiceCatalog_ProvisioningArtifactInfo

The URL of the CloudFormation template in Amazon S3.


=head2 ProvisioningArtifactDetail => ServiceCatalog_ProvisioningArtifactDetail

Information about the provisioning artifact.


=head2 Status => Str

The status of the current request.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;