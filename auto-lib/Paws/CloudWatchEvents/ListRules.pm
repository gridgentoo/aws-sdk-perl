# Generated from json/callargs_class.tt

package Paws::CloudWatchEvents::ListRules;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudWatchEvents::Types qw//;
  has EventBusName => (is => 'ro', isa => Str, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NamePrefix => (is => 'ro', isa => Str, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListRules');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatchEvents::ListRulesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventBusName' => {
                                   'type' => 'Str'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NamePrefix' => {
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

Paws::CloudWatchEvents::ListRules - Arguments for method ListRules on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRules on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRules.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListRulesResponse = $events->ListRules(
      EventBusName => 'MyEventBusName',    # OPTIONAL
      Limit        => 1,                   # OPTIONAL
      NamePrefix   => 'MyRuleName',        # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRulesResponse->NextToken;
    my $Rules     = $ListRulesResponse->Rules;

    # Returns a L<Paws::CloudWatchEvents::ListRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListRules>

=head1 ATTRIBUTES


=head2 EventBusName => Str

Limits the results to show only the rules associated with the specified
event bus.



=head2 Limit => Int

The maximum number of results to return.



=head2 NamePrefix => Str

The prefix matching the rule name.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRules in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

