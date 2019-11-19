# Generated from default/object.tt
package Paws::Batch::ContainerProperties;
  use Moo;
  use Types::Standard qw/Undef ArrayRef Str Int Bool/;
  use Paws::Batch::Types qw/Batch_Volume Batch_ResourceRequirement Batch_KeyValuePair Batch_Ulimit Batch_LinuxParameters Batch_MountPoint/;
  has Command => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Environment => (is => 'ro', isa => ArrayRef[Batch_KeyValuePair]);
  has Image => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has JobRoleArn => (is => 'ro', isa => Str);
  has LinuxParameters => (is => 'ro', isa => Batch_LinuxParameters);
  has Memory => (is => 'ro', isa => Int);
  has MountPoints => (is => 'ro', isa => ArrayRef[Batch_MountPoint]);
  has Privileged => (is => 'ro', isa => Bool);
  has ReadonlyRootFilesystem => (is => 'ro', isa => Bool);
  has ResourceRequirements => (is => 'ro', isa => ArrayRef[Batch_ResourceRequirement]);
  has Ulimits => (is => 'ro', isa => ArrayRef[Batch_Ulimit]);
  has User => (is => 'ro', isa => Str);
  has Vcpus => (is => 'ro', isa => Int);
  has Volumes => (is => 'ro', isa => ArrayRef[Batch_Volume]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Image' => {
                            'type' => 'Str'
                          },
               'ResourceRequirements' => {
                                           'class' => 'Paws::Batch::ResourceRequirement',
                                           'type' => 'ArrayRef[Batch_ResourceRequirement]'
                                         },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Privileged' => {
                                 'type' => 'Bool'
                               },
               'JobRoleArn' => {
                                 'type' => 'Str'
                               },
               'Command' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ReadonlyRootFilesystem' => {
                                             'type' => 'Bool'
                                           },
               'Environment' => {
                                  'type' => 'ArrayRef[Batch_KeyValuePair]',
                                  'class' => 'Paws::Batch::KeyValuePair'
                                },
               'Memory' => {
                             'type' => 'Int'
                           },
               'Volumes' => {
                              'class' => 'Paws::Batch::Volume',
                              'type' => 'ArrayRef[Batch_Volume]'
                            },
               'LinuxParameters' => {
                                      'class' => 'Paws::Batch::LinuxParameters',
                                      'type' => 'Batch_LinuxParameters'
                                    },
               'Ulimits' => {
                              'type' => 'ArrayRef[Batch_Ulimit]',
                              'class' => 'Paws::Batch::Ulimit'
                            },
               'MountPoints' => {
                                  'type' => 'ArrayRef[Batch_MountPoint]',
                                  'class' => 'Paws::Batch::MountPoint'
                                },
               'Vcpus' => {
                            'type' => 'Int'
                          },
               'User' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'LinuxParameters' => 'linuxParameters',
                       'Volumes' => 'volumes',
                       'Ulimits' => 'ulimits',
                       'MountPoints' => 'mountPoints',
                       'Vcpus' => 'vcpus',
                       'User' => 'user',
                       'Image' => 'image',
                       'Privileged' => 'privileged',
                       'ResourceRequirements' => 'resourceRequirements',
                       'InstanceType' => 'instanceType',
                       'JobRoleArn' => 'jobRoleArn',
                       'Command' => 'command',
                       'ReadonlyRootFilesystem' => 'readonlyRootFilesystem',
                       'Environment' => 'environment',
                       'Memory' => 'memory'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ContainerProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ContainerProperties object:

  $service_obj->Method(Att1 => { Command => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ContainerProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

Container properties are used in job definitions to describe the
container that is launched as part of a job.

=head1 ATTRIBUTES


=head2 Command => ArrayRef[Str|Undef]

  The command that is passed to the container. This parameter maps to
C<Cmd> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<COMMAND> parameter to docker run
(https://docs.docker.com/engine/reference/run/). For more information,
see https://docs.docker.com/engine/reference/builder/#cmd
(https://docs.docker.com/engine/reference/builder/#cmd).


=head2 Environment => ArrayRef[Batch_KeyValuePair]

  The environment variables to pass to a container. This parameter maps
to C<Env> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--env> option to docker run
(https://docs.docker.com/engine/reference/run/).

We do not recommend using plaintext environment variables for sensitive
information, such as credential data.

Environment variables must not start with C<AWS_BATCH>; this naming
convention is reserved for variables that are set by the AWS Batch
service.


=head2 Image => Str

  The image used to start a container. This string is passed directly to
the Docker daemon. Images in the Docker Hub registry are available by
default. Other repositories are specified with C<
I<repository-url>/I<image>:I<tag> >. Up to 255 letters (uppercase and
lowercase), numbers, hyphens, underscores, colons, periods, forward
slashes, and number signs are allowed. This parameter maps to C<Image>
in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<IMAGE> parameter of docker run
(https://docs.docker.com/engine/reference/run/).

=over

=item *

Images in Amazon ECR repositories use the full registry and repository
URI (for example,
C<012345678910.dkr.ecr.E<lt>region-nameE<gt>.amazonaws.com/E<lt>repository-nameE<gt>>).

=item *

Images in official repositories on Docker Hub use a single name (for
example, C<ubuntu> or C<mongo>).

=item *

Images in other repositories on Docker Hub are qualified with an
organization name (for example, C<amazon/amazon-ecs-agent>).

=item *

Images in other online repositories are qualified further by a domain
name (for example, C<quay.io/assemblyline/ubuntu>).

=back



=head2 InstanceType => Str

  The instance type to use for a multi-node parallel job. Currently all
node groups in a multi-node parallel job must use the same instance
type. This parameter is not valid for single-node container jobs.


=head2 JobRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that the container can
assume for AWS permissions.


=head2 LinuxParameters => Batch_LinuxParameters

  Linux-specific modifications that are applied to the container, such as
details for device mappings.


=head2 Memory => Int

  The hard limit (in MiB) of memory to present to the container. If your
container attempts to exceed the memory specified here, the container
is killed. This parameter maps to C<Memory> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--memory> option to docker run
(https://docs.docker.com/engine/reference/run/). You must specify at
least 4 MiB of memory for a job.

If you are trying to maximize your resource utilization by providing
your jobs as much memory as possible for a particular instance type,
see Memory Management
(https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html)
in the I<AWS Batch User Guide>.


=head2 MountPoints => ArrayRef[Batch_MountPoint]

  The mount points for data volumes in your container. This parameter
maps to C<Volumes> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--volume> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 Privileged => Bool

  When this parameter is true, the container is given elevated privileges
on the host container instance (similar to the C<root> user). This
parameter maps to C<Privileged> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--privileged> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 ReadonlyRootFilesystem => Bool

  When this parameter is true, the container is given read-only access to
its root file system. This parameter maps to C<ReadonlyRootfs> in the
Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--read-only> option to C<docker run>.


=head2 ResourceRequirements => ArrayRef[Batch_ResourceRequirement]

  The type and amount of a resource to assign to a container. Currently,
the only supported resource is C<GPU>.


=head2 Ulimits => ArrayRef[Batch_Ulimit]

  A list of C<ulimits> to set in the container. This parameter maps to
C<Ulimits> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--ulimit> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 User => Str

  The user name to use inside the container. This parameter maps to
C<User> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--user> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 Vcpus => Int

  The number of vCPUs reserved for the container. This parameter maps to
C<CpuShares> in the Create a container
(https://docs.docker.com/engine/api/v1.23/#create-a-container) section
of the Docker Remote API (https://docs.docker.com/engine/api/v1.23/)
and the C<--cpu-shares> option to docker run
(https://docs.docker.com/engine/reference/run/). Each vCPU is
equivalent to 1,024 CPU shares. You must specify at least one vCPU.


=head2 Volumes => ArrayRef[Batch_Volume]

  A list of data volumes used in a job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

