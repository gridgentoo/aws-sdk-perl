
package Paws::EC2::CreateEgressOnlyInternetGateway;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has VpcId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateEgressOnlyInternetGateway');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateEgressOnlyInternetGatewayResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'VpcId' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'VpcId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateEgressOnlyInternetGateway - Arguments for method CreateEgressOnlyInternetGateway on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEgressOnlyInternetGateway on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateEgressOnlyInternetGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEgressOnlyInternetGateway.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateEgressOnlyInternetGatewayResult =
      $ec2->CreateEgressOnlyInternetGateway(
      VpcId       => 'MyVpcId',
      ClientToken => 'MyString',    # OPTIONAL
      DryRun      => 1,             # OPTIONAL
      );

    # Results:
    my $ClientToken = $CreateEgressOnlyInternetGatewayResult->ClientToken;
    my $EgressOnlyInternetGateway =
      $CreateEgressOnlyInternetGatewayResult->EgressOnlyInternetGateway;

    # Returns a L<Paws::EC2::CreateEgressOnlyInternetGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateEgressOnlyInternetGateway>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC for which to create the egress-only internet gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEgressOnlyInternetGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

