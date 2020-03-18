package Paws::MediaConvert::DashIsoGroupSettings;
  use Moose;
  has AdditionalManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::DashAdditionalManifest]', request_name => 'additionalManifests', traits => ['NameInRequest']);
  has BaseUrl => (is => 'ro', isa => 'Str', request_name => 'baseUrl', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has DestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::DestinationSettings', request_name => 'destinationSettings', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaConvert::DashIsoEncryptionSettings', request_name => 'encryption', traits => ['NameInRequest']);
  has FragmentLength => (is => 'ro', isa => 'Int', request_name => 'fragmentLength', traits => ['NameInRequest']);
  has HbbtvCompliance => (is => 'ro', isa => 'Str', request_name => 'hbbtvCompliance', traits => ['NameInRequest']);
  has MinBufferTime => (is => 'ro', isa => 'Int', request_name => 'minBufferTime', traits => ['NameInRequest']);
  has MpdProfile => (is => 'ro', isa => 'Str', request_name => 'mpdProfile', traits => ['NameInRequest']);
  has SegmentControl => (is => 'ro', isa => 'Str', request_name => 'segmentControl', traits => ['NameInRequest']);
  has SegmentLength => (is => 'ro', isa => 'Int', request_name => 'segmentLength', traits => ['NameInRequest']);
  has WriteSegmentTimelineInRepresentation => (is => 'ro', isa => 'Str', request_name => 'writeSegmentTimelineInRepresentation', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DashIsoGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DashIsoGroupSettings object:

  $service_obj->Method(Att1 => { AdditionalManifests => $value, ..., WriteSegmentTimelineInRepresentation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DashIsoGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalManifests

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.

=head1 ATTRIBUTES


=head2 AdditionalManifests => ArrayRef[L<Paws::MediaConvert::DashAdditionalManifest>]

  By default, the service creates one .mpd DASH manifest for each DASH
ISO output group in your job. This default manifest references every
output in the output group. To create additional DASH manifests that
reference a subset of the outputs in the output group, specify a list
of them here.


=head2 BaseUrl => Str

  A partial URI prefix that will be put in the manifest (.mpd) file at
the top level BaseURL element. Can be used if streams are delivered
from a different URL than the manifest file.


=head2 Destination => Str

  Use Destination (Destination) to specify the S3 output location and the
output filename base. Destination accepts format identifiers. If you do
not specify the base filename in the URI, the service will use the
filename of the input file. If your job has multiple inputs, the
service uses the filename of the first input file.


=head2 DestinationSettings => L<Paws::MediaConvert::DestinationSettings>

  Settings associated with the destination. Will vary based on the type
of destination


=head2 Encryption => L<Paws::MediaConvert::DashIsoEncryptionSettings>

  DRM settings.


=head2 FragmentLength => Int

  Length of fragments to generate (in seconds). Fragment length must be
compatible with GOP size and Framerate. Note that fragments will end on
the next keyframe after this number of seconds, so actual fragment
length may be longer. When Emit Single File is checked, the
fragmentation is internal to a single output file and it does not cause
the creation of many output files as in other output types.


=head2 HbbtvCompliance => Str

  Supports HbbTV specification as indicated


=head2 MinBufferTime => Int

  Minimum time of initially buffered media that is needed to ensure
smooth playout.


=head2 MpdProfile => Str

  Specify whether your DASH profile is on-demand or main. When you choose
Main profile (MAIN_PROFILE), the service signals
urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When
you choose On-demand (ON_DEMAND_PROFILE), the service signals
urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you
choose On-demand, you must also set the output group setting Segment
control (SegmentControl) to Single file (SINGLE_FILE).


=head2 SegmentControl => Str

  When set to SINGLE_FILE, a single output file is generated, which is
internally segmented using the Fragment Length and Segment Length. When
set to SEGMENTED_FILES, separate segment files will be created.


=head2 SegmentLength => Int

  Length of mpd segments to create (in seconds). Note that segments will
end on the next keyframe after this number of seconds, so actual
segment length may be longer. When Emit Single File is checked, the
segmentation is internal to a single output file and it does not cause
the creation of many output files as in other output types.


=head2 WriteSegmentTimelineInRepresentation => Str

  If you get an HTTP error in the 400 range when you play back your DASH
output, enable this setting and run your transcoding job again. When
you enable this setting, the service writes precise segment durations
in the DASH manifest. The segment duration information appears inside
the SegmentTimeline element, inside SegmentTemplate at the
Representation level. When you don't enable this setting, the service
writes approximate segment durations in your DASH manifest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

