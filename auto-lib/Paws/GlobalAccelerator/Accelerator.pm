# Generated from default/object.tt
package Paws::GlobalAccelerator::Accelerator;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_IpSet/;
  has AcceleratorArn => (is => 'ro', isa => Str);
  has CreatedTime => (is => 'ro', isa => Str);
  has DnsName => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool);
  has IpAddressType => (is => 'ro', isa => Str);
  has IpSets => (is => 'ro', isa => ArrayRef[GlobalAccelerator_IpSet]);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Status' => {
                             'type' => 'Str'
                           },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'IpSets' => {
                             'type' => 'ArrayRef[GlobalAccelerator_IpSet]',
                             'class' => 'Paws::GlobalAccelerator::IpSet'
                           },
               'AcceleratorArn' => {
                                     'type' => 'Str'
                                   },
               'IpAddressType' => {
                                    'type' => 'Str'
                                  },
               'DnsName' => {
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

Paws::GlobalAccelerator::Accelerator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::Accelerator object:

  $service_obj->Method(Att1 => { AcceleratorArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::Accelerator object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceleratorArn

=head1 DESCRIPTION

An accelerator is a complex type that includes one or more listeners
that process inbound connections and then direct traffic to one or more
endpoint groups, each of which includes endpoints, such as load
balancers.

=head1 ATTRIBUTES


=head2 AcceleratorArn => Str

  The Amazon Resource Name (ARN) of the accelerator.


=head2 CreatedTime => Str

  The date and time that the accelerator was created.


=head2 DnsName => Str

  The Domain Name System (DNS) name that Global Accelerator creates that
points to your accelerator's static IP addresses.

The naming convention for the DNS name is: a lower case letter a,
followed by a 16-bit random hex string, followed by
.awsglobalaccelerator.com. For example:
a1234567890abcdef.awsglobalaccelerator.com.

For more information about the default DNS name, see Support for DNS
Addressing in Global Accelerator
(https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html#about-accelerators.dns-addressing)
in the I<AWS Global Accelerator Developer Guide>.


=head2 Enabled => Bool

  Indicates whether the accelerator is enabled. The value is true or
false. The default value is true.

If the value is set to true, the accelerator cannot be deleted. If set
to false, accelerator can be deleted.


=head2 IpAddressType => Str

  The value for the address type must be IPv4.


=head2 IpSets => ArrayRef[GlobalAccelerator_IpSet]

  The static IP addresses that Global Accelerator associates with the
accelerator.


=head2 LastModifiedTime => Str

  The date and time that the accelerator was last modified.


=head2 Name => Str

  The name of the accelerator. The name must contain only alphanumeric
characters or hyphens (-), and must not begin or end with a hyphen.


=head2 Status => Str

  Describes the deployment status of the accelerator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

