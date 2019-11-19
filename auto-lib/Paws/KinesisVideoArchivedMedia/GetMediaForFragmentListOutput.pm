
package Paws::KinesisVideoArchivedMedia::GetMediaForFragmentListOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  use Types::Standard qw/Str/;
  use Paws::KinesisVideoArchivedMedia::Types qw//;
  has ContentType => (is => 'ro', isa => Str);
  has Payload => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentType' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Payload' => {
                              'type' => 'Str'
                            }
             },
  'ParamInHeader' => {
                       'ContentType' => 'Content-Type'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetMediaForFragmentListOutput

=head1 ATTRIBUTES


=head2 ContentType => Str

The content type of the requested media.


=head2 Payload => Str

The payload that Kinesis Video Streams returns is a sequence of chunks
from the specified stream. For information about the chunks, see
PutMedia
(http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html).
The chunks that Kinesis Video Streams returns in the
C<GetMediaForFragmentList> call also include the following additional
Matroska (MKV) tags:

=over

=item *

AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the
chunk.

=item *

AWS_KINESISVIDEO_SERVER_SIDE_TIMESTAMP - Server-side timestamp of the
fragment.

=item *

AWS_KINESISVIDEO_PRODUCER_SIDE_TIMESTAMP - Producer-side timestamp of
the fragment.

=back

The following tags will be included if an exception occurs:

=over

=item *

AWS_KINESISVIDEO_FRAGMENT_NUMBER - The number of the fragment that
threw the exception

=item *

AWS_KINESISVIDEO_EXCEPTION_ERROR_CODE - The integer code of the
exception

=item *

AWS_KINESISVIDEO_EXCEPTION_MESSAGE - A text description of the
exception

=back



=head2 _request_id => Str


=cut

