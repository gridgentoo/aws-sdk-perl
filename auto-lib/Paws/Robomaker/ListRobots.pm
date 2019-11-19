
package Paws::Robomaker::ListRobots;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Robomaker::Types qw/Robomaker_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[Robomaker_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListRobots');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/listRobots');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Robomaker::ListRobotsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'type' => 'ArrayRef[Robomaker_Filter]',
                              'class' => 'Paws::Robomaker::Filter'
                            }
             },
  'NameInRequest' => {
                       'Filters' => 'filters',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListRobots - Arguments for method ListRobots on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRobots on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method ListRobots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRobots.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $ListRobotsResponse = $robomaker->ListRobots(
      Filters => [
        {
          Name   => 'MyName',    # min: 1, max: 255; OPTIONAL
          Values => [
            'MyName', ...        # min: 1, max: 255; OPTIONAL
          ],                     # min: 1, max: 1; OPTIONAL
        },
        ...
      ],                         # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRobotsResponse->NextToken;
    my $Robots    = $ListRobotsResponse->Robots;

    # Returns a L<Paws::Robomaker::ListRobotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/ListRobots>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[Robomaker_Filter]

Optional filters to limit results.

The filter names C<status> and C<fleetName> are supported. When
filtering, you must use the complete value of the filtered item. You
can use up to three filters, but they must be for the same named item.
For example, if you are looking for items with the status C<Registered>
or the status C<Available>.



=head2 MaxResults => Int

The maximum number of deployment job results returned by C<ListRobots>
in paginated output. When this parameter is used, C<ListRobots> only
returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<ListRobots> request with the
returned C<nextToken> value. This value can be between 1 and 100. If
this parameter is not used, then C<ListRobots> returns up to 100
results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated C<ListRobots>
request where C<maxResults> was used and the results exceeded the value
of that parameter. Pagination continues from the end of the previous
results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRobots in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

