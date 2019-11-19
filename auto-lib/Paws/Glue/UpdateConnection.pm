# Generated from json/callargs_class.tt

package Paws::Glue::UpdateConnection;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_ConnectionInput/;
  has CatalogId => (is => 'ro', isa => Str, predicate => 1);
  has ConnectionInput => (is => 'ro', isa => Glue_ConnectionInput, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateConnection');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::UpdateConnectionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'CatalogId' => {
                                'type' => 'Str'
                              },
               'ConnectionInput' => {
                                      'class' => 'Paws::Glue::ConnectionInput',
                                      'type' => 'Glue_ConnectionInput'
                                    }
             },
  'IsRequired' => {
                    'ConnectionInput' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateConnection - Arguments for method UpdateConnection on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnection on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnection.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateConnectionResponse = $glue->UpdateConnection(
      ConnectionInput => {
        ConnectionProperties => {
          'HOST' => 'MyValueString'
          , # key: values: HOST, PORT, USERNAME, PASSWORD, ENCRYPTED_PASSWORD, JDBC_DRIVER_JAR_URI, JDBC_DRIVER_CLASS_NAME, JDBC_ENGINE, JDBC_ENGINE_VERSION, CONFIG_FILES, INSTANCE_ID, JDBC_CONNECTION_URL, JDBC_ENFORCE_SSL, CUSTOM_JDBC_CERT, SKIP_CUSTOM_JDBC_CERT_VALIDATION, CUSTOM_JDBC_CERT_STRING, value: max: 1024
        },    # max: 100
        ConnectionType => 'JDBC',                   # values: JDBC, SFTP
        Name           => 'MyNameString',           # min: 1, max: 255
        Description    => 'MyDescriptionString',    # max: 2048; OPTIONAL
        MatchCriteria  => [
          'MyNameString', ...                       # min: 1, max: 255
        ],                                          # max: 10; OPTIONAL
        PhysicalConnectionRequirements => {
          AvailabilityZone    => 'MyNameString',    # min: 1, max: 255
          SecurityGroupIdList => [
            'MyNameString', ...                     # min: 1, max: 255
          ],                                        # max: 50; OPTIONAL
          SubnetId => 'MyNameString',               # min: 1, max: 255
        },    # OPTIONAL
      },
      Name      => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateConnection>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which the connection resides. If none is
provided, the AWS account ID is used by default.



=head2 B<REQUIRED> ConnectionInput => Glue_ConnectionInput

A C<ConnectionInput> object that redefines the connection in question.



=head2 B<REQUIRED> Name => Str

The name of the connection definition to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnection in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

