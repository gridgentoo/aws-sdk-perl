# Generated from default/object.tt
package Paws::CostExplorer::RightsizingRecommendation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CostExplorer::Types qw/CostExplorer_TerminateRecommendationDetail CostExplorer_CurrentInstance CostExplorer_ModifyRecommendationDetail/;
  has AccountId => (is => 'ro', isa => Str);
  has CurrentInstance => (is => 'ro', isa => CostExplorer_CurrentInstance);
  has ModifyRecommendationDetail => (is => 'ro', isa => CostExplorer_ModifyRecommendationDetail);
  has RightsizingType => (is => 'ro', isa => Str);
  has TerminateRecommendationDetail => (is => 'ro', isa => CostExplorer_TerminateRecommendationDetail);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CurrentInstance' => {
                                      'class' => 'Paws::CostExplorer::CurrentInstance',
                                      'type' => 'CostExplorer_CurrentInstance'
                                    },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'RightsizingType' => {
                                      'type' => 'Str'
                                    },
               'TerminateRecommendationDetail' => {
                                                    'class' => 'Paws::CostExplorer::TerminateRecommendationDetail',
                                                    'type' => 'CostExplorer_TerminateRecommendationDetail'
                                                  },
               'ModifyRecommendationDetail' => {
                                                 'type' => 'CostExplorer_ModifyRecommendationDetail',
                                                 'class' => 'Paws::CostExplorer::ModifyRecommendationDetail'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::RightsizingRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::RightsizingRecommendation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., TerminateRecommendationDetail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::RightsizingRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Recommendations to rightsize resources.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The account that this recommendation is for.


=head2 CurrentInstance => CostExplorer_CurrentInstance

  Context regarding the current instance.


=head2 ModifyRecommendationDetail => CostExplorer_ModifyRecommendationDetail

  Details for modification recommendations.


=head2 RightsizingType => Str

  Recommendation to either terminate or modify the resource.


=head2 TerminateRecommendationDetail => CostExplorer_TerminateRecommendationDetail

  Details for termination recommendations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

