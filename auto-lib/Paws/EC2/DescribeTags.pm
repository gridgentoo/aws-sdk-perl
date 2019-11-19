
package Paws::EC2::DescribeTags;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeTagsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Filters' => {
                              'type' => 'ArrayRef[EC2_Filter]',
                              'class' => 'Paws::EC2::Filter'
                            }
             },
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'Filters' => 'Filter'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTags - Arguments for method DescribeTags on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTags on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTags.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe the tags for a single resource
    # This example describes the tags for the specified instance.
    my $DescribeTagsResult = $ec2->DescribeTags(
      'Filters' => [

        {
          'Name'   => 'resource-id',
          'Values' => ['i-1234567890abcdef8']
        }
      ]
    );

    # Results:
    my $Tags = $DescribeTagsResult->Tags;

    # Returns a L<Paws::EC2::DescribeTagsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeTags>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

The filters.

=over

=item *

C<key> - The tag key.

=item *

C<resource-id> - The ID of the resource.

=item *

C<resource-type> - The resource type (C<customer-gateway> |
C<dedicated-host> | C<dhcp-options> | C<elastic-ip> | C<fleet> |
C<fpga-image> | C<image> | C<instance> | C<host-reservation> |
C<internet-gateway> | C<launch-template> | C<natgateway> |
C<network-acl> | C<network-interface> | C<reserved-instances> |
C<route-table> | C<security-group> | C<snapshot> |
C<spot-instances-request> | C<subnet> | C<volume> | C<vpc> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>).

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of the tag. For
example, specify "tag:Owner" for the filter name and "TeamA" for the
filter value to find resources with the tag "Owner=TeamA".

=item *

C<value> - The tag value.

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. This value
can be between 5 and 1000. To retrieve the remaining results, make
another call with the returned C<NextToken> value.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTags in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

