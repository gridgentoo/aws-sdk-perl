
package Paws::EC2::DescribeReservedInstancesOfferingsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ReservedInstancesOffering/;
  has NextToken => (is => 'ro', isa => Str);
  has ReservedInstancesOfferings => (is => 'ro', isa => ArrayRef[EC2_ReservedInstancesOffering]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedInstancesOfferings' => {
                                                 'type' => 'ArrayRef[EC2_ReservedInstancesOffering]',
                                                 'class' => 'Paws::EC2::ReservedInstancesOffering'
                                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ReservedInstancesOfferings' => 'reservedInstancesOfferingsSet',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesOfferingsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ReservedInstancesOfferings => ArrayRef[EC2_ReservedInstancesOffering]

A list of Reserved Instances offerings.


=head2 _request_id => Str


=cut

