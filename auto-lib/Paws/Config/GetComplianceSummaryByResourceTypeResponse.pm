# Generated from json/callresult_class.tt

package Paws::Config::GetComplianceSummaryByResourceTypeResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ComplianceSummaryByResourceType/;
  has ComplianceSummariesByResourceType => (is => 'ro', isa => ArrayRef[Config_ComplianceSummaryByResourceType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComplianceSummariesByResourceType' => {
                                                        'class' => 'Paws::Config::ComplianceSummaryByResourceType',
                                                        'type' => 'ArrayRef[Config_ComplianceSummaryByResourceType]'
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

Paws::Config::GetComplianceSummaryByResourceTypeResponse

=head1 ATTRIBUTES


=head2 ComplianceSummariesByResourceType => ArrayRef[Config_ComplianceSummaryByResourceType]

The number of resources that are compliant and the number that are
noncompliant. If one or more resource types were provided with the
request, the numbers are returned for each resource type. The maximum
number returned is 100.


=head2 _request_id => Str


=cut

1;