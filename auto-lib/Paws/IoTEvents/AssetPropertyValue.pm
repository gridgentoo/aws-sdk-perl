# Generated by default/object.tt
package Paws::IoTEvents::AssetPropertyValue;
  use Moose;
  has Quality => (is => 'ro', isa => 'Str', request_name => 'quality', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Paws::IoTEvents::AssetPropertyTimestamp', request_name => 'timestamp', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Paws::IoTEvents::AssetPropertyVariant', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::AssetPropertyValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::AssetPropertyValue object:

  $service_obj->Method(Att1 => { Quality => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::AssetPropertyValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Quality

=head1 DESCRIPTION

A structure that contains value information. For more information, see
AssetPropertyValue
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html)
in the I<AWS IoT SiteWise API Reference>.

You must use expressions for all parameters in C<AssetPropertyValue>.
The expressions accept literals, operators, functions, references, and
substitution templates.

B<Examples>

=over

=item *

For literal values, the expressions must contain single quotes. For
example, the value for the C<quality> parameter can be C<'GOOD'>.

=item *

For references, you must specify either variables or input values. For
example, the value for the C<quality> parameter can be
C<$input.TemperatureInput.sensorData.quality>.

=back

For more information, see Expressions
(https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html)
in the I<AWS IoT Events Developer Guide>.

=head1 ATTRIBUTES


=head2 Quality => Str

The quality of the asset property value. The value must be C<'GOOD'>,
C<'BAD'>, or C<'UNCERTAIN'>.


=head2 Timestamp => L<Paws::IoTEvents::AssetPropertyTimestamp>

The timestamp associated with the asset property value. The default is
the current event time.


=head2 Value => L<Paws::IoTEvents::AssetPropertyVariant>

The value to send to an asset property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

