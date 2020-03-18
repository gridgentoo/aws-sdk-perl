package Paws::Datasync::PrivateLinkConfig;
  use Moose;
  has PrivateLinkEndpoint => (is => 'ro', isa => 'Str');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcEndpointId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::PrivateLinkConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::PrivateLinkConfig object:

  $service_obj->Method(Att1 => { PrivateLinkEndpoint => $value, ..., VpcEndpointId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::PrivateLinkConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->PrivateLinkEndpoint

=head1 DESCRIPTION

The VPC endpoint, subnet and security group that an agent uses to
access IP addresses in a VPC (Virtual Private Cloud).

=head1 ATTRIBUTES


=head2 PrivateLinkEndpoint => Str

  The private endpoint that is configured for an agent that has access to
IP addresses in a PrivateLink
(https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html).
An agent that is configured with this endpoint will not be accessible
over the public Internet.


=head2 SecurityGroupArns => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARNs) of the security groups that are
configured for the EC2 resource that hosts an agent activated in a VPC
or an agent that has access to a VPC endpoint.


=head2 SubnetArns => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARNs) of the subnets that are configured for
an agent activated in a VPC or an agent that has access to a VPC
endpoint.


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint that is configured for an agent. An agent
that is configured with a VPC endpoint will not be accessible over the
public Internet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

