# Generated from json/callargs_class.tt

package Paws::Glue::GetTable;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has CatalogId => (is => 'ro', isa => Str, predicate => 1);
  has DatabaseName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetTable');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetTableResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DatabaseName' => 1,
                    'Name' => 1
                  },
  'types' => {
               'CatalogId' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTable - Arguments for method GetTable on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTable on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTable.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetTableResponse = $glue->GetTable(
      DatabaseName => 'MyNameString',
      Name         => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $Table = $GetTableResponse->Table;

    # Returns a L<Paws::Glue::GetTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetTable>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the table resides. If none is
provided, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database in the catalog in which the table resides. For
Hive compatibility, this name is entirely lowercase.



=head2 B<REQUIRED> Name => Str

The name of the table for which to retrieve the definition. For Hive
compatibility, this name is entirely lowercase.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTable in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

