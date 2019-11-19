# Generated from json/callresult_class.tt

package Paws::WorkSpaces::StopWorkspacesResult;
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
                                     'type' => 'ArrayRef[WorkSpaces_FailedWorkspaceChangeRequest]',
                                     'class' => 'Paws::WorkSpaces::FailedWorkspaceChangeRequest'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::StopWorkspacesResult

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[WorkSpaces_FailedWorkspaceChangeRequest]

Information about the WorkSpaces that could not be stopped.


=head2 _request_id => Str


=cut

1;