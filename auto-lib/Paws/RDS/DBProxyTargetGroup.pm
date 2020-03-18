package Paws::RDS::DBProxyTargetGroup;
  use Moose;
  has ConnectionPoolConfig => (is => 'ro', isa => 'Paws::RDS::ConnectionPoolConfigurationInfo');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DBProxyName => (is => 'ro', isa => 'Str');
  has IsDefault => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has TargetGroupArn => (is => 'ro', isa => 'Str');
  has TargetGroupName => (is => 'ro', isa => 'Str');
  has UpdatedDate => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBProxyTargetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBProxyTargetGroup object:

  $service_obj->Method(Att1 => { ConnectionPoolConfig => $value, ..., UpdatedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBProxyTargetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionPoolConfig

=head1 DESCRIPTION

This is prerelease documentation for the RDS Database Proxy feature in
preview release. It is subject to change.

Represents a set of RDS DB instances, Aurora DB clusters, or both that
a proxy can connect to. Currently, each target group is associated with
exactly one RDS DB instance or Aurora DB cluster.

This data type is used as a response element in the
C<DescribeDBProxyTargetGroups> action.

=head1 ATTRIBUTES


=head2 ConnectionPoolConfig => L<Paws::RDS::ConnectionPoolConfigurationInfo>

  The settings that determine the size and behavior of the connection
pool for the target group.


=head2 CreatedDate => Str

  The date and time when the target group was first created.


=head2 DBProxyName => Str

  The identifier for the RDS proxy associated with this target group.


=head2 IsDefault => Bool

  Whether this target group is the first one used for connection requests
by the associated proxy. Because each proxy is currently associated
with a single target group, currently this setting is always C<true>.


=head2 Status => Str

  The current status of this target group. A status of C<available> means
the target group is correctly associated with a database. Other values
indicate that you must wait for the target group to be ready, or take
some action to resolve an issue.


=head2 TargetGroupArn => Str

  The Amazon Resource Name (ARN) representing the target group.


=head2 TargetGroupName => Str

  The identifier for the target group. This name must be unique for all
target groups owned by your AWS account in the specified AWS Region.


=head2 UpdatedDate => Str

  The date and time when the target group was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

