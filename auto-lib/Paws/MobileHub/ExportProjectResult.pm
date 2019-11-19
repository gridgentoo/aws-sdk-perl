
package Paws::MobileHub::ExportProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MobileHub::Types qw//;
  has DownloadUrl => (is => 'ro', isa => Str);
  has ShareUrl => (is => 'ro', isa => Str);
  has SnapshotId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DownloadUrl' => 'downloadUrl',
                       'SnapshotId' => 'snapshotId',
                       'ShareUrl' => 'shareUrl'
                     },
  'types' => {
               'DownloadUrl' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ShareUrl' => {
                               'type' => 'Str'
                             },
               'SnapshotId' => {
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

Paws::MobileHub::ExportProjectResult

=head1 ATTRIBUTES


=head2 DownloadUrl => Str

URL which can be used to download the exported project configuation
file(s).


=head2 ShareUrl => Str

URL which can be shared to allow other AWS users to create their own
project in AWS Mobile Hub with the same configuration as the specified
project. This URL pertains to a snapshot in time of the project
configuration that is created when this API is called. If you want to
share additional changes to your project configuration, then you will
need to create and share a new snapshot by calling this method again.


=head2 SnapshotId => Str

Unique identifier for the exported snapshot of the project
configuration. This snapshot identifier is included in the share URL.


=head2 _request_id => Str


=cut

