
package Paws::CloudDirectory::ListIndexResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_IndexAttachment/;
  has IndexAttachments => (is => 'ro', isa => ArrayRef[CloudDirectory_IndexAttachment]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IndexAttachments' => {
                                       'type' => 'ArrayRef[CloudDirectory_IndexAttachment]',
                                       'class' => 'Paws::CloudDirectory::IndexAttachment'
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

Paws::CloudDirectory::ListIndexResponse

=head1 ATTRIBUTES


=head2 IndexAttachments => ArrayRef[CloudDirectory_IndexAttachment]

The objects and indexed values attached to the index.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

