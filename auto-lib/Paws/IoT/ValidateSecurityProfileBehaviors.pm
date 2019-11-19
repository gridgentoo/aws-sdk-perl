
package Paws::IoT::ValidateSecurityProfileBehaviors;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_Behavior/;
  has Behaviors => (is => 'ro', isa => ArrayRef[IoT_Behavior], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ValidateSecurityProfileBehaviors');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/security-profile-behaviors/validate');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ValidateSecurityProfileBehaviorsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Behaviors' => {
                                'type' => 'ArrayRef[IoT_Behavior]',
                                'class' => 'Paws::IoT::Behavior'
                              }
             },
  'NameInRequest' => {
                       'Behaviors' => 'behaviors'
                     },
  'IsRequired' => {
                    'Behaviors' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ValidateSecurityProfileBehaviors - Arguments for method ValidateSecurityProfileBehaviors on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateSecurityProfileBehaviors on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ValidateSecurityProfileBehaviors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateSecurityProfileBehaviors.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ValidateSecurityProfileBehaviorsResponse =
      $iot->ValidateSecurityProfileBehaviors(
      Behaviors => [
        {
          Name     => 'MyBehaviorName',    # min: 1, max: 128
          Criteria => {
            ComparisonOperator => 'less-than'
            , # values: less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set; OPTIONAL
            ConsecutiveDatapointsToAlarm => 1,    # min: 1, max: 10; OPTIONAL
            ConsecutiveDatapointsToClear => 1,    # min: 1, max: 10; OPTIONAL
            DurationSeconds              => 1,    # OPTIONAL
            StatisticalThreshold         => {
              Statistic => 'MyEvaluationStatistic',    # OPTIONAL
            },    # OPTIONAL
            Value => {
              Cidrs => [
                'MyCidr', ...    # min: 2, max: 43
              ],                 # OPTIONAL
              Count => 1,        # OPTIONAL
              Ports => [
                1, ...           # max: 65535
              ],                 # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Metric => 'MyBehaviorMetric',    # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Valid = $ValidateSecurityProfileBehaviorsResponse->Valid;
    my $ValidationErrors =
      $ValidateSecurityProfileBehaviorsResponse->ValidationErrors;

    # Returns a L<Paws::IoT::ValidateSecurityProfileBehaviorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ValidateSecurityProfileBehaviors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Behaviors => ArrayRef[IoT_Behavior]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateSecurityProfileBehaviors in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

