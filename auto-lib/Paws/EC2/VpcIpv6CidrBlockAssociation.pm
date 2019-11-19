package Paws::EC2::VpcIpv6CidrBlockAssociation;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpcCidrBlockState/;
  has AssociationId => (is => 'ro', isa => Str);
  has Ipv6CidrBlock => (is => 'ro', isa => Str);
  has Ipv6CidrBlockState => (is => 'ro', isa => EC2_VpcCidrBlockState);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Ipv6CidrBlock' => 'ipv6CidrBlock',
                       'AssociationId' => 'associationId',
                       'Ipv6CidrBlockState' => 'ipv6CidrBlockState'
                     },
  'types' => {
               'Ipv6CidrBlock' => {
                                    'type' => 'Str'
                                  },
               'Ipv6CidrBlockState' => {
                                         'class' => 'Paws::EC2::VpcCidrBlockState',
                                         'type' => 'EC2_VpcCidrBlockState'
                                       },
               'AssociationId' => {
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

Paws::EC2::VpcIpv6CidrBlockAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcIpv6CidrBlockAssociation object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., Ipv6CidrBlockState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcIpv6CidrBlockAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The association ID for the IPv6 CIDR block.


=head2 Ipv6CidrBlock => Str

  The IPv6 CIDR block.


=head2 Ipv6CidrBlockState => EC2_VpcCidrBlockState

  Information about the state of the CIDR block.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
