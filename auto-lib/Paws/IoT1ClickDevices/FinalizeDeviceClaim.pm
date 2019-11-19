
package Paws::IoT1ClickDevices::FinalizeDeviceClaim;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices___mapOf__string/;
  has DeviceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => IoT1ClickDevices___mapOf__string, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'FinalizeDeviceClaim');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/devices/{deviceId}/finalize-claim');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT1ClickDevices::FinalizeDeviceClaimResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DeviceId' => 'deviceId'
                  },
  'IsRequired' => {
                    'DeviceId' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'DeviceId' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'class' => 'Paws::IoT1ClickDevices::__mapOf__string',
                           'type' => 'IoT1ClickDevices___mapOf__string'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::FinalizeDeviceClaim - Arguments for method FinalizeDeviceClaim on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method FinalizeDeviceClaim on the
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method FinalizeDeviceClaim.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FinalizeDeviceClaim.

=head1 SYNOPSIS

    my $devices.iot1click = Paws->service('IoT1ClickDevices');
    my $FinalizeDeviceClaimResponse = $devices . iot1click->FinalizeDeviceClaim(
      DeviceId => 'My__string',
      Tags     => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $State = $FinalizeDeviceClaimResponse->State;

    # Returns a L<Paws::IoT1ClickDevices::FinalizeDeviceClaimResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devices.iot1click/FinalizeDeviceClaim>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.



=head2 Tags => IoT1ClickDevices___mapOf__string

A collection of key/value pairs defining the resource tags. For
example, { "tags": {"key1": "value1", "key2": "value2"} }. For more
information, see AWS Tagging Strategies
(https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method FinalizeDeviceClaim in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

