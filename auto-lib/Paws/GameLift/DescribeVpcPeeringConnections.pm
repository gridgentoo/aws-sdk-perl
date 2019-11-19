# Generated from json/callargs_class.tt

package Paws::GameLift::DescribeVpcPeeringConnections;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw//;
  has FleetId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeVpcPeeringConnections');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GameLift::DescribeVpcPeeringConnectionsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FleetId' => {
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

Paws::GameLift::DescribeVpcPeeringConnections - Arguments for method DescribeVpcPeeringConnections on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcPeeringConnections on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeVpcPeeringConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcPeeringConnections.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeVpcPeeringConnectionsOutput =
      $gamelift->DescribeVpcPeeringConnections(
      FleetId => 'MyFleetId',    # OPTIONAL
      );

    # Results:
    my $VpcPeeringConnections =
      $DescribeVpcPeeringConnectionsOutput->VpcPeeringConnections;

    # Returns a L<Paws::GameLift::DescribeVpcPeeringConnectionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeVpcPeeringConnections>

=head1 ATTRIBUTES


=head2 FleetId => Str

Unique identifier for a fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcPeeringConnections in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

