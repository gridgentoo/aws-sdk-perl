package Paws::Config::OrganizationCustomRuleMetadata;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InputParameters => (is => 'ro', isa => 'Str');
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', required => 1);
  has MaximumExecutionFrequency => (is => 'ro', isa => 'Str');
  has OrganizationConfigRuleTriggerTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ResourceIdScope => (is => 'ro', isa => 'Str');
  has ResourceTypesScope => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagKeyScope => (is => 'ro', isa => 'Str');
  has TagValueScope => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::OrganizationCustomRuleMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationCustomRuleMetadata object:

  $service_obj->Method(Att1 => { Description => $value, ..., TagValueScope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationCustomRuleMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

An object that specifies organization custom rule metadata such as
resource type, resource ID of AWS resource, Lamdba function ARN, and
organization trigger types that trigger AWS Config to evaluate your AWS
resources against a rule. It also provides the frequency with which you
want AWS Config to run evaluations for the rule if the trigger type is
periodic.

=head1 ATTRIBUTES


=head2 Description => Str

  The description that you provide for organization config rule.


=head2 InputParameters => Str

  A string, in JSON format, that is passed to organization config rule
Lambda function.


=head2 B<REQUIRED> LambdaFunctionArn => Str

  The lambda function ARN.


=head2 MaximumExecutionFrequency => Str

  The maximum frequency with which AWS Config runs evaluations for a
rule. Your custom rule is triggered when AWS Config delivers the
configuration snapshot. For more information, see
ConfigSnapshotDeliveryProperties.

By default, rules with a periodic trigger are evaluated every 24 hours.
To change the frequency, specify a valid value for the
C<MaximumExecutionFrequency> parameter.


=head2 B<REQUIRED> OrganizationConfigRuleTriggerTypes => ArrayRef[Str|Undef]

  The type of notification that triggers AWS Config to run an evaluation
for a rule. You can specify the following notification types:

=over

=item *

C<ConfigurationItemChangeNotification> - Triggers an evaluation when
AWS Config delivers a configuration item as a result of a resource
change.

=item *

C<OversizedConfigurationItemChangeNotification> - Triggers an
evaluation when AWS Config delivers an oversized configuration item.
AWS Config may generate this notification type when a resource changes
and the notification exceeds the maximum size allowed by Amazon SNS.

=item *

C<ScheduledNotification> - Triggers a periodic evaluation at the
frequency specified for C<MaximumExecutionFrequency>.

=back



=head2 ResourceIdScope => Str

  The ID of the AWS resource that was evaluated.


=head2 ResourceTypesScope => ArrayRef[Str|Undef]

  The type of the AWS resource that was evaluated.


=head2 TagKeyScope => Str

  One part of a key-value pair that make up a tag. A key is a general
label that acts like a category for more specific tag values.


=head2 TagValueScope => Str

  The optional part of a key-value pair that make up a tag. A value acts
as a descriptor within a tag category (key).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

