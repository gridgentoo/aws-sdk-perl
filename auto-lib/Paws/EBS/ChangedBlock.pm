package Paws::EBS::ChangedBlock;
  use Moose;
  has BlockIndex => (is => 'ro', isa => 'Int');
  has FirstBlockToken => (is => 'ro', isa => 'Str');
  has SecondBlockToken => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::ChangedBlock

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EBS::ChangedBlock object:

  $service_obj->Method(Att1 => { BlockIndex => $value, ..., SecondBlockToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EBS::ChangedBlock object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockIndex

=head1 DESCRIPTION

A block of data in an Amazon Elastic Block Store snapshot that is
different from another snapshot of the same volume/snapshot lineage.

=head1 ATTRIBUTES


=head2 BlockIndex => Int

  The block index.


=head2 FirstBlockToken => Str

  The block token for the block index of the C<FirstSnapshotId> specified
in the C<ListChangedBlocks> operation. This value is absent if the
first snapshot does not have the changed block that is on the second
snapshot.


=head2 SecondBlockToken => Str

  The block token for the block index of the C<SecondSnapshotId>
specified in the C<ListChangedBlocks> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EBS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

