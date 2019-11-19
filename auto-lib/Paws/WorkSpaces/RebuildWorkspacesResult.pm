# Generated from json/callresult_class.tt

package Paws::WorkSpaces::RebuildWorkspacesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_FailedWorkspaceChangeRequest/;
  has FailedRequests => (is => 'ro', isa => ArrayRef[WorkSpaces_FailedWorkspaceChangeRequest]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedRequests' => {
                                     'class' => 'Paws::WorkSpaces::FailedWorkspaceChangeRequest',
                                     'type' => 'ArrayRef[WorkSpaces_FailedWorkspaceChangeRequest]'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RebuildWorkspacesResult

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[WorkSpaces_FailedWorkspaceChangeRequest]

Information about the WorkSpace that could not be rebuilt.


=head2 _request_id => Str


=cut

1;