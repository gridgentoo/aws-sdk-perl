# Generated from default/object.tt
package Paws::ECS::Deployment;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ECS::Types qw/ECS_NetworkConfiguration/;
  has CreatedAt => (is => 'ro', isa => Str);
  has DesiredCount => (is => 'ro', isa => Int);
  has Id => (is => 'ro', isa => Str);
  has LaunchType => (is => 'ro', isa => Str);
  has NetworkConfiguration => (is => 'ro', isa => ECS_NetworkConfiguration);
  has PendingCount => (is => 'ro', isa => Int);
  has PlatformVersion => (is => 'ro', isa => Str);
  has RunningCount => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has TaskDefinition => (is => 'ro', isa => Str);
  has UpdatedAt => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkConfiguration' => {
                                           'type' => 'ECS_NetworkConfiguration',
                                           'class' => 'Paws::ECS::NetworkConfiguration'
                                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'PendingCount' => {
                                   'type' => 'Int'
                                 },
               'Id' => {
                         'type' => 'Str'
                       },
               'RunningCount' => {
                                   'type' => 'Int'
                                 },
               'PlatformVersion' => {
                                      'type' => 'Str'
                                    },
               'DesiredCount' => {
                                   'type' => 'Int'
                                 },
               'LaunchType' => {
                                 'type' => 'Str'
                               },
               'TaskDefinition' => {
                                     'type' => 'Str'
                                   },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'NetworkConfiguration' => 'networkConfiguration',
                       'CreatedAt' => 'createdAt',
                       'UpdatedAt' => 'updatedAt',
                       'PendingCount' => 'pendingCount',
                       'PlatformVersion' => 'platformVersion',
                       'Id' => 'id',
                       'RunningCount' => 'runningCount',
                       'DesiredCount' => 'desiredCount',
                       'Status' => 'status',
                       'LaunchType' => 'launchType',
                       'TaskDefinition' => 'taskDefinition'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Deployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Deployment object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Deployment object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

The details of an Amazon ECS service deployment. This is used only when
a service uses the C<ECS> deployment controller type.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The Unix timestamp for when the service deployment was created.


=head2 DesiredCount => Int

  The most recent desired count of tasks that was specified for the
service to deploy or maintain.


=head2 Id => Str

  The ID of the deployment.


=head2 LaunchType => Str

  The launch type the tasks in the service are using. For more
information, see Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 NetworkConfiguration => ECS_NetworkConfiguration

  The VPC subnet and security group configuration for tasks that receive
their own elastic network interface by using the C<awsvpc> networking
mode.


=head2 PendingCount => Int

  The number of tasks in the deployment that are in the C<PENDING>
status.


=head2 PlatformVersion => Str

  The platform version on which your tasks in the service are running. A
platform version is only specified for tasks using the Fargate launch
type. If one is not specified, the C<LATEST> platform version is used
by default. For more information, see AWS Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 RunningCount => Int

  The number of tasks in the deployment that are in the C<RUNNING>
status.


=head2 Status => Str

  The status of the deployment. The following describes each state:

=over

=item PRIMARY

The most recent deployment of a service.

=item ACTIVE

A service deployment that still has running tasks, but are in the
process of being replaced with a new C<PRIMARY> deployment.

=item INACTIVE

A deployment that has been completely replaced.

=back



=head2 TaskDefinition => Str

  The most recent task definition that was specified for the tasks in the
service to use.


=head2 UpdatedAt => Str

  The Unix timestamp for when the service deployment was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

