# Generated from json/callresult_class.tt

package Paws::Config::GetDiscoveredResourceCountsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Config::Types qw/Config_ResourceCount/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceCounts => (is => 'ro', isa => ArrayRef[Config_ResourceCount]);
  has TotalDiscoveredResources => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TotalDiscoveredResources' => 'totalDiscoveredResources',
                       'ResourceCounts' => 'resourceCounts'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TotalDiscoveredResources' => {
                                               'type' => 'Int'
                                             },
               'ResourceCounts' => {
                                     'type' => 'ArrayRef[Config_ResourceCount]',
                                     'class' => 'Paws::Config::ResourceCount'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetDiscoveredResourceCountsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 ResourceCounts => ArrayRef[Config_ResourceCount]

The list of C<ResourceCount> objects. Each object is listed in
descending order by the number of resources.


=head2 TotalDiscoveredResources => Int

The total number of resources that AWS Config is recording in the
region for your account. If you specify resource types in the request,
AWS Config returns only the total number of resources for those
resource types.

B<Example>

=over

=item 1.

AWS Config is recording three resource types in the US East (Ohio)
Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
buckets, for a total of 60 resources.

=item 2.

You make a call to the C<GetDiscoveredResourceCounts> action and
specify the resource type, C<"AWS::EC2::Instances">, in the request.

=item 3.

AWS Config returns 25 for C<totalDiscoveredResources>.

=back



=head2 _request_id => Str


=cut

1;