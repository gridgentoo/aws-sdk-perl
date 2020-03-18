package Paws::Kendra::DataSourceToIndexFieldMapping;
  use Moose;
  has DataSourceFieldName => (is => 'ro', isa => 'Str', required => 1);
  has DateFieldFormat => (is => 'ro', isa => 'Str');
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DataSourceToIndexFieldMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DataSourceToIndexFieldMapping object:

  $service_obj->Method(Att1 => { DataSourceFieldName => $value, ..., IndexFieldName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DataSourceToIndexFieldMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceFieldName

=head1 DESCRIPTION

Maps a column or attribute in the data source to an index field. You
must first create the fields in the index using the UpdateIndex
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceFieldName => Str

  The name of the column or attribute in the data source.


=head2 DateFieldFormat => Str

  The type of data stored in the column or attribute.


=head2 B<REQUIRED> IndexFieldName => Str

  The name of the field in the index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

