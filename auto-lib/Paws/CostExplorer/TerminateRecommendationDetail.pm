# Generated from default/object.tt
package Paws::CostExplorer::TerminateRecommendationDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CostExplorer::Types qw//;
  has CurrencyCode => (is => 'ro', isa => Str);
  has EstimatedMonthlySavings => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EstimatedMonthlySavings' => {
                                              'type' => 'Str'
                                            },
               'CurrencyCode' => {
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

Paws::CostExplorer::TerminateRecommendationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::TerminateRecommendationDetail object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., EstimatedMonthlySavings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::TerminateRecommendationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Details on termination recommendation.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code that Amazon Web Services used to calculate the costs
for this instance.


=head2 EstimatedMonthlySavings => Str

  Estimated savings resulting from modification, on a monthly basis.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

