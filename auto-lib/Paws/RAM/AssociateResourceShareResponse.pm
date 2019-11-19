
package Paws::RAM::AssociateResourceShareResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_ResourceShareAssociation/;
  has ClientToken => (is => 'ro', isa => Str);
  has ResourceShareAssociations => (is => 'ro', isa => ArrayRef[RAM_ResourceShareAssociation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'ResourceShareAssociations' => 'resourceShareAssociations'
                     },
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceShareAssociations' => {
                                                'class' => 'Paws::RAM::ResourceShareAssociation',
                                                'type' => 'ArrayRef[RAM_ResourceShareAssociation]'
                                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::AssociateResourceShareResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ResourceShareAssociations => ArrayRef[RAM_ResourceShareAssociation]

Information about the associations.


=head2 _request_id => Str


=cut

