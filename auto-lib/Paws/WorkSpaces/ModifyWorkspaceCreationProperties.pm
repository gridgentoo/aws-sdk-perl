# Generated from json/callargs_class.tt

package Paws::WorkSpaces::ModifyWorkspaceCreationProperties;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspaceCreationProperties/;
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has WorkspaceCreationProperties => (is => 'ro', isa => WorkSpaces_WorkspaceCreationProperties, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyWorkspaceCreationProperties');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::ModifyWorkspaceCreationPropertiesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'WorkspaceCreationProperties' => 1,
                    'ResourceId' => 1
                  },
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'WorkspaceCreationProperties' => {
                                                  'type' => 'WorkSpaces_WorkspaceCreationProperties',
                                                  'class' => 'Paws::WorkSpaces::WorkspaceCreationProperties'
                                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyWorkspaceCreationProperties - Arguments for method ModifyWorkspaceCreationProperties on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyWorkspaceCreationProperties on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyWorkspaceCreationProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyWorkspaceCreationProperties.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyWorkspaceCreationPropertiesResult =
      $workspaces->ModifyWorkspaceCreationProperties(
      ResourceId                  => 'MyDirectoryId',
      WorkspaceCreationProperties => {
        CustomSecurityGroupId =>
          'MySecurityGroupId',    # min: 11, max: 20; OPTIONAL
        DefaultOu                       => 'MyDefaultOu',    # OPTIONAL
        EnableInternetAccess            => 1,                # OPTIONAL
        EnableMaintenanceMode           => 1,                # OPTIONAL
        UserEnabledAsLocalAdministrator => 1,                # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyWorkspaceCreationProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the directory.



=head2 B<REQUIRED> WorkspaceCreationProperties => WorkSpaces_WorkspaceCreationProperties

The default properties for creating WorkSpaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyWorkspaceCreationProperties in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

