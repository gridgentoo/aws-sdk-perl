package Paws::MediaPackageVod::DashManifest;
  use Moose;
  has ManifestLayout => (is => 'ro', isa => 'Str', request_name => 'manifestLayout', traits => ['NameInRequest']);
  has ManifestName => (is => 'ro', isa => 'Str', request_name => 'manifestName', traits => ['NameInRequest']);
  has MinBufferTimeSeconds => (is => 'ro', isa => 'Int', request_name => 'minBufferTimeSeconds', traits => ['NameInRequest']);
  has Profile => (is => 'ro', isa => 'Str', request_name => 'profile', traits => ['NameInRequest']);
  has StreamSelection => (is => 'ro', isa => 'Paws::MediaPackageVod::StreamSelection', request_name => 'streamSelection', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DashManifest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::DashManifest object:

  $service_obj->Method(Att1 => { ManifestLayout => $value, ..., StreamSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::DashManifest object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestLayout

=head1 DESCRIPTION

A DASH manifest configuration.

=head1 ATTRIBUTES


=head2 ManifestLayout => Str

  Determines the position of some tags in the Media Presentation
Description (MPD). When set to FULL, elements like SegmentTemplate and
ContentProtection are included in each Representation. When set to
COMPACT, duplicate elements are combined and presented at the
AdaptationSet level.


=head2 ManifestName => Str

  An optional string to include in the name of the manifest.


=head2 MinBufferTimeSeconds => Int

  Minimum duration (in seconds) that a player will buffer media before
starting the presentation.


=head2 Profile => Str

  The Dynamic Adaptive Streaming over HTTP (DASH) profile type. When set
to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.


=head2 StreamSelection => L<Paws::MediaPackageVod::StreamSelection>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

