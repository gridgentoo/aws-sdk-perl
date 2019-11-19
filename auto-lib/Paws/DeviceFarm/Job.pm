# Generated from default/object.tt
package Paws::DeviceFarm::Job;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Device DeviceFarm_DeviceMinutes DeviceFarm_Counters/;
  has Arn => (is => 'ro', isa => Str);
  has Counters => (is => 'ro', isa => DeviceFarm_Counters);
  has Created => (is => 'ro', isa => Str);
  has Device => (is => 'ro', isa => DeviceFarm_Device);
  has DeviceMinutes => (is => 'ro', isa => DeviceFarm_DeviceMinutes);
  has InstanceArn => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Result => (is => 'ro', isa => Str);
  has Started => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Stopped => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has VideoCapture => (is => 'ro', isa => Bool);
  has VideoEndpoint => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Created' => {
                              'type' => 'Str'
                            },
               'VideoCapture' => {
                                   'type' => 'Bool'
                                 },
               'VideoEndpoint' => {
                                    'type' => 'Str'
                                  },
               'Type' => {
                           'type' => 'Str'
                         },
               'Result' => {
                             'type' => 'Str'
                           },
               'Arn' => {
                          'type' => 'Str'
                        },
               'DeviceMinutes' => {
                                    'class' => 'Paws::DeviceFarm::DeviceMinutes',
                                    'type' => 'DeviceFarm_DeviceMinutes'
                                  },
               'Stopped' => {
                              'type' => 'Str'
                            },
               'Started' => {
                              'type' => 'Str'
                            },
               'InstanceArn' => {
                                  'type' => 'Str'
                                },
               'Counters' => {
                               'type' => 'DeviceFarm_Counters',
                               'class' => 'Paws::DeviceFarm::Counters'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Message' => {
                              'type' => 'Str'
                            },
               'Device' => {
                             'class' => 'Paws::DeviceFarm::Device',
                             'type' => 'DeviceFarm_Device'
                           },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Message' => 'message',
                       'Device' => 'device',
                       'Status' => 'status',
                       'Name' => 'name',
                       'Counters' => 'counters',
                       'Stopped' => 'stopped',
                       'Started' => 'started',
                       'InstanceArn' => 'instanceArn',
                       'DeviceMinutes' => 'deviceMinutes',
                       'Arn' => 'arn',
                       'Result' => 'result',
                       'VideoCapture' => 'videoCapture',
                       'Created' => 'created',
                       'VideoEndpoint' => 'videoEndpoint',
                       'Type' => 'type'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Job object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VideoEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a device.

=head1 ATTRIBUTES


=head2 Arn => Str

  The job's ARN.


=head2 Counters => DeviceFarm_Counters

  The job's result counters.


=head2 Created => Str

  When the job was created.


=head2 Device => DeviceFarm_Device

  The device (phone or tablet).


=head2 DeviceMinutes => DeviceFarm_DeviceMinutes

  Represents the total (metered or unmetered) minutes used by the job.


=head2 InstanceArn => Str

  The Amazon Resource Name (ARN) of the instance.


=head2 Message => Str

  A message about the job's result.


=head2 Name => Str

  The job's name.


=head2 Result => Str

  The job's result.

Allowed values include:

=over

=item *

PENDING: A pending condition.

=item *

PASSED: A passing condition.

=item *

WARNED: A warning condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

ERRORED: An error condition.

=item *

STOPPED: A stopped condition.

=back



=head2 Started => Str

  The job's start time.


=head2 Status => Str

  The job's status.

Allowed values include:

=over

=item *

PENDING: A pending status.

=item *

PENDING_CONCURRENCY: A pending concurrency status.

=item *

PENDING_DEVICE: A pending device status.

=item *

PROCESSING: A processing status.

=item *

SCHEDULING: A scheduling status.

=item *

PREPARING: A preparing status.

=item *

RUNNING: A running status.

=item *

COMPLETED: A completed status.

=item *

STOPPING: A stopping status.

=back



=head2 Stopped => Str

  The job's stop time.


=head2 Type => Str

  The job's type.

Allowed values include the following:

=over

=item *

BUILTIN_FUZZ: The built-in fuzz type.

=item *

BUILTIN_EXPLORER: For Android, an app explorer that will traverse an
Android app, interacting with it and capturing screenshots at the same
time.

=item *

APPIUM_JAVA_JUNIT: The Appium Java JUnit type.

=item *

APPIUM_JAVA_TESTNG: The Appium Java TestNG type.

=item *

APPIUM_PYTHON: The Appium Python type.

=item *

APPIUM_NODE: The Appium Node.js type.

=item *

APPIUM_RUBY: The Appium Ruby type.

=item *

APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for web apps.

=item *

APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for web apps.

=item *

APPIUM_WEB_PYTHON: The Appium Python type for web apps.

=item *

APPIUM_WEB_NODE: The Appium Node.js type for web apps.

=item *

APPIUM_WEB_RUBY: The Appium Ruby test type for web apps.

=item *

CALABASH: The Calabash type.

=item *

INSTRUMENTATION: The Instrumentation type.

=item *

UIAUTOMATION: The uiautomation type.

=item *

UIAUTOMATOR: The uiautomator type.

=item *

XCTEST: The Xcode test type.

=item *

XCTEST_UI: The Xcode UI test type.

=back



=head2 VideoCapture => Bool

  This value is set to true if video capture is enabled; otherwise, it is
set to false.


=head2 VideoEndpoint => Str

  The endpoint for streaming device video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

