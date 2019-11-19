# Generated from default/object.tt
package Paws::MediaPackageVod::DashEncryption;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_SpekeKeyProvider/;
  has SpekeKeyProvider => (is => 'ro', isa => MediaPackageVod_SpekeKeyProvider, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SpekeKeyProvider' => {
                                       'class' => 'Paws::MediaPackageVod::SpekeKeyProvider',
                                       'type' => 'MediaPackageVod_SpekeKeyProvider'
                                     }
             },
  'IsRequired' => {
                    'SpekeKeyProvider' => 1
                  },
  'NameInRequest' => {
                       'SpekeKeyProvider' => 'spekeKeyProvider'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DashEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::DashEncryption object:

  $service_obj->Method(Att1 => { SpekeKeyProvider => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::DashEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->SpekeKeyProvider

=head1 DESCRIPTION

A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpekeKeyProvider => MediaPackageVod_SpekeKeyProvider

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

