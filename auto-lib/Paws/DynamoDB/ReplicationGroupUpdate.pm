package Paws::DynamoDB::ReplicationGroupUpdate;
  use Moose;
  has Create => (is => 'ro', isa => 'Paws::DynamoDB::CreateReplicationGroupMemberAction');
  has Delete => (is => 'ro', isa => 'Paws::DynamoDB::DeleteReplicationGroupMemberAction');
  has Update => (is => 'ro', isa => 'Paws::DynamoDB::UpdateReplicationGroupMemberAction');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicationGroupUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicationGroupUpdate object:

  $service_obj->Method(Att1 => { Create => $value, ..., Update => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicationGroupUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Create

=head1 DESCRIPTION

Represents one of the following:

=over

=item *

A new replica to be added to an existing regional table or global
table. This request invokes the C<CreateTableReplica> action in the
destination Region.

=item *

New parameters for an existing replica. This request invokes the
C<UpdateTable> action in the destination Region.

=item *

An existing replica to be deleted. The request invokes the
C<DeleteTableReplica> action in the destination Region, deleting the
replica and all if its items in the destination Region.

=back


=head1 ATTRIBUTES


=head2 Create => L<Paws::DynamoDB::CreateReplicationGroupMemberAction>

  The parameters required for creating a replica for the table.


=head2 Delete => L<Paws::DynamoDB::DeleteReplicationGroupMemberAction>

  The parameters required for deleting a replica for the table.


=head2 Update => L<Paws::DynamoDB::UpdateReplicationGroupMemberAction>

  The parameters required for updating a replica for the table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

