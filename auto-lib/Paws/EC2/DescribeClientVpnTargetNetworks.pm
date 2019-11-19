
package Paws::EC2::DescribeClientVpnTargetNetworks;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Bool Int/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has AssociationIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ClientVpnEndpointId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeClientVpnTargetNetworks');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeClientVpnTargetNetworksResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ClientVpnEndpointId' => 1
                  },
  'NameInRequest' => {
                       'Filters' => 'Filter'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Filters' => {
                              'type' => 'ArrayRef[EC2_Filter]',
                              'class' => 'Paws::EC2::Filter'
                            },
               'AssociationIds' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'ClientVpnEndpointId' => {
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

Paws::EC2::DescribeClientVpnTargetNetworks - Arguments for method DescribeClientVpnTargetNetworks on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClientVpnTargetNetworks on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeClientVpnTargetNetworks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClientVpnTargetNetworks.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeClientVpnTargetNetworksResult =
      $ec2->DescribeClientVpnTargetNetworks(
      ClientVpnEndpointId => 'MyString',
      AssociationIds      => [ 'MyString', ... ],    # OPTIONAL
      DryRun              => 1,                      # OPTIONAL
      Filters             => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],
        },
        ...
      ],                                             # OPTIONAL
      MaxResults => 1,                               # OPTIONAL
      NextToken  => 'MyNextToken',                   # OPTIONAL
      );

    # Results:
    my $ClientVpnTargetNetworks =
      $DescribeClientVpnTargetNetworksResult->ClientVpnTargetNetworks;
    my $NextToken = $DescribeClientVpnTargetNetworksResult->NextToken;

    # Returns a L<Paws::EC2::DescribeClientVpnTargetNetworksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeClientVpnTargetNetworks>

=head1 ATTRIBUTES


=head2 AssociationIds => ArrayRef[Str|Undef]

The IDs of the target network associations.



=head2 B<REQUIRED> ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

One or more filters. Filter names and values are case-sensitive.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the nextToken value.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClientVpnTargetNetworks in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

