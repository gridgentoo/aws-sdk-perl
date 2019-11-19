# Generated from default/object.tt
package Paws::WorkSpaces::FailedCreateWorkspaceRequest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspaceRequest/;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has WorkspaceRequest => (is => 'ro', isa => WorkSpaces_WorkspaceRequest);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'WorkspaceRequest' => {
                                       'class' => 'Paws::WorkSpaces::WorkspaceRequest',
                                       'type' => 'WorkSpaces_WorkspaceRequest'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::FailedCreateWorkspaceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::FailedCreateWorkspaceRequest object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., WorkspaceRequest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::FailedCreateWorkspaceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Describes a WorkSpace that cannot be created.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code that is returned if the WorkSpace cannot be created.


=head2 ErrorMessage => Str

  The text of the error message that is returned if the WorkSpace cannot
be created.


=head2 WorkspaceRequest => WorkSpaces_WorkspaceRequest

  Information about the WorkSpace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

