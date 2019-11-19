
package Paws::ApiGateway::DocumentationVersions;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_DocumentationVersion/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_DocumentationVersion]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Position' => 'position',
                       'Items' => 'item'
                     },
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'type' => 'ArrayRef[ApiGateway_DocumentationVersion]',
                            'class' => 'Paws::ApiGateway::DocumentationVersion'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationVersions

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_DocumentationVersion]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

