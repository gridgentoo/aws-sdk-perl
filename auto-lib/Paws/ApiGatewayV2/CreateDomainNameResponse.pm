
package Paws::ApiGatewayV2::CreateDomainNameResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_DomainNameConfiguration ApiGatewayV2_Tags/;
  has ApiMappingSelectionExpression => (is => 'ro', isa => Str);
  has DomainName => (is => 'ro', isa => Str);
  has DomainNameConfigurations => (is => 'ro', isa => ArrayRef[ApiGatewayV2_DomainNameConfiguration]);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ApiGatewayV2::Tags',
                           'type' => 'ApiGatewayV2_Tags'
                         },
               'ApiMappingSelectionExpression' => {
                                                    'type' => 'Str'
                                                  },
               'DomainNameConfigurations' => {
                                               'class' => 'Paws::ApiGatewayV2::DomainNameConfiguration',
                                               'type' => 'ArrayRef[ApiGatewayV2_DomainNameConfiguration]'
                                             },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ApiMappingSelectionExpression' => 'apiMappingSelectionExpression',
                       'DomainNameConfigurations' => 'domainNameConfigurations',
                       'DomainName' => 'domainName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateDomainNameResponse

=head1 ATTRIBUTES


=head2 ApiMappingSelectionExpression => Str

The API mapping selection expression.


=head2 DomainName => Str

The name of the DomainName resource.


=head2 DomainNameConfigurations => ArrayRef[ApiGatewayV2_DomainNameConfiguration]

The domain name configurations.


=head2 Tags => ApiGatewayV2_Tags

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..


=head2 _request_id => Str


=cut

