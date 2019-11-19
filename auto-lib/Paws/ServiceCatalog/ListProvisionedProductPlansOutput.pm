# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListProvisionedProductPlansOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisionedProductPlanSummary/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProvisionedProductPlans => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisionedProductPlanSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProvisionedProductPlans' => {
                                              'class' => 'Paws::ServiceCatalog::ProvisionedProductPlanSummary',
                                              'type' => 'ArrayRef[ServiceCatalog_ProvisionedProductPlanSummary]'
                                            },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListProvisionedProductPlansOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProductPlans => ArrayRef[ServiceCatalog_ProvisionedProductPlanSummary]

Information about the plans.


=head2 _request_id => Str


=cut

1;