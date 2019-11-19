# Generated from default/object.tt
package Paws::SESv2::DeliveryOptions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has SendingPoolName => (is => 'ro', isa => Str);
  has TlsPolicy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TlsPolicy' => {
                                'type' => 'Str'
                              },
               'SendingPoolName' => {
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

Paws::SESv2::DeliveryOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::DeliveryOptions object:

  $service_obj->Method(Att1 => { SendingPoolName => $value, ..., TlsPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::DeliveryOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->SendingPoolName

=head1 DESCRIPTION

Used to associate a configuration set with a dedicated IP pool.

=head1 ATTRIBUTES


=head2 SendingPoolName => Str

  The name of the dedicated IP pool that you want to associate with the
configuration set.


=head2 TlsPolicy => Str

  Specifies whether messages that use the configuration set are required
to use Transport Layer Security (TLS). If the value is C<Require>,
messages are only delivered if a TLS connection can be established. If
the value is C<Optional>, messages can be delivered in plain text if a
TLS connection can't be established.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

