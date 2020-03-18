package Paws::Quicksight::ColumnSchema;
  use Moose;
  has DataType => (is => 'ro', isa => 'Str');
  has GeographicRole => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ColumnSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::ColumnSchema object:

  $service_obj->Method(Att1 => { DataType => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::ColumnSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->DataType

=head1 DESCRIPTION

The column schema.

=head1 ATTRIBUTES


=head2 DataType => Str

  The data type of the column schema.


=head2 GeographicRole => Str

  The geographic role of the column schema.


=head2 Name => Str

  The name of the column schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

