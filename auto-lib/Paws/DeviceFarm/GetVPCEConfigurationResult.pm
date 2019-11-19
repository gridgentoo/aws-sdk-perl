# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetVPCEConfigurationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_VPCEConfiguration/;
  has VpceConfiguration => (is => 'ro', isa => DeviceFarm_VPCEConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VpceConfiguration' => {
                                        'type' => 'DeviceFarm_VPCEConfiguration',
                                        'class' => 'Paws::DeviceFarm::VPCEConfiguration'
                                      }
             },
  'NameInRequest' => {
                       'VpceConfiguration' => 'vpceConfiguration'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetVPCEConfigurationResult

=head1 ATTRIBUTES


=head2 VpceConfiguration => DeviceFarm_VPCEConfiguration

An object containing information about your VPC endpoint configuration.


=head2 _request_id => Str


=cut

1;