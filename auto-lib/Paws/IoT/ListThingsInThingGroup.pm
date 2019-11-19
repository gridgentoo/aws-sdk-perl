
package Paws::IoT::ListThingsInThingGroup;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::IoT::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Recursive => (is => 'ro', isa => Bool, predicate => 1);
  has ThingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListThingsInThingGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/thing-groups/{thingGroupName}/things');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListThingsInThingGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ThingGroupName' => 'thingGroupName'
                  },
  'types' => {
               'ThingGroupName' => {
                                     'type' => 'Str'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Recursive' => {
                                'type' => 'Bool'
                              }
             },
  'IsRequired' => {
                    'ThingGroupName' => 1
                  },
  'ParamInQuery' => {
                      'Recursive' => 'recursive',
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingsInThingGroup - Arguments for method ListThingsInThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingsInThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListThingsInThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingsInThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListThingsInThingGroupResponse = $iot->ListThingsInThingGroup(
      ThingGroupName => 'MyThingGroupName',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
      Recursive      => 1,                    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListThingsInThingGroupResponse->NextToken;
    my $Things    = $ListThingsInThingGroupResponse->Things;

    # Returns a L<Paws::IoT::ListThingsInThingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListThingsInThingGroup>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 Recursive => Bool

When true, list things in this thing group and in all child groups as
well.



=head2 B<REQUIRED> ThingGroupName => Str

The thing group name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingsInThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

