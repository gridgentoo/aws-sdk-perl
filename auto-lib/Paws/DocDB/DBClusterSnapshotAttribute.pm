package Paws::DocDB::DBClusterSnapshotAttribute;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AttributeValue', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterSnapshotAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBClusterSnapshotAttribute object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., AttributeValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBClusterSnapshotAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Contains the name and values of a manual cluster snapshot attribute.

Manual cluster snapshot attributes are used to authorize other AWS
accounts to restore a manual cluster snapshot.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The name of the manual cluster snapshot attribute.

The attribute named C<restore> refers to the list of AWS accounts that
have permission to copy or restore the manual cluster snapshot.


=head2 AttributeValues => ArrayRef[Str|Undef]

  The values for the manual cluster snapshot attribute.

If the C<AttributeName> field is set to C<restore>, then this element
returns a list of IDs of the AWS accounts that are authorized to copy
or restore the manual cluster snapshot. If a value of C<all> is in the
list, then the manual cluster snapshot is public and available for any
AWS account to copy or restore.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

