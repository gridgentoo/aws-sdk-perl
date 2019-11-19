# Generated from callargs_class.tt

package Paws::DocDB::DescribeDBClusterSnapshotAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw//;
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDBClusterSnapshotAttributes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::DescribeDBClusterSnapshotAttributesResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeDBClusterSnapshotAttributesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotIdentifier' => {
                                                  'type' => 'Str'
                                                }
             },
  'IsRequired' => {
                    'DBClusterSnapshotIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeDBClusterSnapshotAttributes - Arguments for method DescribeDBClusterSnapshotAttributes on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterSnapshotAttributes on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeDBClusterSnapshotAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterSnapshotAttributes.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DescribeDBClusterSnapshotAttributesResult =
      $rds->DescribeDBClusterSnapshotAttributes(
      DBClusterSnapshotIdentifier => 'MyString',

      );

    # Results:
    my $DBClusterSnapshotAttributesResult =
      $DescribeDBClusterSnapshotAttributesResult
      ->DBClusterSnapshotAttributesResult;

   # Returns a L<Paws::DocDB::DescribeDBClusterSnapshotAttributesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterSnapshotAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterSnapshotIdentifier => Str

The identifier for the DB cluster snapshot to describe the attributes
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterSnapshotAttributes in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

