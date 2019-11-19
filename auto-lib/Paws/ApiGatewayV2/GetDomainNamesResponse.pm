
package Paws::ApiGatewayV2::GetDomainNamesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_DomainName/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGatewayV2_DomainName]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Items' => 'items',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'type' => 'ArrayRef[ApiGatewayV2_DomainName]',
                            'class' => 'Paws::ApiGatewayV2::DomainName'
                          },
               'NextToken' => {
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

Paws::ApiGatewayV2::GetDomainNamesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGatewayV2_DomainName]

The elements from this collection.


=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.


=head2 _request_id => Str


=cut

