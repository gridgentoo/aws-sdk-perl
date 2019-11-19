# Generated from default/object.tt
package Paws::MediaPackage::DashEncryption;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaPackage::Types qw/MediaPackage_SpekeKeyProvider/;
  has KeyRotationIntervalSeconds => (is => 'ro', isa => Int);
  has SpekeKeyProvider => (is => 'ro', isa => MediaPackage_SpekeKeyProvider, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SpekeKeyProvider' => 1
                  },
  'NameInRequest' => {
                       'SpekeKeyProvider' => 'spekeKeyProvider',
                       'KeyRotationIntervalSeconds' => 'keyRotationIntervalSeconds'
                     },
  'types' => {
               'SpekeKeyProvider' => {
                                       'class' => 'Paws::MediaPackage::SpekeKeyProvider',
                                       'type' => 'MediaPackage_SpekeKeyProvider'
                                     },
               'KeyRotationIntervalSeconds' => {
                                                 'type' => 'Int'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DashEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::DashEncryption object:

  $service_obj->Method(Att1 => { KeyRotationIntervalSeconds => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::DashEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyRotationIntervalSeconds

=head1 DESCRIPTION

A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.

=head1 ATTRIBUTES


=head2 KeyRotationIntervalSeconds => Int

  Time (in seconds) between each encryption key rotation.


=head2 B<REQUIRED> SpekeKeyProvider => MediaPackage_SpekeKeyProvider

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

