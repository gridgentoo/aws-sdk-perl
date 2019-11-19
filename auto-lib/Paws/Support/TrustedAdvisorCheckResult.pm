# Generated from default/object.tt
package Paws::Support::TrustedAdvisorCheckResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_TrustedAdvisorResourceDetail Support_TrustedAdvisorCategorySpecificSummary Support_TrustedAdvisorResourcesSummary/;
  has CategorySpecificSummary => (is => 'ro', isa => Support_TrustedAdvisorCategorySpecificSummary, required => 1);
  has CheckId => (is => 'ro', isa => Str, required => 1);
  has FlaggedResources => (is => 'ro', isa => ArrayRef[Support_TrustedAdvisorResourceDetail], required => 1);
  has ResourcesSummary => (is => 'ro', isa => Support_TrustedAdvisorResourcesSummary, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has Timestamp => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CheckId' => {
                              'type' => 'Str'
                            },
               'CategorySpecificSummary' => {
                                              'type' => 'Support_TrustedAdvisorCategorySpecificSummary',
                                              'class' => 'Paws::Support::TrustedAdvisorCategorySpecificSummary'
                                            },
               'ResourcesSummary' => {
                                       'class' => 'Paws::Support::TrustedAdvisorResourcesSummary',
                                       'type' => 'Support_TrustedAdvisorResourcesSummary'
                                     },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'FlaggedResources' => {
                                       'class' => 'Paws::Support::TrustedAdvisorResourceDetail',
                                       'type' => 'ArrayRef[Support_TrustedAdvisorResourceDetail]'
                                     },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'CheckId' => 'checkId',
                       'CategorySpecificSummary' => 'categorySpecificSummary',
                       'ResourcesSummary' => 'resourcesSummary',
                       'Timestamp' => 'timestamp',
                       'FlaggedResources' => 'flaggedResources',
                       'Status' => 'status'
                     },
  'IsRequired' => {
                    'ResourcesSummary' => 1,
                    'CategorySpecificSummary' => 1,
                    'CheckId' => 1,
                    'Status' => 1,
                    'FlaggedResources' => 1,
                    'Timestamp' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCheckResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCheckResult object:

  $service_obj->Method(Att1 => { CategorySpecificSummary => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCheckResult object:

  $result = $service_obj->Method(...);
  $result->Att1->CategorySpecificSummary

=head1 DESCRIPTION

The results of a Trusted Advisor check returned by
DescribeTrustedAdvisorCheckResult.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CategorySpecificSummary => Support_TrustedAdvisorCategorySpecificSummary

  Summary information that relates to the category of the check. Cost
Optimizing is the only category that is currently supported.


=head2 B<REQUIRED> CheckId => Str

  The unique identifier for the Trusted Advisor check.


=head2 B<REQUIRED> FlaggedResources => ArrayRef[Support_TrustedAdvisorResourceDetail]

  The details about each resource listed in the check result.


=head2 B<REQUIRED> ResourcesSummary => Support_TrustedAdvisorResourcesSummary

  


=head2 B<REQUIRED> Status => Str

  The alert status of the check: "ok" (green), "warning" (yellow),
"error" (red), or "not_available".


=head2 B<REQUIRED> Timestamp => Str

  The time of the last refresh of the check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

