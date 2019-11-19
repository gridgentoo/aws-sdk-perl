
package Paws::MQ::ListUsers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MQ::Types qw//;
  has BrokerId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListUsers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/brokers/{broker-id}/users');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MQ::ListUsersResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'IsRequired' => {
                    'BrokerId' => 1
                  },
  'ParamInURI' => {
                    'BrokerId' => 'broker-id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListUsers - Arguments for method ListUsers on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsers on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method ListUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsers.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $ListUsersResponse = $mq->ListUsers(
      BrokerId   => 'My__string',
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $BrokerId   = $ListUsersResponse->BrokerId;
    my $MaxResults = $ListUsersResponse->MaxResults;
    my $NextToken  = $ListUsersResponse->NextToken;
    my $Users      = $ListUsersResponse->Users;

    # Returns a L<Paws::MQ::ListUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/ListUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.



=head2 MaxResults => Int

The maximum number of ActiveMQ users that can be returned per page (20
by default). This value must be an integer from 5 to 100.



=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsers in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

