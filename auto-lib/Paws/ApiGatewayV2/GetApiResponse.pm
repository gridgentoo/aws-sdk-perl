
package Paws::ApiGatewayV2::GetApiResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_Tags/;
  has ApiEndpoint => (is => 'ro', isa => Str);
  has ApiId => (is => 'ro', isa => Str);
  has ApiKeySelectionExpression => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DisableSchemaValidation => (is => 'ro', isa => Bool);
  has Name => (is => 'ro', isa => Str);
  has ProtocolType => (is => 'ro', isa => Str);
  has RouteSelectionExpression => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags);
  has Version => (is => 'ro', isa => Str);
  has Warnings => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ApiId' => 'apiId',
                       'Description' => 'description',
                       'Warnings' => 'warnings',
                       'RouteSelectionExpression' => 'routeSelectionExpression',
                       'Version' => 'version',
                       'ApiEndpoint' => 'apiEndpoint',
                       'DisableSchemaValidation' => 'disableSchemaValidation',
                       'Name' => 'name',
                       'CreatedDate' => 'createdDate',
                       'ProtocolType' => 'protocolType',
                       'ApiKeySelectionExpression' => 'apiKeySelectionExpression'
                     },
  'types' => {
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'ProtocolType' => {
                                   'type' => 'Str'
                                 },
               'ApiKeySelectionExpression' => {
                                                'type' => 'Str'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApiEndpoint' => {
                                  'type' => 'Str'
                                },
               'DisableSchemaValidation' => {
                                              'type' => 'Bool'
                                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'RouteSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'Warnings' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Version' => {
                              'type' => 'Str'
                            },
               'Tags' => {
                           'type' => 'ApiGatewayV2_Tags',
                           'class' => 'Paws::ApiGatewayV2::Tags'
                         },
               'ApiId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetApiResponse

=head1 ATTRIBUTES


=head2 ApiEndpoint => Str

The URI of the API, of the form
{api-id}.execute-api.{region}.amazonaws.com. The stage name is
typically appended to this URI to form a complete path to a deployed
API stage.


=head2 ApiId => Str

The API ID.


=head2 ApiKeySelectionExpression => Str

An API key selection expression. See API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).


=head2 CreatedDate => Str

The timestamp when the API was created.


=head2 Description => Str

The description of the API.


=head2 DisableSchemaValidation => Bool

Avoid validating models when creating a deployment.


=head2 Name => Str

The name of the API.


=head2 ProtocolType => Str

The API protocol: Currently only WEBSOCKET is supported.

Valid values are: C<"WEBSOCKET">
=head2 RouteSelectionExpression => Str

The route selection expression for the API.


=head2 Tags => ApiGatewayV2_Tags

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..


=head2 Version => Str

A version identifier for the API.


=head2 Warnings => ArrayRef[Str|Undef]

The warning messages reported when failonwarnings is turned on during
API import.


=head2 _request_id => Str


=cut

