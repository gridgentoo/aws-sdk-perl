# Generated from default/object.tt
package Paws::CostExplorer::ReservationPurchaseRecommendation;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_ReservationPurchaseRecommendationSummary CostExplorer_ReservationPurchaseRecommendationDetail CostExplorer_ServiceSpecification/;
  has AccountScope => (is => 'ro', isa => Str);
  has LookbackPeriodInDays => (is => 'ro', isa => Str);
  has PaymentOption => (is => 'ro', isa => Str);
  has RecommendationDetails => (is => 'ro', isa => ArrayRef[CostExplorer_ReservationPurchaseRecommendationDetail]);
  has RecommendationSummary => (is => 'ro', isa => CostExplorer_ReservationPurchaseRecommendationSummary);
  has ServiceSpecification => (is => 'ro', isa => CostExplorer_ServiceSpecification);
  has TermInYears => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountScope' => {
                                   'type' => 'Str'
                                 },
               'RecommendationSummary' => {
                                            'class' => 'Paws::CostExplorer::ReservationPurchaseRecommendationSummary',
                                            'type' => 'CostExplorer_ReservationPurchaseRecommendationSummary'
                                          },
               'ServiceSpecification' => {
                                           'type' => 'CostExplorer_ServiceSpecification',
                                           'class' => 'Paws::CostExplorer::ServiceSpecification'
                                         },
               'RecommendationDetails' => {
                                            'class' => 'Paws::CostExplorer::ReservationPurchaseRecommendationDetail',
                                            'type' => 'ArrayRef[CostExplorer_ReservationPurchaseRecommendationDetail]'
                                          },
               'PaymentOption' => {
                                    'type' => 'Str'
                                  },
               'LookbackPeriodInDays' => {
                                           'type' => 'Str'
                                         },
               'TermInYears' => {
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

Paws::CostExplorer::ReservationPurchaseRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ReservationPurchaseRecommendation object:

  $service_obj->Method(Att1 => { AccountScope => $value, ..., TermInYears => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ReservationPurchaseRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountScope

=head1 DESCRIPTION

A specific reservation that AWS recommends for purchase.

=head1 ATTRIBUTES


=head2 AccountScope => Str

  The account scope that AWS recommends that you purchase this instance
for. For example, you can purchase this reservation for an entire
organization in AWS Organizations.


=head2 LookbackPeriodInDays => Str

  How many days of previous usage that AWS considers when making this
recommendation.


=head2 PaymentOption => Str

  The payment option for the reservation. For example, C<AllUpfront> or
C<NoUpfront>.


=head2 RecommendationDetails => ArrayRef[CostExplorer_ReservationPurchaseRecommendationDetail]

  Details about the recommended purchases.


=head2 RecommendationSummary => CostExplorer_ReservationPurchaseRecommendationSummary

  A summary about the recommended purchase.


=head2 ServiceSpecification => CostExplorer_ServiceSpecification

  Hardware specifications for the service that you want recommendations
for.


=head2 TermInYears => Str

  The term of the reservation that you want recommendations for, in
years.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

