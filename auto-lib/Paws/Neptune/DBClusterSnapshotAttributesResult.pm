# Generated from default/object.tt
package Paws::Neptune::DBClusterSnapshotAttributesResult;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Neptune::Types qw/Neptune_DBClusterSnapshotAttribute/;
  has DBClusterSnapshotAttributes => (is => 'ro', isa => ArrayRef[Neptune_DBClusterSnapshotAttribute]);
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotAttributes' => {
                                                  'class' => 'Paws::Neptune::DBClusterSnapshotAttribute',
                                                  'type' => 'ArrayRef[Neptune_DBClusterSnapshotAttribute]'
                                                },
               'DBClusterSnapshotIdentifier' => {
                                                  'type' => 'Str'
                                                }
             },
  'NameInRequest' => {
                       'DBClusterSnapshotAttributes' => 'DBClusterSnapshotAttribute'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBClusterSnapshotAttributesResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::DBClusterSnapshotAttributesResult object:

  $service_obj->Method(Att1 => { DBClusterSnapshotAttributes => $value, ..., DBClusterSnapshotIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::DBClusterSnapshotAttributesResult object:

  $result = $service_obj->Method(...);
  $result->Att1->DBClusterSnapshotAttributes

=head1 DESCRIPTION

Contains the results of a successful call to the
DescribeDBClusterSnapshotAttributes API action.

Manual DB cluster snapshot attributes are used to authorize other AWS
accounts to copy or restore a manual DB cluster snapshot. For more
information, see the ModifyDBClusterSnapshotAttribute API action.

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributes => ArrayRef[Neptune_DBClusterSnapshotAttribute]

  The list of attributes and values for the manual DB cluster snapshot.


=head2 DBClusterSnapshotIdentifier => Str

  The identifier of the manual DB cluster snapshot that the attributes
apply to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

