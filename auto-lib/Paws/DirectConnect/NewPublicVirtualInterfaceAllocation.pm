# Generated from default/object.tt
package Paws::DirectConnect::NewPublicVirtualInterfaceAllocation;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_RouteFilterPrefix DirectConnect_Tag/;
  has AddressFamily => (is => 'ro', isa => Str);
  has AmazonAddress => (is => 'ro', isa => Str);
  has Asn => (is => 'ro', isa => Int, required => 1);
  has AuthKey => (is => 'ro', isa => Str);
  has CustomerAddress => (is => 'ro', isa => Str);
  has RouteFilterPrefixes => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix]);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag]);
  has VirtualInterfaceName => (is => 'ro', isa => Str, required => 1);
  has Vlan => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Asn' => 1,
                    'Vlan' => 1,
                    'VirtualInterfaceName' => 1
                  },
  'NameInRequest' => {
                       'RouteFilterPrefixes' => 'routeFilterPrefixes',
                       'Asn' => 'asn',
                       'Vlan' => 'vlan',
                       'AuthKey' => 'authKey',
                       'AddressFamily' => 'addressFamily',
                       'CustomerAddress' => 'customerAddress',
                       'AmazonAddress' => 'amazonAddress',
                       'VirtualInterfaceName' => 'virtualInterfaceName',
                       'Tags' => 'tags'
                     },
  'types' => {
               'AmazonAddress' => {
                                    'type' => 'Str'
                                  },
               'CustomerAddress' => {
                                      'type' => 'Str'
                                    },
               'VirtualInterfaceName' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'type' => 'ArrayRef[DirectConnect_Tag]',
                           'class' => 'Paws::DirectConnect::Tag'
                         },
               'RouteFilterPrefixes' => {
                                          'class' => 'Paws::DirectConnect::RouteFilterPrefix',
                                          'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]'
                                        },
               'Asn' => {
                          'type' => 'Int'
                        },
               'Vlan' => {
                           'type' => 'Int'
                         },
               'AddressFamily' => {
                                    'type' => 'Str'
                                  },
               'AuthKey' => {
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

Paws::DirectConnect::NewPublicVirtualInterfaceAllocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::NewPublicVirtualInterfaceAllocation object:

  $service_obj->Method(Att1 => { AddressFamily => $value, ..., Vlan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::NewPublicVirtualInterfaceAllocation object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressFamily

=head1 DESCRIPTION

Information about a public virtual interface to be provisioned on a
connection.

=head1 ATTRIBUTES


=head2 AddressFamily => Str

  The address family for the BGP peer.


=head2 AmazonAddress => Str

  The IP address assigned to the Amazon interface.


=head2 B<REQUIRED> Asn => Int

  The autonomous system (AS) number for Border Gateway Protocol (BGP)
configuration.

The valid values are 1-2147483647.


=head2 AuthKey => Str

  The authentication key for BGP configuration. This string has a minimum
length of 6 characters and and a maximun lenth of 80 characters.


=head2 CustomerAddress => Str

  The IP address assigned to the customer interface.


=head2 RouteFilterPrefixes => ArrayRef[DirectConnect_RouteFilterPrefix]

  The routes to be advertised to the AWS network in this Region. Applies
to public virtual interfaces.


=head2 Tags => ArrayRef[DirectConnect_Tag]

  The tags associated with the public virtual interface.


=head2 B<REQUIRED> VirtualInterfaceName => Str

  The name of the virtual interface assigned by the customer network.


=head2 B<REQUIRED> Vlan => Int

  The ID of the VLAN.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

