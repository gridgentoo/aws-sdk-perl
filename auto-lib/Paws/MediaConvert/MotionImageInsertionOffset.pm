# Generated from default/object.tt
package Paws::MediaConvert::MotionImageInsertionOffset;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has ImageX => (is => 'ro', isa => Int);
  has ImageY => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageX' => {
                             'type' => 'Int'
                           },
               'ImageY' => {
                             'type' => 'Int'
                           }
             },
  'NameInRequest' => {
                       'ImageY' => 'imageY',
                       'ImageX' => 'imageX'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::MotionImageInsertionOffset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MotionImageInsertionOffset object:

  $service_obj->Method(Att1 => { ImageX => $value, ..., ImageY => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MotionImageInsertionOffset object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageX

=head1 DESCRIPTION

Specify the offset between the upper-left corner of the video frame and
the top left corner of the overlay.

=head1 ATTRIBUTES


=head2 ImageX => Int

  Set the distance, in pixels, between the overlay and the left edge of
the video frame.


=head2 ImageY => Int

  Set the distance, in pixels, between the overlay and the top edge of
the video frame.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

