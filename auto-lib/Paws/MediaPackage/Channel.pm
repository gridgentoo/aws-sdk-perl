# Generated from default/object.tt
package Paws::MediaPackage::Channel;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_HlsIngest MediaPackage_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has HlsIngest => (is => 'ro', isa => MediaPackage_HlsIngest);
  has Id => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaPackage_Tags);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'MediaPackage_Tags',
                           'class' => 'Paws::MediaPackage::Tags'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'HlsIngest' => {
                                'type' => 'MediaPackage_HlsIngest',
                                'class' => 'Paws::MediaPackage::HlsIngest'
                              },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'Description' => 'description',
                       'HlsIngest' => 'hlsIngest'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::Channel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::Channel object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::Channel object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A Channel resource configuration.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) assigned to the Channel.


=head2 Description => Str

  A short text description of the Channel.


=head2 HlsIngest => MediaPackage_HlsIngest

  


=head2 Id => Str

  The ID of the Channel.


=head2 Tags => MediaPackage_Tags

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

