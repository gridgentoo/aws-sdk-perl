# Generated from default/object.tt
package Paws::MediaConvert::FileGroupSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_DestinationSettings/;
  has Destination => (is => 'ro', isa => Str);
  has DestinationSettings => (is => 'ro', isa => MediaConvert_DestinationSettings);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Destination' => 'destination',
                       'DestinationSettings' => 'destinationSettings'
                     },
  'types' => {
               'Destination' => {
                                  'type' => 'Str'
                                },
               'DestinationSettings' => {
                                          'type' => 'MediaConvert_DestinationSettings',
                                          'class' => 'Paws::MediaConvert::DestinationSettings'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::FileGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::FileGroupSettings object:

  $service_obj->Method(Att1 => { Destination => $value, ..., DestinationSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::FileGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to FILE_GROUP_SETTINGS.

=head1 ATTRIBUTES


=head2 Destination => Str

  Use Destination (Destination) to specify the S3 output location and the
output filename base. Destination accepts format identifiers. If you do
not specify the base filename in the URI, the service will use the
filename of the input file. If your job has multiple inputs, the
service uses the filename of the first input file.


=head2 DestinationSettings => MediaConvert_DestinationSettings

  Settings associated with the destination. Will vary based on the type
of destination



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

