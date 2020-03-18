package Paws::SavingsPlans::SavingsPlanOfferingRate;
  use Moose;
  has Operation => (is => 'ro', isa => 'Str', request_name => 'operation', traits => ['NameInRequest']);
  has ProductType => (is => 'ro', isa => 'Str', request_name => 'productType', traits => ['NameInRequest']);
  has Properties => (is => 'ro', isa => 'ArrayRef[Paws::SavingsPlans::SavingsPlanOfferingRateProperty]', request_name => 'properties', traits => ['NameInRequest']);
  has Rate => (is => 'ro', isa => 'Str', request_name => 'rate', traits => ['NameInRequest']);
  has SavingsPlanOffering => (is => 'ro', isa => 'Paws::SavingsPlans::ParentSavingsPlanOffering', request_name => 'savingsPlanOffering', traits => ['NameInRequest']);
  has ServiceCode => (is => 'ro', isa => 'Str', request_name => 'serviceCode', traits => ['NameInRequest']);
  has Unit => (is => 'ro', isa => 'Str', request_name => 'unit', traits => ['NameInRequest']);
  has UsageType => (is => 'ro', isa => 'Str', request_name => 'usageType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::SavingsPlanOfferingRate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SavingsPlans::SavingsPlanOfferingRate object:

  $service_obj->Method(Att1 => { Operation => $value, ..., UsageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SavingsPlans::SavingsPlanOfferingRate object:

  $result = $service_obj->Method(...);
  $result->Att1->Operation

=head1 DESCRIPTION

Information about a Savings Plan offering rate.

=head1 ATTRIBUTES


=head2 Operation => Str

  The specific AWS operation for the line item in the billing report.


=head2 ProductType => Str

  The product type.


=head2 Properties => ArrayRef[L<Paws::SavingsPlans::SavingsPlanOfferingRateProperty>]

  The properties.


=head2 Rate => Str

  The Savings Plan rate.


=head2 SavingsPlanOffering => L<Paws::SavingsPlans::ParentSavingsPlanOffering>

  The Savings Plan offering.


=head2 ServiceCode => Str

  The service.


=head2 Unit => Str

  The unit.


=head2 UsageType => Str

  The usage details of the line item in the billing report.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

