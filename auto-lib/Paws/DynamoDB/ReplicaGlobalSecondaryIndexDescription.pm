package Paws::DynamoDB::ReplicaGlobalSecondaryIndexDescription;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str');
  has ProvisionedThroughputOverride => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughputOverride');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicaGlobalSecondaryIndexDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicaGlobalSecondaryIndexDescription object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., ProvisionedThroughputOverride => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicaGlobalSecondaryIndexDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the properties of a replica global secondary index.

=head1 ATTRIBUTES


=head2 IndexName => Str

  The name of the global secondary index.


=head2 ProvisionedThroughputOverride => L<Paws::DynamoDB::ProvisionedThroughputOverride>

  If not described, uses the source table GSI's read capacity settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

