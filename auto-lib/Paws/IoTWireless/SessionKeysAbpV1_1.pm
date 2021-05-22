# Generated by default/object.tt
package Paws::IoTWireless::SessionKeysAbpV1_1;
  use Moose;
  has AppSKey => (is => 'ro', isa => 'Str');
  has FNwkSIntKey => (is => 'ro', isa => 'Str');
  has NwkSEncKey => (is => 'ro', isa => 'Str');
  has SNwkSIntKey => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::SessionKeysAbpV1_1

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTWireless::SessionKeysAbpV1_1 object:

  $service_obj->Method(Att1 => { AppSKey => $value, ..., SNwkSIntKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTWireless::SessionKeysAbpV1_1 object:

  $result = $service_obj->Method(...);
  $result->Att1->AppSKey

=head1 DESCRIPTION

Session keys for ABP v1.1

=head1 ATTRIBUTES


=head2 AppSKey => Str

The AppSKey value.


=head2 FNwkSIntKey => Str

The FNwkSIntKey value.


=head2 NwkSEncKey => Str

The NwkSEncKey value.


=head2 SNwkSIntKey => Str

The SNwkSIntKey value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

