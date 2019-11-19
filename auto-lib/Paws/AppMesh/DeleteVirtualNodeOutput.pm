
package Paws::AppMesh::DeleteVirtualNodeOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualNode');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualNodeData/;
  has VirtualNode => (is => 'ro', isa => AppMesh_VirtualNodeData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'VirtualNode' => 1
                  },
  'NameInRequest' => {
                       'VirtualNode' => 'virtualNode'
                     },
  'types' => {
               'VirtualNode' => {
                                  'type' => 'AppMesh_VirtualNodeData',
                                  'class' => 'Paws::AppMesh::VirtualNodeData'
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

Paws::AppMesh::DeleteVirtualNodeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualNode => AppMesh_VirtualNodeData

The virtual node that was deleted.


=head2 _request_id => Str


=cut

