# Generated from default/object.tt
package Paws::MediaLive::InputSwitchScheduleActionSettings;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw/MediaLive_InputClippingSettings/;
  has InputAttachmentNameReference => (is => 'ro', isa => Str, required => 1);
  has InputClippingSettings => (is => 'ro', isa => MediaLive_InputClippingSettings);
  has UrlPath => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InputAttachmentNameReference' => 'inputAttachmentNameReference',
                       'InputClippingSettings' => 'inputClippingSettings',
                       'UrlPath' => 'urlPath'
                     },
  'IsRequired' => {
                    'InputAttachmentNameReference' => 1
                  },
  'types' => {
               'UrlPath' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'InputAttachmentNameReference' => {
                                                   'type' => 'Str'
                                                 },
               'InputClippingSettings' => {
                                            'type' => 'MediaLive_InputClippingSettings',
                                            'class' => 'Paws::MediaLive::InputClippingSettings'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSwitchScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSwitchScheduleActionSettings object:

  $service_obj->Method(Att1 => { InputAttachmentNameReference => $value, ..., UrlPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSwitchScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->InputAttachmentNameReference

=head1 DESCRIPTION

Settings for the "switch input" action: to switch from ingesting one
input to ingesting another input.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputAttachmentNameReference => Str

  The name of the input attachment (not the name of the input!) to switch
to. The name is specified in the channel configuration.


=head2 InputClippingSettings => MediaLive_InputClippingSettings

  Settings to let you create a clip of the file input, in order to set up
the input to ingest only a portion of the file.


=head2 UrlPath => ArrayRef[Str|Undef]

  The value for the variable portion of the URL for the dynamic input,
for this instance of the input. Each time you use the same dynamic
input in an input switch action, you can provide a different value, in
order to connect the input to a different content source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

