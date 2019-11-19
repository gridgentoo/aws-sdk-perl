# Generated from default/object.tt
package Paws::ELBv2::AvailabilityZone;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ELBv2::Types qw/ELBv2_LoadBalancerAddress/;
  has LoadBalancerAddresses => (is => 'ro', isa => ArrayRef[ELBv2_LoadBalancerAddress]);
  has SubnetId => (is => 'ro', isa => Str);
  has ZoneName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'LoadBalancerAddresses' => {
                                            'type' => 'ArrayRef[ELBv2_LoadBalancerAddress]',
                                            'class' => 'Paws::ELBv2::LoadBalancerAddress'
                                          },
               'ZoneName' => {
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

Paws::ELBv2::AvailabilityZone

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::AvailabilityZone object:

  $service_obj->Method(Att1 => { LoadBalancerAddresses => $value, ..., ZoneName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::AvailabilityZone object:

  $result = $service_obj->Method(...);
  $result->Att1->LoadBalancerAddresses

=head1 DESCRIPTION

Information about an Availability Zone.

=head1 ATTRIBUTES


=head2 LoadBalancerAddresses => ArrayRef[ELBv2_LoadBalancerAddress]

  [Network Load Balancers] If you need static IP addresses for your load
balancer, you can specify one Elastic IP address per Availability Zone
when you create the load balancer.


=head2 SubnetId => Str

  The ID of the subnet. You can specify one subnet per Availability Zone.


=head2 ZoneName => Str

  The name of the Availability Zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

