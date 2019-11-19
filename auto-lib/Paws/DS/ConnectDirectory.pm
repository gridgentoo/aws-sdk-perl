# Generated from json/callargs_class.tt

package Paws::DS::ConnectDirectory;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_DirectoryConnectSettings DS_Tag/;
  has ConnectSettings => (is => 'ro', isa => DS_DirectoryConnectSettings, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Password => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ShortName => (is => 'ro', isa => Str, predicate => 1);
  has Size => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ConnectDirectory');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DS::ConnectDirectoryResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'Size' => {
                           'type' => 'Str'
                         },
               'ConnectSettings' => {
                                      'type' => 'DS_DirectoryConnectSettings',
                                      'class' => 'Paws::DS::DirectoryConnectSettings'
                                    },
               'Tags' => {
                           'class' => 'Paws::DS::Tag',
                           'type' => 'ArrayRef[DS_Tag]'
                         },
               'Password' => {
                               'type' => 'Str'
                             },
               'ShortName' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Password' => 1,
                    'ConnectSettings' => 1,
                    'Name' => 1,
                    'Size' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ConnectDirectory - Arguments for method ConnectDirectory on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConnectDirectory on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method ConnectDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConnectDirectory.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $ConnectDirectoryResult = $ds->ConnectDirectory(
      ConnectSettings => {
        CustomerDnsIps   => [ 'MyIpAddr', ... ],
        CustomerUserName => 'MyUserName',            # min: 1
        SubnetIds        => [ 'MySubnetId', ... ],
        VpcId            => 'MyVpcId',

      },
      Name        => 'MyDirectoryName',
      Password    => 'MyConnectPassword',
      Size        => 'Small',
      Description => 'MyDescription',                # OPTIONAL
      ShortName   => 'MyDirectoryShortName',         # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',                       # min: 1, max: 128
          Value => 'MyTagValue',                     # max: 256

        },
        ...
      ],                                             # OPTIONAL
    );

    # Results:
    my $DirectoryId = $ConnectDirectoryResult->DirectoryId;

    # Returns a L<Paws::DS::ConnectDirectoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/ConnectDirectory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectSettings => DS_DirectoryConnectSettings

A DirectoryConnectSettings object that contains additional information
for the operation.



=head2 Description => Str

A textual description for the directory.



=head2 B<REQUIRED> Name => Str

The fully qualified name of the on-premises directory, such as
C<corp.example.com>.



=head2 B<REQUIRED> Password => Str

The password for the on-premises user account.



=head2 ShortName => Str

The NetBIOS name of the on-premises directory, such as C<CORP>.



=head2 B<REQUIRED> Size => Str

The size of the directory.

Valid values are: C<"Small">, C<"Large">

=head2 Tags => ArrayRef[DS_Tag]

The tags to be assigned to AD Connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConnectDirectory in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

