
package Paws::CloudDirectory::BatchReadResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_BatchReadOperationResponse/;
  has Responses => (is => 'ro', isa => ArrayRef[CloudDirectory_BatchReadOperationResponse]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Responses' => {
                                'class' => 'Paws::CloudDirectory::BatchReadOperationResponse',
                                'type' => 'ArrayRef[CloudDirectory_BatchReadOperationResponse]'
                              },
               '_request_id' => {
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

Paws::CloudDirectory::BatchReadResponse

=head1 ATTRIBUTES


=head2 Responses => ArrayRef[CloudDirectory_BatchReadOperationResponse]

A list of all the responses for each batch read.


=head2 _request_id => Str


=cut

