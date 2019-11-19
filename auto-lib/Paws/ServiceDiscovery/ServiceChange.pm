# Generated from default/object.tt
package Paws::ServiceDiscovery::ServiceChange;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_HealthCheckConfig ServiceDiscovery_DnsConfigChange/;
  has Description => (is => 'ro', isa => Str);
  has DnsConfig => (is => 'ro', isa => ServiceDiscovery_DnsConfigChange, required => 1);
  has HealthCheckConfig => (is => 'ro', isa => ServiceDiscovery_HealthCheckConfig);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DnsConfig' => 1
                  },
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'DnsConfig' => {
                                'type' => 'ServiceDiscovery_DnsConfigChange',
                                'class' => 'Paws::ServiceDiscovery::DnsConfigChange'
                              },
               'HealthCheckConfig' => {
                                        'type' => 'ServiceDiscovery_HealthCheckConfig',
                                        'class' => 'Paws::ServiceDiscovery::HealthCheckConfig'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ServiceChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::ServiceChange object:

  $service_obj->Method(Att1 => { Description => $value, ..., HealthCheckConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::ServiceChange object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A complex type that contains changes to an existing service.

=head1 ATTRIBUTES


=head2 Description => Str

  A description for the service.


=head2 B<REQUIRED> DnsConfig => ServiceDiscovery_DnsConfigChange

  A complex type that contains information about the Route 53 DNS records
that you want AWS Cloud Map to create when you register an instance.


=head2 HealthCheckConfig => ServiceDiscovery_HealthCheckConfig

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

