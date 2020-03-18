package Paws::ApiGatewayV2::Api;
  use Moose;
  has ApiEndpoint => (is => 'ro', isa => 'Str', request_name => 'apiEndpoint', traits => ['NameInRequest']);
  has ApiId => (is => 'ro', isa => 'Str', request_name => 'apiId', traits => ['NameInRequest']);
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', request_name => 'apiKeySelectionExpression', traits => ['NameInRequest']);
  has CorsConfiguration => (is => 'ro', isa => 'Paws::ApiGatewayV2::Cors', request_name => 'corsConfiguration', traits => ['NameInRequest']);
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', request_name => 'disableSchemaValidation', traits => ['NameInRequest']);
  has ImportInfo => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'importInfo', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has ProtocolType => (is => 'ro', isa => 'Str', request_name => 'protocolType', traits => ['NameInRequest'], required => 1);
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'routeSelectionExpression', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'warnings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Api

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Api object:

  $service_obj->Method(Att1 => { ApiEndpoint => $value, ..., Warnings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Api object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiEndpoint

=head1 DESCRIPTION

Represents an API.

=head1 ATTRIBUTES


=head2 ApiEndpoint => Str

  The URI of the API, of the form
{api-id}.execute-api.{region}.amazonaws.com. The stage name is
typically appended to this URI to form a complete path to a deployed
API stage.


=head2 ApiId => Str

  The API ID.


=head2 ApiKeySelectionExpression => Str

  An API key selection expression. Supported only for WebSocket APIs. See
API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).


=head2 CorsConfiguration => L<Paws::ApiGatewayV2::Cors>

  A CORS configuration. Supported only for HTTP APIs.


=head2 CreatedDate => Str

  The timestamp when the API was created.


=head2 Description => Str

  The description of the API.


=head2 DisableSchemaValidation => Bool

  Avoid validating models when creating a deployment. Supported only for
WebSocket APIs.


=head2 ImportInfo => ArrayRef[Str|Undef]

  The validation information during API import. This may include
particular properties of your OpenAPI definition which are ignored
during import. Supported only for HTTP APIs.


=head2 B<REQUIRED> Name => Str

  The name of the API.


=head2 B<REQUIRED> ProtocolType => Str

  The API protocol.


=head2 B<REQUIRED> RouteSelectionExpression => Str

  The route selection expression for the API. For HTTP APIs, the
routeSelectionExpression must be ${request.method} ${request.path}. If
not provided, this will be the default for HTTP APIs. This property is
required for WebSocket APIs.


=head2 Tags => L<Paws::ApiGatewayV2::Tags>

  A collection of tags associated with the API.


=head2 Version => Str

  A version identifier for the API.


=head2 Warnings => ArrayRef[Str|Undef]

  The warning messages reported when failonwarnings is turned on during
API import.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

