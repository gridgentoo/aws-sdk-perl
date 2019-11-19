
package Paws::MediaConvert::ListQueues;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw//;
  has ListBy => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Order => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListQueues');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2017-08-29/queues');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConvert::ListQueuesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ListBy' => {
                             'type' => 'Str'
                           },
               'Order' => {
                            'type' => 'Str'
                          }
             },
  'ParamInQuery' => {
                      'ListBy' => 'listBy',
                      'Order' => 'order',
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

Paws::MediaConvert::ListQueues - Arguments for method ListQueues on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueues on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method ListQueues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueues.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $ListQueuesResponse = $mediaconvert->ListQueues(
      ListBy     => 'NAME',          # OPTIONAL
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      Order      => 'ASCENDING',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListQueuesResponse->NextToken;
    my $Queues    = $ListQueuesResponse->Queues;

    # Returns a L<Paws::MediaConvert::ListQueuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/ListQueues>

=head1 ATTRIBUTES


=head2 ListBy => Str

Optional. When you request a list of queues, you can choose to list
them alphabetically by NAME or chronologically by CREATION_DATE. If you
don't specify, the service will list them by creation date.

Valid values are: C<"NAME">, C<"CREATION_DATE">

=head2 MaxResults => Int

Optional. Number of queues, up to twenty, that will be returned at one
time.



=head2 NextToken => Str

Use this string, provided with the response to a previous request, to
request the next batch of queues.



=head2 Order => Str

When you request lists of resources, you can optionally specify whether
they are sorted in ASCENDING or DESCENDING order. Default varies by
resource.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueues in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

