
package Paws::ApiGatewayV2::DeleteAuthorizer;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AuthorizerId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteAuthorizer');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/apis/{apiId}/authorizers/{authorizerId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthorizerId' => {
                                   'type' => 'Str'
                                 },
               'ApiId' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'ApiId' => 1,
                    'AuthorizerId' => 1
                  },
  'ParamInURI' => {
                    'ApiId' => 'apiId',
                    'AuthorizerId' => 'authorizerId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DeleteAuthorizer - Arguments for method DeleteAuthorizer on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAuthorizer on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method DeleteAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAuthorizer.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    $apigateway->DeleteAuthorizer(
      ApiId        => 'My__string',
      AuthorizerId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> AuthorizerId => Str

The authorizer identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAuthorizer in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

