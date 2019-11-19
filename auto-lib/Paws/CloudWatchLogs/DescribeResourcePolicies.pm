# Generated from json/callargs_class.tt

package Paws::CloudWatchLogs::DescribeResourcePolicies;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudWatchLogs::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeResourcePolicies');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatchLogs::DescribeResourcePoliciesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Limit' => 'limit',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Limit' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeResourcePolicies - Arguments for method DescribeResourcePolicies on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResourcePolicies on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeResourcePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResourcePolicies.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeResourcePoliciesResponse = $logs->DescribeResourcePolicies(
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $DescribeResourcePoliciesResponse->NextToken;
    my $ResourcePolicies = $DescribeResourcePoliciesResponse->ResourcePolicies;

   # Returns a L<Paws::CloudWatchLogs::DescribeResourcePoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeResourcePolicies>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of resource policies to be displayed with one call
of this API.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResourcePolicies in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

