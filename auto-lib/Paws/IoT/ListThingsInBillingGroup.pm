
package Paws::IoT::ListThingsInBillingGroup;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has BillingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListThingsInBillingGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/billing-groups/{billingGroupName}/things');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListThingsInBillingGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BillingGroupName' => 1
                  },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'types' => {
               'BillingGroupName' => {
                                       'type' => 'Str'
                                     },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'BillingGroupName' => 'billingGroupName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingsInBillingGroup - Arguments for method ListThingsInBillingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingsInBillingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListThingsInBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingsInBillingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListThingsInBillingGroupResponse = $iot->ListThingsInBillingGroup(
      BillingGroupName => 'MyBillingGroupName',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $NextToken = $ListThingsInBillingGroupResponse->NextToken;
    my $Things    = $ListThingsInBillingGroupResponse->Things;

    # Returns a L<Paws::IoT::ListThingsInBillingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListThingsInBillingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillingGroupName => Str

The name of the billing group.



=head2 MaxResults => Int

The maximum number of results to return per request.



=head2 NextToken => Str

The token to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingsInBillingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

