
package Paws::EC2::DescribeTransitGatewayPeeringAttachments;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TransitGatewayAttachmentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTransitGatewayPeeringAttachments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeTransitGatewayPeeringAttachmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayPeeringAttachments - Arguments for method DescribeTransitGatewayPeeringAttachments on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTransitGatewayPeeringAttachments on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeTransitGatewayPeeringAttachments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTransitGatewayPeeringAttachments.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeTransitGatewayPeeringAttachmentsResult =
      $ec2->DescribeTransitGatewayPeeringAttachments(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyString',             # OPTIONAL
      TransitGatewayAttachmentIds => [ 'MyTransitGatewayAttachmentId', ... ]
      ,                                     # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeTransitGatewayPeeringAttachmentsResult->NextToken;
    my $TransitGatewayPeeringAttachments =
      $DescribeTransitGatewayPeeringAttachmentsResult
      ->TransitGatewayPeeringAttachments;

# Returns a L<Paws::EC2::DescribeTransitGatewayPeeringAttachmentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeTransitGatewayPeeringAttachments>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 TransitGatewayAttachmentIds => ArrayRef[Str|Undef]

One or more IDs of the transit gateway peering attachments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTransitGatewayPeeringAttachments in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

