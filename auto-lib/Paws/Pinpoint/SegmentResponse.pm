package Paws::Pinpoint::SegmentResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'Paws::Pinpoint::SegmentDimensions');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ImportDefinition => (is => 'ro', isa => 'Paws::Pinpoint::SegmentImportResource');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SegmentGroups => (is => 'ro', isa => 'Paws::Pinpoint::SegmentGroupList');
  has SegmentType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about the configuration, dimension, and other
settings for a segment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that the segment is
associated with.


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) of the segment.


=head2 B<REQUIRED> CreationDate => Str

  The date and time when the segment was created.


=head2 Dimensions => L<Paws::Pinpoint::SegmentDimensions>

  The dimension settings for the segment.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the segment.


=head2 ImportDefinition => L<Paws::Pinpoint::SegmentImportResource>

  The settings for the import job that's associated with the segment.


=head2 LastModifiedDate => Str

  The date and time when the segment was last modified.


=head2 Name => Str

  The name of the segment.


=head2 SegmentGroups => L<Paws::Pinpoint::SegmentGroupList>

  A list of one or more segment groups that apply to the segment. Each
segment group consists of zero or more base segments and the dimensions
that are applied to those base segments.


=head2 B<REQUIRED> SegmentType => Str

  The segment type. Valid values are:

=over

=item *

DIMENSIONAL - A dynamic segment, which is a segment that uses selection
criteria that you specify and is based on endpoint data that's reported
by your app. Dynamic segments can change over time.

=item *

IMPORT - A static segment, which is a segment that uses selection
criteria that you specify and is based on endpoint definitions that you
import from a file. Imported segments are static; they don't change
over time.

=back



=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that identifies the tags that
are associated with the segment. Each tag consists of a required tag
key and an associated tag value.


=head2 Version => Int

  The version number of the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

