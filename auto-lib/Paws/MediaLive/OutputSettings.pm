# Generated from default/object.tt
package Paws::MediaLive::OutputSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_FrameCaptureOutputSettings MediaLive_MsSmoothOutputSettings MediaLive_MediaPackageOutputSettings MediaLive_ArchiveOutputSettings MediaLive_UdpOutputSettings MediaLive_RtmpOutputSettings MediaLive_HlsOutputSettings/;
  has ArchiveOutputSettings => (is => 'ro', isa => MediaLive_ArchiveOutputSettings);
  has FrameCaptureOutputSettings => (is => 'ro', isa => MediaLive_FrameCaptureOutputSettings);
  has HlsOutputSettings => (is => 'ro', isa => MediaLive_HlsOutputSettings);
  has MediaPackageOutputSettings => (is => 'ro', isa => MediaLive_MediaPackageOutputSettings);
  has MsSmoothOutputSettings => (is => 'ro', isa => MediaLive_MsSmoothOutputSettings);
  has RtmpOutputSettings => (is => 'ro', isa => MediaLive_RtmpOutputSettings);
  has UdpOutputSettings => (is => 'ro', isa => MediaLive_UdpOutputSettings);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MsSmoothOutputSettings' => 'msSmoothOutputSettings',
                       'UdpOutputSettings' => 'udpOutputSettings',
                       'MediaPackageOutputSettings' => 'mediaPackageOutputSettings',
                       'ArchiveOutputSettings' => 'archiveOutputSettings',
                       'HlsOutputSettings' => 'hlsOutputSettings',
                       'FrameCaptureOutputSettings' => 'frameCaptureOutputSettings',
                       'RtmpOutputSettings' => 'rtmpOutputSettings'
                     },
  'types' => {
               'MsSmoothOutputSettings' => {
                                             'type' => 'MediaLive_MsSmoothOutputSettings',
                                             'class' => 'Paws::MediaLive::MsSmoothOutputSettings'
                                           },
               'UdpOutputSettings' => {
                                        'class' => 'Paws::MediaLive::UdpOutputSettings',
                                        'type' => 'MediaLive_UdpOutputSettings'
                                      },
               'MediaPackageOutputSettings' => {
                                                 'class' => 'Paws::MediaLive::MediaPackageOutputSettings',
                                                 'type' => 'MediaLive_MediaPackageOutputSettings'
                                               },
               'HlsOutputSettings' => {
                                        'type' => 'MediaLive_HlsOutputSettings',
                                        'class' => 'Paws::MediaLive::HlsOutputSettings'
                                      },
               'ArchiveOutputSettings' => {
                                            'type' => 'MediaLive_ArchiveOutputSettings',
                                            'class' => 'Paws::MediaLive::ArchiveOutputSettings'
                                          },
               'RtmpOutputSettings' => {
                                         'type' => 'MediaLive_RtmpOutputSettings',
                                         'class' => 'Paws::MediaLive::RtmpOutputSettings'
                                       },
               'FrameCaptureOutputSettings' => {
                                                 'type' => 'MediaLive_FrameCaptureOutputSettings',
                                                 'class' => 'Paws::MediaLive::FrameCaptureOutputSettings'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::OutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::OutputSettings object:

  $service_obj->Method(Att1 => { ArchiveOutputSettings => $value, ..., UdpOutputSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::OutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchiveOutputSettings

=head1 DESCRIPTION

Output Settings

=head1 ATTRIBUTES


=head2 ArchiveOutputSettings => MediaLive_ArchiveOutputSettings

  


=head2 FrameCaptureOutputSettings => MediaLive_FrameCaptureOutputSettings

  


=head2 HlsOutputSettings => MediaLive_HlsOutputSettings

  


=head2 MediaPackageOutputSettings => MediaLive_MediaPackageOutputSettings

  


=head2 MsSmoothOutputSettings => MediaLive_MsSmoothOutputSettings

  


=head2 RtmpOutputSettings => MediaLive_RtmpOutputSettings

  


=head2 UdpOutputSettings => MediaLive_UdpOutputSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

