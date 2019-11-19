
package Paws::EC2::DeleteVpcEndpoints;
  use Moo;
  use Types::Standard qw/Str Bool Undef ArrayRef/;
  use Paws::EC2::Types qw//;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has VpcEndpointIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteVpcEndpoints');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DeleteVpcEndpointsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VpcEndpointIds' => 'VpcEndpointId'
                     },
  'IsRequired' => {
                    'VpcEndpointIds' => 1
                  },
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'VpcEndpointIds' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteVpcEndpoints - Arguments for method DeleteVpcEndpoints on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVpcEndpoints on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteVpcEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVpcEndpoints.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeleteVpcEndpointsResult = $ec2->DeleteVpcEndpoints(
      VpcEndpointIds => [ 'MyString', ... ],
      DryRun         => 1,                     # OPTIONAL
    );

    # Results:
    my $Unsuccessful = $DeleteVpcEndpointsResult->Unsuccessful;

    # Returns a L<Paws::EC2::DeleteVpcEndpointsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteVpcEndpoints>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> VpcEndpointIds => ArrayRef[Str|Undef]

One or more VPC endpoint IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVpcEndpoints in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

