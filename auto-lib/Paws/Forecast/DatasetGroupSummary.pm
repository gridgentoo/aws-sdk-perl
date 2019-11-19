package Paws::Forecast::DatasetGroupSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetGroupArn => (is => 'ro', isa => 'Str');
  has DatasetGroupName => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DatasetGroupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::DatasetGroupSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., LastModificationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::DatasetGroupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of the dataset group properties used in the
ListDatasetGroups operation. To get the complete set of properties,
call the DescribeDatasetGroup operation, and provide the listed
C<DatasetGroupArn>.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When the datase group was created.


=head2 DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group.


=head2 DatasetGroupName => Str

  The name of the dataset group.


=head2 LastModificationTime => Str

  When the dataset group was created or last updated from a call to the
UpdateDatasetGroup operation. While the dataset group is being updated,
C<LastModificationTime> is the current query time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
