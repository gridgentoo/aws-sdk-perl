package Paws::ComputeOptimizer::AutoScalingGroupRecommendation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has AutoScalingGroupArn => (is => 'ro', isa => 'Str', request_name => 'autoScalingGroupArn', traits => ['NameInRequest']);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', request_name => 'autoScalingGroupName', traits => ['NameInRequest']);
  has CurrentConfiguration => (is => 'ro', isa => 'Paws::ComputeOptimizer::AutoScalingGroupConfiguration', request_name => 'currentConfiguration', traits => ['NameInRequest']);
  has Finding => (is => 'ro', isa => 'Str', request_name => 'finding', traits => ['NameInRequest']);
  has LastRefreshTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastRefreshTimestamp', traits => ['NameInRequest']);
  has LookBackPeriodInDays => (is => 'ro', isa => 'Num', request_name => 'lookBackPeriodInDays', traits => ['NameInRequest']);
  has RecommendationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::AutoScalingGroupRecommendationOption]', request_name => 'recommendationOptions', traits => ['NameInRequest']);
  has UtilizationMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::UtilizationMetric]', request_name => 'utilizationMetrics', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::AutoScalingGroupRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::AutoScalingGroupRecommendation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UtilizationMetrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::AutoScalingGroupRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Describes an Auto Scaling group recommendation.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account ID of the Auto Scaling group.


=head2 AutoScalingGroupArn => Str

  The Amazon Resource Name (ARN) of the Auto Scaling group.


=head2 AutoScalingGroupName => Str

  The name of the Auto Scaling group.


=head2 CurrentConfiguration => L<Paws::ComputeOptimizer::AutoScalingGroupConfiguration>

  An array of objects that describe the current configuration of the Auto
Scaling group.


=head2 Finding => Str

  The finding classification for the Auto Scaling group.

Findings for Auto Scaling groups include:

=over

=item *

B<C<NotOptimized> >E<mdash>An Auto Scaling group is considered not
optimized when AWS Compute Optimizer identifies a recommendation that
can provide better performance for your workload.

=item *

B<C<Optimized> >E<mdash>An Auto Scaling group is considered optimized
when Compute Optimizer determines that the group is correctly
provisioned to run your workload based on the chosen instance type. For
optimized resources, Compute Optimizer might recommend a new generation
instance type.

=back

The values that are returned might be C<NOT_OPTIMIZED> or C<OPTIMIZED>.


=head2 LastRefreshTimestamp => Str

  The time stamp of when the Auto Scaling group recommendation was last
refreshed.


=head2 LookBackPeriodInDays => Num

  The number of days for which utilization metrics were analyzed for the
Auto Scaling group.


=head2 RecommendationOptions => ArrayRef[L<Paws::ComputeOptimizer::AutoScalingGroupRecommendationOption>]

  An array of objects that describe the recommendation options for the
Auto Scaling group.


=head2 UtilizationMetrics => ArrayRef[L<Paws::ComputeOptimizer::UtilizationMetric>]

  An array of objects that describe the utilization metrics of the Auto
Scaling group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

