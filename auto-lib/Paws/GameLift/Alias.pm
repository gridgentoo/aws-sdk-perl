package Paws::GameLift::Alias;
  use Moose;
  has AliasArn => (is => 'ro', isa => 'Str');
  has AliasId => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoutingStrategy => (is => 'ro', isa => 'Paws::GameLift::RoutingStrategy');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Alias

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Alias object:

  $service_obj->Method(Att1 => { AliasArn => $value, ..., RoutingStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Alias object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasArn

=head1 DESCRIPTION

Properties that describe an alias resource.

=over

=item *

CreateAlias

=item *

ListAliases

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back


=head1 ATTRIBUTES


=head2 AliasArn => Str

  Amazon Resource Name (ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html))
that is assigned to a GameLift alias resource and uniquely identifies
it. ARNs are unique across all Regions.. In a GameLift alias ARN, the
resource ID matches the alias ID value.


=head2 AliasId => Str

  A unique identifier for an alias. Alias IDs are unique within a Region.


=head2 CreationTime => Str

  A time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 Description => Str

  A human-readable description of an alias.


=head2 LastUpdatedTime => Str

  The time that this data object was last modified. Format is a number
expressed in Unix time as milliseconds (for example "1469498468.057").


=head2 Name => Str

  A descriptive label that is associated with an alias. Alias names do
not need to be unique.


=head2 RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

  The routing configuration, including routing type and fleet target, for
the alias.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

