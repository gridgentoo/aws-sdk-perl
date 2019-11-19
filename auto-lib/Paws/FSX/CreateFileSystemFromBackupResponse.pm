# Generated from json/callresult_class.tt

package Paws::FSX::CreateFileSystemFromBackupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FSX::Types qw/FSX_FileSystem/;
  has FileSystem => (is => 'ro', isa => FSX_FileSystem);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileSystem' => {
                                 'type' => 'FSX_FileSystem',
                                 'class' => 'Paws::FSX::FileSystem'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileSystemFromBackupResponse

=head1 ATTRIBUTES


=head2 FileSystem => FSX_FileSystem

A description of the file system.


=head2 _request_id => Str


=cut

1;