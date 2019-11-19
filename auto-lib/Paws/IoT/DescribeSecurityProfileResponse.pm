
package Paws::IoT::DescribeSecurityProfileResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::IoT::Types qw/IoT_Behavior IoT_AlertTargets/;
  has AdditionalMetricsToRetain => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has AlertTargets => (is => 'ro', isa => IoT_AlertTargets);
  has Behaviors => (is => 'ro', isa => ArrayRef[IoT_Behavior]);
  has CreationDate => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has SecurityProfileArn => (is => 'ro', isa => Str);
  has SecurityProfileDescription => (is => 'ro', isa => Str);
  has SecurityProfileName => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Behaviors' => 'behaviors',
                       'SecurityProfileArn' => 'securityProfileArn',
                       'SecurityProfileName' => 'securityProfileName',
                       'Version' => 'version',
                       'SecurityProfileDescription' => 'securityProfileDescription',
                       'AlertTargets' => 'alertTargets',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'AdditionalMetricsToRetain' => 'additionalMetricsToRetain',
                       'CreationDate' => 'creationDate'
                     },
  'types' => {
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        },
               'Version' => {
                              'type' => 'Int'
                            },
               'Behaviors' => {
                                'class' => 'Paws::IoT::Behavior',
                                'type' => 'ArrayRef[IoT_Behavior]'
                              },
               'SecurityProfileArn' => {
                                         'type' => 'Str'
                                       },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'AdditionalMetricsToRetain' => {
                                                'type' => 'ArrayRef[Str|Undef]'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityProfileDescription' => {
                                                 'type' => 'Str'
                                               },
               'AlertTargets' => {
                                   'class' => 'Paws::IoT::AlertTargets',
                                   'type' => 'IoT_AlertTargets'
                                 },
               'LastModifiedDate' => {
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

Paws::IoT::DescribeSecurityProfileResponse

=head1 ATTRIBUTES


=head2 AdditionalMetricsToRetain => ArrayRef[Str|Undef]

A list of metrics whose data is retained (stored). By default, data is
retained for any metric used in the profile's C<behaviors>, but it is
also retained for any metric specified here.


=head2 AlertTargets => IoT_AlertTargets

Where the alerts are sent. (Alerts are always sent to the console.)


=head2 Behaviors => ArrayRef[IoT_Behavior]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.


=head2 CreationDate => Str

The time the security profile was created.


=head2 LastModifiedDate => Str

The time the security profile was last modified.


=head2 SecurityProfileArn => Str

The ARN of the security profile.


=head2 SecurityProfileDescription => Str

A description of the security profile (associated with the security
profile when it was created or updated).


=head2 SecurityProfileName => Str

The name of the security profile.


=head2 Version => Int

The version of the security profile. A new version is generated
whenever the security profile is updated.


=head2 _request_id => Str


=cut

