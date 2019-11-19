# Generated from callargs_class.tt

package Paws::RDS::RestoreDBClusterFromS3;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::RDS::Types qw/RDS_Tag/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has BacktrackWindow => (is => 'ro', isa => Int, predicate => 1);
  has BackupRetentionPeriod => (is => 'ro', isa => Int, predicate => 1);
  has CharacterSetName => (is => 'ro', isa => Str, predicate => 1);
  has CopyTagsToSnapshot => (is => 'ro', isa => Bool, predicate => 1);
  has DatabaseName => (is => 'ro', isa => Str, predicate => 1);
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DBSubnetGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DeletionProtection => (is => 'ro', isa => Bool, predicate => 1);
  has EnableCloudwatchLogsExports => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => Bool, predicate => 1);
  has Engine => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EngineVersion => (is => 'ro', isa => Str, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has MasterUsername => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MasterUserPassword => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OptionGroupName => (is => 'ro', isa => Str, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has PreferredBackupWindow => (is => 'ro', isa => Str, predicate => 1);
  has PreferredMaintenanceWindow => (is => 'ro', isa => Str, predicate => 1);
  has S3BucketName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has S3IngestionRoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has S3Prefix => (is => 'ro', isa => Str, predicate => 1);
  has SourceEngine => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceEngineVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StorageEncrypted => (is => 'ro', isa => Bool, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RDS_Tag], predicate => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreDBClusterFromS3');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::RestoreDBClusterFromS3Result');
  class_has _result_key => (isa => Str, is => 'ro', default => 'RestoreDBClusterFromS3Result');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DBClusterIdentifier' => 1,
                    'SourceEngineVersion' => 1,
                    'MasterUserPassword' => 1,
                    'S3IngestionRoleArn' => 1,
                    'S3BucketName' => 1,
                    'SourceEngine' => 1,
                    'Engine' => 1,
                    'MasterUsername' => 1
                  },
  'types' => {
               'EnableCloudwatchLogsExports' => {
                                                  'type' => 'ArrayRef[Str|Undef]'
                                                },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'DBSubnetGroupName' => {
                                        'type' => 'Str'
                                      },
               'SourceEngine' => {
                                   'type' => 'Str'
                                 },
               'OptionGroupName' => {
                                      'type' => 'Str'
                                    },
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
                                                },
               'Port' => {
                           'type' => 'Int'
                         },
               'BackupRetentionPeriod' => {
                                            'type' => 'Int'
                                          },
               'DeletionProtection' => {
                                         'type' => 'Bool'
                                       },
               'CharacterSetName' => {
                                       'type' => 'Str'
                                     },
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'SourceEngineVersion' => {
                                          'type' => 'Str'
                                        },
               'EnableIAMDatabaseAuthentication' => {
                                                      'type' => 'Bool'
                                                    },
               'Engine' => {
                             'type' => 'Str'
                           },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'VpcSecurityGroupIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'Tags' => {
                           'class' => 'Paws::RDS::Tag',
                           'type' => 'ArrayRef[RDS_Tag]'
                         },
               'BacktrackWindow' => {
                                      'type' => 'Int'
                                    },
               'StorageEncrypted' => {
                                       'type' => 'Bool'
                                     },
               'MasterUsername' => {
                                     'type' => 'Str'
                                   },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'S3Prefix' => {
                               'type' => 'Str'
                             },
               'MasterUserPassword' => {
                                         'type' => 'Str'
                                       },
               'S3IngestionRoleArn' => {
                                         'type' => 'Str'
                                       },
               'CopyTagsToSnapshot' => {
                                         'type' => 'Bool'
                                       },
               'S3BucketName' => {
                                   'type' => 'Str'
                                 },
               'PreferredBackupWindow' => {
                                            'type' => 'Str'
                                          },
               'PreferredMaintenanceWindow' => {
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

Paws::RDS::RestoreDBClusterFromS3 - Arguments for method RestoreDBClusterFromS3 on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromS3 on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBClusterFromS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromS3.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $RestoreDBClusterFromS3Result = $rds->RestoreDBClusterFromS3(
      DBClusterIdentifier             => 'MyString',
      Engine                          => 'MyString',
      MasterUserPassword              => 'MyString',
      MasterUsername                  => 'MyString',
      S3BucketName                    => 'MyString',
      S3IngestionRoleArn              => 'MyString',
      SourceEngine                    => 'MyString',
      SourceEngineVersion             => 'MyString',
      AvailabilityZones               => [ 'MyString', ... ],    # OPTIONAL
      BacktrackWindow                 => 1,                      # OPTIONAL
      BackupRetentionPeriod           => 1,                      # OPTIONAL
      CharacterSetName                => 'MyString',             # OPTIONAL
      CopyTagsToSnapshot              => 1,                      # OPTIONAL
      DBClusterParameterGroupName     => 'MyString',             # OPTIONAL
      DBSubnetGroupName               => 'MyString',             # OPTIONAL
      DatabaseName                    => 'MyString',             # OPTIONAL
      DeletionProtection              => 1,                      # OPTIONAL
      EnableCloudwatchLogsExports     => [ 'MyString', ... ],    # OPTIONAL
      EnableIAMDatabaseAuthentication => 1,                      # OPTIONAL
      EngineVersion                   => 'MyString',             # OPTIONAL
      KmsKeyId                        => 'MyString',             # OPTIONAL
      OptionGroupName                 => 'MyString',             # OPTIONAL
      Port                            => 1,                      # OPTIONAL
      PreferredBackupWindow           => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow      => 'MyString',             # OPTIONAL
      S3Prefix                        => 'MyString',             # OPTIONAL
      StorageEncrypted                => 1,                      # OPTIONAL
      Tags                            => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                         # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],                # OPTIONAL
    );

    # Results:
    my $DBCluster = $RestoreDBClusterFromS3Result->DBCluster;

    # Returns a L<Paws::RDS::RestoreDBClusterFromS3Result> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterFromS3>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Availability Zones (AZs) where instances in the restored DB
cluster can be created.



=head2 BacktrackWindow => Int

The target backtrack window, in seconds. To disable backtracking, set
this value to 0.

Default: 0

Constraints:

=over

=item *

If specified, this value must be set to a number from 0 to 259,200 (72
hours).

=back




=head2 BackupRetentionPeriod => Int

The number of days for which automated backups of the restored DB
cluster are retained. You must specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CharacterSetName => Str

A value that indicates that the restored DB cluster should be
associated with the specified CharacterSet.



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the restored DB
cluster to snapshots of the restored DB cluster. The default is not to
copy them.



=head2 DatabaseName => Str

The database name for the restored DB cluster.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to create from the source data in the Amazon
S3 bucket. This parameter is isn't case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with the
restored DB cluster. If this argument is omitted, C<default.aurora5.6>
is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 DBSubnetGroupName => Str

A DB subnet group to associate with the restored DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Aurora User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled.

For more information, see IAM Database Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon Aurora User Guide.>



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for the restored DB cluster.

Valid Values: C<aurora>, C<aurora-postgresql>



=head2 EngineVersion => Str

The version number of the database engine to use.

To list all of the available engine versions for C<aurora> (for MySQL
5.6-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for C<aurora-mysql> (for
MySQL 5.7-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora-mysql --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for C<aurora-postgresql>,
use the following command:

C<aws rds describe-db-engine-versions --engine aurora-postgresql
--query "DBEngineVersions[].EngineVersion">

B<Aurora MySQL>

Example: C<5.6.10a>, C<5.6.mysql_aurora.1.19.2>, C<5.7.12>,
C<5.7.mysql_aurora.2.04.5>

B<Aurora PostgreSQL>

Example: C<9.6.3>, C<10.7>



=head2 KmsKeyId => Str

The AWS KMS key identifier for an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB cluster with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KM encryption key.

If the StorageEncrypted parameter is enabled, and you do not specify a
value for the C<KmsKeyId> parameter, then Amazon RDS will use your
default encryption key. AWS KMS creates the default encryption key for
your AWS account. Your AWS account has a different default encryption
key for each AWS Region.



=head2 B<REQUIRED> MasterUsername => Str

The name of the master user for the restored DB cluster.

Constraints:

=over

=item *

Must be 1 to 16 letters or numbers.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back




=head2 B<REQUIRED> MasterUserPassword => Str

The password for the master database user. This password can contain
any printable ASCII character except "/", """, or "@".

Constraints: Must contain from 8 to 41 characters.



=head2 OptionGroupName => Str

A value that indicates that the restored DB cluster should be
associated with the specified option group.

Permanent options can't be removed from an option group. An option
group can't be removed from a DB cluster once it is associated with a
DB cluster.



=head2 Port => Int

The port number on which the instances in the restored DB cluster
accept connections.

Default: C<3306>



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. To see the time blocks available,
see Adjusting the Preferred Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week. To see the time blocks available, see Adjusting the Preferred
Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 B<REQUIRED> S3BucketName => Str

The name of the Amazon S3 bucket that contains the data used to create
the Amazon Aurora DB cluster.



=head2 B<REQUIRED> S3IngestionRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that authorizes Amazon RDS to access the Amazon
S3 bucket on your behalf.



=head2 S3Prefix => Str

The prefix for all of the file names that contain the data used to
create the Amazon Aurora DB cluster. If you do not specify a
B<SourceS3Prefix> value, then the Amazon Aurora DB cluster is created
by using all of the files in the Amazon S3 bucket.



=head2 B<REQUIRED> SourceEngine => Str

The identifier for the database engine that was backed up to create the
files stored in the Amazon S3 bucket.

Valid values: C<mysql>



=head2 B<REQUIRED> SourceEngineVersion => Str

The version of the database that the backup files were created from.

MySQL version 5.5 and 5.6 are supported.

Example: C<5.6.22>



=head2 StorageEncrypted => Bool

A value that indicates whether the restored DB cluster is encrypted.



=head2 Tags => ArrayRef[RDS_Tag]





=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the restored DB
cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromS3 in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

