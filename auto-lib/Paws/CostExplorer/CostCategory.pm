package Paws::CostExplorer::CostCategory;
  use Moose;
  has CostCategoryArn => (is => 'ro', isa => 'Str', required => 1);
  has EffectiveEnd => (is => 'ro', isa => 'Str');
  has EffectiveStart => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::CostCategoryRule]', required => 1);
  has RuleVersion => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CostCategory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CostCategory object:

  $service_obj->Method(Att1 => { CostCategoryArn => $value, ..., RuleVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CostCategory object:

  $result = $service_obj->Method(...);
  $result->Att1->CostCategoryArn

=head1 DESCRIPTION

I<B<Cost Category is in public beta for AWS Billing and Cost Management
and is subject to change. Your use of Cost Categories is subject to the
Beta Service Participation terms of the AWS Service Terms
(https://aws.amazon.com/service-terms/) (Section 1.10).>>

The structure of Cost Categories. This includes detailed metadata and
the set of rules for the C<CostCategory> object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CostCategoryArn => Str

  The unique identifier for your Cost Category.


=head2 EffectiveEnd => Str

  The Cost Category's effective end date.


=head2 B<REQUIRED> EffectiveStart => Str

  The Cost Category's effective start date.


=head2 B<REQUIRED> Name => Str

  


=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::CostExplorer::CostCategoryRule>]

  Rules are processed in order. If there are multiple rules that match
the line item, then the first rule to match is used to determine that
Cost Category value.


=head2 B<REQUIRED> RuleVersion => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

