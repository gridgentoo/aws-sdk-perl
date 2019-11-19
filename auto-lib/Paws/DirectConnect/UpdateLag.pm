# Generated from json/callargs_class.tt

package Paws::DirectConnect::UpdateLag;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DirectConnect::Types qw//;
  has LagId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LagName => (is => 'ro', isa => Str, predicate => 1);
  has MinimumLinks => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateLag');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::Lag');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'LagId' => 1
                  },
  'NameInRequest' => {
                       'LagId' => 'lagId',
                       'LagName' => 'lagName',
                       'MinimumLinks' => 'minimumLinks'
                     },
  'types' => {
               'MinimumLinks' => {
                                   'type' => 'Int'
                                 },
               'LagId' => {
                            'type' => 'Str'
                          },
               'LagName' => {
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

Paws::DirectConnect::UpdateLag - Arguments for method UpdateLag on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLag on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method UpdateLag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLag.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $Lag = $directconnect->UpdateLag(
      LagId        => 'MyLagId',
      LagName      => 'MyLagName',    # OPTIONAL
      MinimumLinks => 1,              # OPTIONAL
    );

    # Results:
    my $AllowsHostedConnections = $Lag->AllowsHostedConnections;
    my $AwsDevice               = $Lag->AwsDevice;
    my $AwsDeviceV2             = $Lag->AwsDeviceV2;
    my $Connections             = $Lag->Connections;
    my $ConnectionsBandwidth    = $Lag->ConnectionsBandwidth;
    my $HasLogicalRedundancy    = $Lag->HasLogicalRedundancy;
    my $JumboFrameCapable       = $Lag->JumboFrameCapable;
    my $LagId                   = $Lag->LagId;
    my $LagName                 = $Lag->LagName;
    my $LagState                = $Lag->LagState;
    my $Location                = $Lag->Location;
    my $MinimumLinks            = $Lag->MinimumLinks;
    my $NumberOfConnections     = $Lag->NumberOfConnections;
    my $OwnerAccount            = $Lag->OwnerAccount;
    my $ProviderName            = $Lag->ProviderName;
    my $Region                  = $Lag->Region;
    my $Tags                    = $Lag->Tags;

    # Returns a L<Paws::DirectConnect::Lag> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/UpdateLag>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LagId => Str

The ID of the LAG.



=head2 LagName => Str

The name of the LAG.



=head2 MinimumLinks => Int

The minimum number of physical connections that must be operational for
the LAG itself to be operational.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLag in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

