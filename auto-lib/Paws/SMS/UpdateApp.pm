# Generated from json/callargs_class.tt

package Paws::SMS::UpdateApp;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_ServerGroup SMS_Tag/;
  has AppId => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has RoleName => (is => 'ro', isa => Str, predicate => 1);
  has ServerGroups => (is => 'ro', isa => ArrayRef[SMS_ServerGroup], predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SMS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateApp');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SMS::UpdateAppResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::SMS::Tag',
                           'type' => 'ArrayRef[SMS_Tag]'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'ServerGroups' => {
                                   'class' => 'Paws::SMS::ServerGroup',
                                   'type' => 'ArrayRef[SMS_ServerGroup]'
                                 },
               'AppId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'AppId' => 'appId',
                       'ServerGroups' => 'serverGroups',
                       'Name' => 'name',
                       'RoleName' => 'roleName',
                       'Description' => 'description',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::UpdateApp - Arguments for method UpdateApp on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApp on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method UpdateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApp.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $UpdateAppResponse = $sms->UpdateApp(
      AppId        => 'MyAppId',             # OPTIONAL
      Description  => 'MyAppDescription',    # OPTIONAL
      Name         => 'MyAppName',           # OPTIONAL
      RoleName     => 'MyRoleName',          # OPTIONAL
      ServerGroups => [
        {
          Name          => 'MyServerGroupName',    # OPTIONAL
          ServerGroupId => 'MyServerGroupId',      # OPTIONAL
          ServerList    => [
            {
              ReplicationJobId         => 'MyReplicationJobId',    # OPTIONAL
              ReplicationJobTerminated => 1,                       # OPTIONAL
              ServerId                 => 'MyServerId',            # OPTIONAL
              ServerType =>
                'VIRTUAL_MACHINE',    # values: VIRTUAL_MACHINE; OPTIONAL
              VmServer => {
                VmManagerName => 'MyVmManagerName',    # OPTIONAL
                VmManagerType =>
                  'VSPHERE',  # values: VSPHERE, SCVMM, HYPERV-MANAGER; OPTIONAL
                VmName          => 'MyVmName',    # OPTIONAL
                VmPath          => 'MyVmPath',    # OPTIONAL
                VmServerAddress => {
                  VmId        => 'MyVmId',           # OPTIONAL
                  VmManagerId => 'MyVmManagerId',    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
        },
        ...
      ],            # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $AppSummary   = $UpdateAppResponse->AppSummary;
    my $ServerGroups = $UpdateAppResponse->ServerGroups;
    my $Tags         = $UpdateAppResponse->Tags;

    # Returns a L<Paws::SMS::UpdateAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/UpdateApp>

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application to update.



=head2 Description => Str

New description of the application.



=head2 Name => Str

New name of the application.



=head2 RoleName => Str

Name of the service role in the customer's account used by AWS SMS.



=head2 ServerGroups => ArrayRef[SMS_ServerGroup]

List of server groups in the application to update.



=head2 Tags => ArrayRef[SMS_Tag]

List of tags to associate with the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApp in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

