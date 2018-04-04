
package Paws::Config::DescribePendingAggregationRequests;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePendingAggregationRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribePendingAggregationRequestsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribePendingAggregationRequests - Arguments for method DescribePendingAggregationRequests on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePendingAggregationRequests on the 
AWS Config service. Use the attributes of this class
as arguments to method DescribePendingAggregationRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePendingAggregationRequests.

As an example:

  $service_obj->DescribePendingAggregationRequests(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of evaluation results returned on each page. The
default is maximum. If you specify 0, AWS Config uses the default.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePendingAggregationRequests in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
