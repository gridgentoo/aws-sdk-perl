package Paws::Glue::Connection;
  use Moose;
  has ConnectionProperties => (is => 'ro', isa => 'Paws::Glue::ConnectionProperties');
  has ConnectionType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedBy => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has MatchCriteria => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has PhysicalConnectionRequirements => (is => 'ro', isa => 'Paws::Glue::PhysicalConnectionRequirements');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Connection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Connection object:

  $service_obj->Method(Att1 => { ConnectionProperties => $value, ..., PhysicalConnectionRequirements => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Connection object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionProperties

=head1 DESCRIPTION

Defines a connection to a data source.

=head1 ATTRIBUTES


=head2 ConnectionProperties => L<Paws::Glue::ConnectionProperties>

  These key-value pairs define parameters for the connection:

=over

=item *

C<HOST> - The host URI: either the fully qualified domain name (FQDN)
or the IPv4 address of the database host.

=item *

C<PORT> - The port number, between 1024 and 65535, of the port on which
the database host is listening for database connections.

=item *

C<USER_NAME> - The name under which to log in to the database. The
value string for C<USER_NAME> is "C<USERNAME>".

=item *

C<PASSWORD> - A password, if one is used, for the user name.

=item *

C<ENCRYPTED_PASSWORD> - When you enable connection password protection
by setting C<ConnectionPasswordEncryption> in the Data Catalog
encryption settings, this field stores the encrypted password.

=item *

C<JDBC_DRIVER_JAR_URI> - The Amazon Simple Storage Service (Amazon S3)
path of the JAR file that contains the JDBC driver to use.

=item *

C<JDBC_DRIVER_CLASS_NAME> - The class name of the JDBC driver to use.

=item *

C<JDBC_ENGINE> - The name of the JDBC engine to use.

=item *

C<JDBC_ENGINE_VERSION> - The version of the JDBC engine to use.

=item *

C<CONFIG_FILES> - (Reserved for future use.)

=item *

C<INSTANCE_ID> - The instance ID to use.

=item *

C<JDBC_CONNECTION_URL> - The URL for the JDBC connection.

=item *

C<JDBC_ENFORCE_SSL> - A Boolean string (true, false) specifying whether
Secure Sockets Layer (SSL) with hostname matching is enforced for the
JDBC connection on the client. The default is false.

=item *

C<CUSTOM_JDBC_CERT> - An Amazon S3 location specifying the customer's
root certificate. AWS Glue uses this root certificate to validate the
customerE<rsquo>s certificate when connecting to the customer database.
AWS Glue only handles X.509 certificates. The certificate provided must
be DER-encoded and supplied in Base64 encoding PEM format.

=item *

C<SKIP_CUSTOM_JDBC_CERT_VALIDATION> - By default, this is C<false>. AWS
Glue validates the Signature algorithm and Subject Public Key Algorithm
for the customer certificate. The only permitted algorithms for the
Signature algorithm are SHA256withRSA, SHA384withRSA or SHA512withRSA.
For the Subject Public Key Algorithm, the key length must be at least
2048. You can set the value of this property to C<true> to skip AWS
GlueE<rsquo>s validation of the customer certificate.

=item *

C<CUSTOM_JDBC_CERT_STRING> - A custom JDBC certificate string which is
used for domain match or distinguished name match to prevent a
man-in-the-middle attack. In Oracle database, this is used as the
C<SSL_SERVER_CERT_DN>; in Microsoft SQL Server, this is used as the
C<hostNameInCertificate>.

=back



=head2 ConnectionType => Str

  The type of the connection. Currently, only JDBC is supported; SFTP is
not supported.


=head2 CreationTime => Str

  The time that this connection definition was created.


=head2 Description => Str

  The description of the connection.


=head2 LastUpdatedBy => Str

  The user, group, or role that last updated this connection definition.


=head2 LastUpdatedTime => Str

  The last time that this connection definition was updated.


=head2 MatchCriteria => ArrayRef[Str|Undef]

  A list of criteria that can be used in selecting this connection.


=head2 Name => Str

  The name of the connection definition.


=head2 PhysicalConnectionRequirements => L<Paws::Glue::PhysicalConnectionRequirements>

  A map of physical connection requirements, such as virtual private
cloud (VPC) and C<SecurityGroup>, that are needed to make this
connection successfully.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

