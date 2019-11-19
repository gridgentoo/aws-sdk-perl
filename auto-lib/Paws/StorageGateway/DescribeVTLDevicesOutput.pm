# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeVTLDevicesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_VTLDevice/;
  has GatewayARN => (is => 'ro', isa => Str);
  has Marker => (is => 'ro', isa => Str);
  has VTLDevices => (is => 'ro', isa => ArrayRef[StorageGateway_VTLDevice]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'VTLDevices' => {
                                 'class' => 'Paws::StorageGateway::VTLDevice',
                                 'type' => 'ArrayRef[StorageGateway_VTLDevice]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeVTLDevicesOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 Marker => Str

An opaque string that indicates the position at which the VTL devices
that were fetched for description ended. Use the marker in your next
request to fetch the next set of VTL devices in the list. If there are
no more VTL devices to describe, this field does not appear in the
response.


=head2 VTLDevices => ArrayRef[StorageGateway_VTLDevice]

An array of VTL device objects composed of the Amazon Resource
Name(ARN) of the VTL devices.


=head2 _request_id => Str


=cut

1;