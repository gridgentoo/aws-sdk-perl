# Generated from default/object.tt
package Paws::MediaConvert::SccDestinationSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has Framerate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Framerate' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Framerate' => 'framerate'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::SccDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::SccDestinationSettings object:

  $service_obj->Method(Att1 => { Framerate => $value, ..., Framerate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::SccDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Framerate

=head1 DESCRIPTION

Settings for SCC caption output.

=head1 ATTRIBUTES


=head2 Framerate => Str

  Set Framerate (SccDestinationFramerate) to make sure that the captions
and the video are synchronized in the output. Specify a frame rate that
matches the frame rate of the associated video. If the video frame rate
is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if
the video has video_insertion=true and drop_frame_timecode=true;
otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

