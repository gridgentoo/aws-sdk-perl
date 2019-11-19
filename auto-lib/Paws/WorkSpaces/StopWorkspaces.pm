# Generated from json/callargs_class.tt

package Paws::WorkSpaces::StopWorkspaces;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_StopRequest/;
  has StopWorkspaceRequests => (is => 'ro', isa => ArrayRef[WorkSpaces_StopRequest], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopWorkspaces');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::StopWorkspacesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StopWorkspaceRequests' => 1
                  },
  'types' => {
               'StopWorkspaceRequests' => {
                                            'type' => 'ArrayRef[WorkSpaces_StopRequest]',
                                            'class' => 'Paws::WorkSpaces::StopRequest'
                                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::StopWorkspaces - Arguments for method StopWorkspaces on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopWorkspaces on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method StopWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopWorkspaces.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $StopWorkspacesResult = $workspaces->StopWorkspaces(
      StopWorkspaceRequests => [
        {
          WorkspaceId => 'MyWorkspaceId',    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FailedRequests = $StopWorkspacesResult->FailedRequests;

    # Returns a L<Paws::WorkSpaces::StopWorkspacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/StopWorkspaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StopWorkspaceRequests => ArrayRef[WorkSpaces_StopRequest]

The WorkSpaces to stop. You can specify up to 25 WorkSpaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopWorkspaces in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

