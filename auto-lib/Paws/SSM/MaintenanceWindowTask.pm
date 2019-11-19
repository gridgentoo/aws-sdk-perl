# Generated from default/object.tt
package Paws::SSM::MaintenanceWindowTask;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::SSM::Types qw/SSM_Target SSM_LoggingInfo SSM_MaintenanceWindowTaskParameters/;
  has Description => (is => 'ro', isa => Str);
  has LoggingInfo => (is => 'ro', isa => SSM_LoggingInfo);
  has MaxConcurrency => (is => 'ro', isa => Str);
  has MaxErrors => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Priority => (is => 'ro', isa => Int);
  has ServiceRoleArn => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_Target]);
  has TaskArn => (is => 'ro', isa => Str);
  has TaskParameters => (is => 'ro', isa => SSM_MaintenanceWindowTaskParameters);
  has Type => (is => 'ro', isa => Str);
  has WindowId => (is => 'ro', isa => Str);
  has WindowTaskId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceRoleArn' => {
                                     'type' => 'Str'
                                   },
               'MaxConcurrency' => {
                                     'type' => 'Str'
                                   },
               'LoggingInfo' => {
                                  'type' => 'SSM_LoggingInfo',
                                  'class' => 'Paws::SSM::LoggingInfo'
                                },
               'Targets' => {
                              'type' => 'ArrayRef[SSM_Target]',
                              'class' => 'Paws::SSM::Target'
                            },
               'TaskParameters' => {
                                     'type' => 'SSM_MaintenanceWindowTaskParameters',
                                     'class' => 'Paws::SSM::MaintenanceWindowTaskParameters'
                                   },
               'MaxErrors' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'Priority' => {
                               'type' => 'Int'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'WindowTaskId' => {
                                   'type' => 'Str'
                                 },
               'WindowId' => {
                               'type' => 'Str'
                             },
               'TaskArn' => {
                              'type' => 'Str'
                            },
               'Type' => {
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

Paws::SSM::MaintenanceWindowTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowTask object:

  $service_obj->Method(Att1 => { Description => $value, ..., WindowTaskId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about a task defined for a maintenance window.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the task.


=head2 LoggingInfo => SSM_LoggingInfo

  Information about an Amazon S3 bucket to write task-level logs to.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.


=head2 MaxConcurrency => Str

  The maximum number of targets this task can be run for, in parallel.


=head2 MaxErrors => Str

  The maximum number of errors allowed before this task stops being
scheduled.


=head2 Name => Str

  The task name.


=head2 Priority => Int

  The priority of the task in the maintenance window. The lower the
number, the higher the priority. Tasks that have the same priority are
scheduled in parallel.


=head2 ServiceRoleArn => Str

  The ARN of the IAM service role to use to publish Amazon Simple
Notification Service (Amazon SNS) notifications for maintenance window
Run Command tasks.


=head2 Targets => ArrayRef[SSM_Target]

  The targets (either instances or tags). Instances are specified using
Key=instanceids,Values=E<lt>instanceid1E<gt>,E<lt>instanceid2E<gt>.
Tags are specified using Key=E<lt>tag nameE<gt>,Values=E<lt>tag
valueE<gt>.


=head2 TaskArn => Str

  The resource that the task uses during execution. For RUN_COMMAND and
AUTOMATION task types, C<TaskArn> is the Systems Manager document name
or ARN. For LAMBDA tasks, it's the function name or ARN. For
STEP_FUNCTIONS tasks, it's the state machine ARN.


=head2 TaskParameters => SSM_MaintenanceWindowTaskParameters

  The parameters that should be passed to the task when it is run.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.


=head2 Type => Str

  The type of task. The type can be one of the following: RUN_COMMAND,
AUTOMATION, LAMBDA, or STEP_FUNCTIONS.


=head2 WindowId => Str

  The ID of the maintenance window where the task is registered.


=head2 WindowTaskId => Str

  The task ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

