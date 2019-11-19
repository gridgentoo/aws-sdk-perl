# Generated from json/callargs_class.tt

package Paws::ECS::RegisterTaskDefinition;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw/ECS_InferenceAccelerator ECS_Volume ECS_ProxyConfiguration ECS_ContainerDefinition ECS_Tag ECS_TaskDefinitionPlacementConstraint/;
  has ContainerDefinitions => (is => 'ro', isa => ArrayRef[ECS_ContainerDefinition], required => 1, predicate => 1);
  has Cpu => (is => 'ro', isa => Str, predicate => 1);
  has ExecutionRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has Family => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InferenceAccelerators => (is => 'ro', isa => ArrayRef[ECS_InferenceAccelerator], predicate => 1);
  has IpcMode => (is => 'ro', isa => Str, predicate => 1);
  has Memory => (is => 'ro', isa => Str, predicate => 1);
  has NetworkMode => (is => 'ro', isa => Str, predicate => 1);
  has PidMode => (is => 'ro', isa => Str, predicate => 1);
  has PlacementConstraints => (is => 'ro', isa => ArrayRef[ECS_TaskDefinitionPlacementConstraint], predicate => 1);
  has ProxyConfiguration => (is => 'ro', isa => ECS_ProxyConfiguration, predicate => 1);
  has RequiresCompatibilities => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag], predicate => 1);
  has TaskRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has Volumes => (is => 'ro', isa => ArrayRef[ECS_Volume], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RegisterTaskDefinition');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::RegisterTaskDefinitionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ContainerDefinitions' => 1,
                    'Family' => 1
                  },
  'NameInRequest' => {
                       'Memory' => 'memory',
                       'Family' => 'family',
                       'TaskRoleArn' => 'taskRoleArn',
                       'IpcMode' => 'ipcMode',
                       'NetworkMode' => 'networkMode',
                       'Cpu' => 'cpu',
                       'PidMode' => 'pidMode',
                       'ContainerDefinitions' => 'containerDefinitions',
                       'ExecutionRoleArn' => 'executionRoleArn',
                       'ProxyConfiguration' => 'proxyConfiguration',
                       'PlacementConstraints' => 'placementConstraints',
                       'RequiresCompatibilities' => 'requiresCompatibilities',
                       'InferenceAccelerators' => 'inferenceAccelerators',
                       'Volumes' => 'volumes',
                       'Tags' => 'tags'
                     },
  'types' => {
               'PidMode' => {
                              'type' => 'Str'
                            },
               'Cpu' => {
                          'type' => 'Str'
                        },
               'Family' => {
                             'type' => 'Str'
                           },
               'TaskRoleArn' => {
                                  'type' => 'Str'
                                },
               'IpcMode' => {
                              'type' => 'Str'
                            },
               'NetworkMode' => {
                                  'type' => 'Str'
                                },
               'Memory' => {
                             'type' => 'Str'
                           },
               'InferenceAccelerators' => {
                                            'type' => 'ArrayRef[ECS_InferenceAccelerator]',
                                            'class' => 'Paws::ECS::InferenceAccelerator'
                                          },
               'Tags' => {
                           'class' => 'Paws::ECS::Tag',
                           'type' => 'ArrayRef[ECS_Tag]'
                         },
               'Volumes' => {
                              'type' => 'ArrayRef[ECS_Volume]',
                              'class' => 'Paws::ECS::Volume'
                            },
               'PlacementConstraints' => {
                                           'type' => 'ArrayRef[ECS_TaskDefinitionPlacementConstraint]',
                                           'class' => 'Paws::ECS::TaskDefinitionPlacementConstraint'
                                         },
               'ProxyConfiguration' => {
                                         'type' => 'ECS_ProxyConfiguration',
                                         'class' => 'Paws::ECS::ProxyConfiguration'
                                       },
               'RequiresCompatibilities' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               'ContainerDefinitions' => {
                                           'type' => 'ArrayRef[ECS_ContainerDefinition]',
                                           'class' => 'Paws::ECS::ContainerDefinition'
                                         },
               'ExecutionRoleArn' => {
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

Paws::ECS::RegisterTaskDefinition - Arguments for method RegisterTaskDefinition on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTaskDefinition on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method RegisterTaskDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTaskDefinition.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To register a task definition
    # This example registers a task definition to the specified family.
    my $RegisterTaskDefinitionResponse = $ecs->RegisterTaskDefinition(
      'ContainerDefinitions' => [

        {
          'Command'   => [ 'sleep', 360 ],
          'Cpu'       => 10,
          'Essential' => 1,
          'Image'     => 'busybox',
          'Memory'    => 10,
          'Name'      => 'sleep'
        }
      ],
      'Family'      => 'sleep360',
      'TaskRoleArn' => '',
      'Volumes'     => [

      ]
    );

    # Results:
    my $taskDefinition = $RegisterTaskDefinitionResponse->taskDefinition;

    # Returns a L<Paws::ECS::RegisterTaskDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/RegisterTaskDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerDefinitions => ArrayRef[ECS_ContainerDefinition]

A list of container definitions in JSON format that describe the
different containers that make up your task.



=head2 Cpu => Str

The number of CPU units used by the task. It can be expressed as an
integer using CPU units, for example C<1024>, or as a string using
vCPUs, for example C<1 vCPU> or C<1 vcpu>, in a task definition. String
values are converted to an integer indicating the CPU units when the
task definition is registered.

Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.

If you are using the EC2 launch type, this field is optional. Supported
values are between C<128> CPU units (C<0.125> vCPUs) and C<10240> CPU
units (C<10> vCPUs).

If you are using the Fargate launch type, this field is required and
you must use one of the following values, which determines your range
of supported values for the C<memory> parameter:

=over

=item *

256 (.25 vCPU) - Available C<memory> values: 512 (0.5 GB), 1024 (1 GB),
2048 (2 GB)

=item *

512 (.5 vCPU) - Available C<memory> values: 1024 (1 GB), 2048 (2 GB),
3072 (3 GB), 4096 (4 GB)

=item *

1024 (1 vCPU) - Available C<memory> values: 2048 (2 GB), 3072 (3 GB),
4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)

=item *

2048 (2 vCPU) - Available C<memory> values: Between 4096 (4 GB) and
16384 (16 GB) in increments of 1024 (1 GB)

=item *

4096 (4 vCPU) - Available C<memory> values: Between 8192 (8 GB) and
30720 (30 GB) in increments of 1024 (1 GB)

=back




=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the task execution role that the
Amazon ECS container agent and the Docker daemon can assume.



=head2 B<REQUIRED> Family => Str

You must specify a C<family> for a task definition, which allows you to
track multiple versions of the same task definition. The C<family> is
used as a name for your task definition. Up to 255 letters (uppercase
and lowercase), numbers, and hyphens are allowed.



=head2 InferenceAccelerators => ArrayRef[ECS_InferenceAccelerator]

The Elastic Inference accelerators to use for the containers in the
task.



=head2 IpcMode => Str

The IPC resource namespace to use for the containers in the task. The
valid values are C<host>, C<task>, or C<none>. If C<host> is specified,
then all containers within the tasks that specified the C<host> IPC
mode on the same container instance share the same IPC resources with
the host Amazon EC2 instance. If C<task> is specified, all containers
within the specified task share the same IPC resources. If C<none> is
specified, then IPC resources within the containers of a task are
private and not shared with other containers in a task or on the
container instance. If no value is specified, then the IPC resource
namespace sharing depends on the Docker daemon setting on the container
instance. For more information, see IPC settings
(https://docs.docker.com/engine/reference/run/#ipc-settings---ipc) in
the I<Docker run reference>.

If the C<host> IPC mode is used, be aware that there is a heightened
risk of undesired IPC namespace expose. For more information, see
Docker security (https://docs.docker.com/engine/security/security/).

If you are setting namespaced kernel parameters using C<systemControls>
for the containers in the task, the following will apply to your IPC
resource namespace. For more information, see System Controls
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=over

=item *

For tasks that use the C<host> IPC mode, IPC namespace related
C<systemControls> are not supported.

=item *

For tasks that use the C<task> IPC mode, IPC namespace related
C<systemControls> will apply to all containers within a task.

=back

This parameter is not supported for Windows containers or tasks using
the Fargate launch type.

Valid values are: C<"host">, C<"task">, C<"none">

=head2 Memory => Str

The amount of memory (in MiB) used by the task. It can be expressed as
an integer using MiB, for example C<1024>, or as a string using GB, for
example C<1GB> or C<1 GB>, in a task definition. String values are
converted to an integer indicating the MiB when the task definition is
registered.

Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.

If using the EC2 launch type, this field is optional.

If using the Fargate launch type, this field is required and you must
use one of the following values, which determines your range of
supported values for the C<cpu> parameter:

=over

=item *

512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available C<cpu> values: 256
(.25 vCPU)

=item *

1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available C<cpu>
values: 512 (.5 vCPU)

=item *

2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168
(7 GB), 8192 (8 GB) - Available C<cpu> values: 1024 (1 vCPU)

=item *

Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
Available C<cpu> values: 2048 (2 vCPU)

=item *

Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
Available C<cpu> values: 4096 (4 vCPU)

=back




=head2 NetworkMode => Str

The Docker networking mode to use for the containers in the task. The
valid values are C<none>, C<bridge>, C<awsvpc>, and C<host>. The
default Docker network mode is C<bridge>. If you are using the Fargate
launch type, the C<awsvpc> network mode is required. If you are using
the EC2 launch type, any network mode can be used. If the network mode
is set to C<none>, you cannot specify port mappings in your container
definitions, and the tasks containers do not have external
connectivity. The C<host> and C<awsvpc> network modes offer the highest
networking performance for containers because they use the EC2 network
stack instead of the virtualized network stack provided by the
C<bridge> mode.

With the C<host> and C<awsvpc> network modes, exposed container ports
are mapped directly to the corresponding host port (for the C<host>
network mode) or the attached elastic network interface port (for the
C<awsvpc> network mode), so you cannot take advantage of dynamic host
port mappings.

If the network mode is C<awsvpc>, the task is allocated an elastic
network interface, and you must specify a NetworkConfiguration value
when you create a service or run a task with the task definition. For
more information, see Task Networking
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Currently, only Amazon ECS-optimized AMIs, other Amazon Linux variants
with the C<ecs-init> package, or AWS Fargate infrastructure support the
C<awsvpc> network mode.

If the network mode is C<host>, you cannot run multiple instantiations
of the same task on a single container instance when port mappings are
used.

Docker for Windows uses different network modes than Docker for Linux.
When you register a task definition with Windows containers, you must
not specify a network mode. If you use the console to register a task
definition with Windows containers, you must choose the
C<E<lt>defaultE<gt>> network mode object.

For more information, see Network settings
(https://docs.docker.com/engine/reference/run/#network-settings) in the
I<Docker run reference>.

Valid values are: C<"bridge">, C<"host">, C<"awsvpc">, C<"none">

=head2 PidMode => Str

The process namespace to use for the containers in the task. The valid
values are C<host> or C<task>. If C<host> is specified, then all
containers within the tasks that specified the C<host> PID mode on the
same container instance share the same process namespace with the host
Amazon EC2 instance. If C<task> is specified, all containers within the
specified task share the same process namespace. If no value is
specified, the default is a private namespace. For more information,
see PID settings
(https://docs.docker.com/engine/reference/run/#pid-settings---pid) in
the I<Docker run reference>.

If the C<host> PID mode is used, be aware that there is a heightened
risk of undesired process namespace expose. For more information, see
Docker security (https://docs.docker.com/engine/security/security/).

This parameter is not supported for Windows containers or tasks using
the Fargate launch type.

Valid values are: C<"host">, C<"task">

=head2 PlacementConstraints => ArrayRef[ECS_TaskDefinitionPlacementConstraint]

An array of placement constraint objects to use for the task. You can
specify a maximum of 10 constraints per task (this limit includes
constraints in the task definition and those specified at runtime).



=head2 ProxyConfiguration => ECS_ProxyConfiguration





=head2 RequiresCompatibilities => ArrayRef[Str|Undef]

The launch type required by the task. If no value is specified, it
defaults to C<EC2>.



=head2 Tags => ArrayRef[ECS_Tag]

The metadata that you apply to the task definition to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.

=back




=head2 TaskRoleArn => Str

The short name or full Amazon Resource Name (ARN) of the IAM role that
containers in this task can assume. All containers in this task are
granted the permissions that are specified in this role. For more
information, see IAM Roles for Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Volumes => ArrayRef[ECS_Volume]

A list of volume definitions in JSON format that containers in your
task may use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTaskDefinition in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

