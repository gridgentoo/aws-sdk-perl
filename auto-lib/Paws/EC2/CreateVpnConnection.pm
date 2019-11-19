
package Paws::EC2::CreateVpnConnection;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw/EC2_VpnConnectionOptionsSpecification/;
  has CustomerGatewayId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Options => (is => 'ro', isa => EC2_VpnConnectionOptionsSpecification, predicate => 1);
  has TransitGatewayId => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VpnGatewayId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateVpnConnection');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateVpnConnectionResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CustomerGatewayId' => 1,
                    'Type' => 1
                  },
  'NameInRequest' => {
                       'Options' => 'options',
                       'DryRun' => 'dryRun'
                     },
  'types' => {
               'TransitGatewayId' => {
                                       'type' => 'Str'
                                     },
               'VpnGatewayId' => {
                                   'type' => 'Str'
                                 },
               'CustomerGatewayId' => {
                                        'type' => 'Str'
                                      },
               'Options' => {
                              'class' => 'Paws::EC2::VpnConnectionOptionsSpecification',
                              'type' => 'EC2_VpnConnectionOptionsSpecification'
                            },
               'Type' => {
                           'type' => 'Str'
                         },
               'DryRun' => {
                             'type' => 'Bool'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnConnection - Arguments for method CreateVpnConnection on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpnConnection on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpnConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpnConnection.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpnConnectionResult = $ec2->CreateVpnConnection(
      CustomerGatewayId => 'MyCustomerGatewayId',
      Type              => 'MyString',
      DryRun            => 1,                       # OPTIONAL
      Options           => {
        StaticRoutesOnly => 1,
        TunnelOptions    => [
          {
            DPDTimeoutSeconds => 1,                                   # OPTIONAL
            IKEVersions       => [ { Value => 'MyString', }, ... ],   # OPTIONAL
            Phase1DHGroupNumbers => [
              {
                Value => 1,                                           # OPTIONAL
              },
              ...
            ],                                                        # OPTIONAL
            Phase1EncryptionAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                                                         # OPTIONAL
            Phase1IntegrityAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                                                         # OPTIONAL
            Phase1LifetimeSeconds => 1,                               # OPTIONAL
            Phase2DHGroupNumbers  => [
              {
                Value => 1,                                           # OPTIONAL
              },
              ...
            ],                                                        # OPTIONAL
            Phase2EncryptionAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                                                         # OPTIONAL
            Phase2IntegrityAlgorithms => [ { Value => 'MyString', }, ... ]
            ,                                                         # OPTIONAL
            Phase2LifetimeSeconds  => 1,                              # OPTIONAL
            PreSharedKey           => 'MyString',
            RekeyFuzzPercentage    => 1,                              # OPTIONAL
            RekeyMarginTimeSeconds => 1,                              # OPTIONAL
            ReplayWindowSize       => 1,                              # OPTIONAL
            TunnelInsideCidr       => 'MyString',
          },
          ...
        ],                                                            # OPTIONAL
      },    # OPTIONAL
      TransitGatewayId => 'MyTransitGatewayId',    # OPTIONAL
      VpnGatewayId     => 'MyVpnGatewayId',        # OPTIONAL
    );

    # Results:
    my $VpnConnection = $CreateVpnConnectionResult->VpnConnection;

    # Returns a L<Paws::EC2::CreateVpnConnectionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpnConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerGatewayId => Str

The ID of the customer gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Options => EC2_VpnConnectionOptionsSpecification

The options for the VPN connection.



=head2 TransitGatewayId => Str

The ID of the transit gateway. If you specify a transit gateway, you
cannot specify a virtual private gateway.



=head2 B<REQUIRED> Type => Str

The type of VPN connection (C<ipsec.1>).



=head2 VpnGatewayId => Str

The ID of the virtual private gateway. If you specify a virtual private
gateway, you cannot specify a transit gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpnConnection in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

