# Generated from default/object.tt
package Paws::MediaConvert::MovSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has ClapAtom => (is => 'ro', isa => Str);
  has CslgAtom => (is => 'ro', isa => Str);
  has Mpeg2FourCCControl => (is => 'ro', isa => Str);
  has PaddingControl => (is => 'ro', isa => Str);
  has Reference => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CslgAtom' => 'cslgAtom',
                       'PaddingControl' => 'paddingControl',
                       'Reference' => 'reference',
                       'ClapAtom' => 'clapAtom',
                       'Mpeg2FourCCControl' => 'mpeg2FourCCControl'
                     },
  'types' => {
               'Reference' => {
                                'type' => 'Str'
                              },
               'PaddingControl' => {
                                     'type' => 'Str'
                                   },
               'CslgAtom' => {
                               'type' => 'Str'
                             },
               'ClapAtom' => {
                               'type' => 'Str'
                             },
               'Mpeg2FourCCControl' => {
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

Paws::MediaConvert::MovSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MovSettings object:

  $service_obj->Method(Att1 => { ClapAtom => $value, ..., Reference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MovSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ClapAtom

=head1 DESCRIPTION

Settings for MOV Container.

=head1 ATTRIBUTES


=head2 ClapAtom => Str

  When enabled, include 'clap' atom if appropriate for the video output
settings.


=head2 CslgAtom => Str

  When enabled, file composition times will start at zero, composition
times in the 'ctts' (composition time to sample) box for B-frames will
be negative, and a 'cslg' (composition shift least greatest) box will
be included per 14496-1 amendment 1. This improves compatibility with
Apple players and tools.


=head2 Mpeg2FourCCControl => Str

  When set to XDCAM, writes MPEG2 video streams into the QuickTime file
using XDCAM fourcc codes. This increases compatibility with Apple
editors and players, but may decrease compatibility with other players.
Only applicable when the video codec is MPEG2.


=head2 PaddingControl => Str

  If set to OMNEON, inserts Omneon-compatible padding


=head2 Reference => Str

  Always keep the default value (SELF_CONTAINED) for this setting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

