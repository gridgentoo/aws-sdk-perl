package Paws::SSM::ResourceDataSyncSource;
  use Moose;
  has AwsOrganizationsSource => (is => 'ro', isa => 'Paws::SSM::ResourceDataSyncAwsOrganizationsSource');
  has IncludeFutureRegions => (is => 'ro', isa => 'Bool');
  has SourceRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SourceType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResourceDataSyncSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResourceDataSyncSource object:

  $service_obj->Method(Att1 => { AwsOrganizationsSource => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResourceDataSyncSource object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsOrganizationsSource

=head1 DESCRIPTION

Information about the source of the data included in the resource data
sync.

=head1 ATTRIBUTES


=head2 AwsOrganizationsSource => L<Paws::SSM::ResourceDataSyncAwsOrganizationsSource>

  Information about the AwsOrganizationsSource resource data sync source.
A sync source of this type can synchronize data from AWS Organizations.


=head2 IncludeFutureRegions => Bool

  Whether to automatically synchronize and aggregate data from new AWS
Regions when those Regions come online.


=head2 B<REQUIRED> SourceRegions => ArrayRef[Str|Undef]

  The C<SyncSource> AWS Regions included in the resource data sync.


=head2 B<REQUIRED> SourceType => Str

  The type of data source for the resource data sync. C<SourceType> is
either C<AwsOrganizations> (if an organization is present in AWS
Organizations) or C<singleAccountMultiRegions>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

