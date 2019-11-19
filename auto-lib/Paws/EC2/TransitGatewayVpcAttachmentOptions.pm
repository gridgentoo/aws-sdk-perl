package Paws::EC2::TransitGatewayVpcAttachmentOptions;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has DnsSupport => (is => 'ro', isa => Str);
  has Ipv6Support => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DnsSupport' => 'dnsSupport',
                       'Ipv6Support' => 'ipv6Support'
                     },
  'types' => {
               'Ipv6Support' => {
                                  'type' => 'Str'
                                },
               'DnsSupport' => {
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

Paws::EC2::TransitGatewayVpcAttachmentOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayVpcAttachmentOptions object:

  $service_obj->Method(Att1 => { DnsSupport => $value, ..., Ipv6Support => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayVpcAttachmentOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsSupport

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DnsSupport => Str

  Indicates whether DNS support is enabled.


=head2 Ipv6Support => Str

  Indicates whether IPv6 support is enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
