# Generated from json/callargs_class.tt

package Paws::DMS::CreateReplicationInstance;
  use Moo;
  use Types::Standard qw/Str Int Bool ArrayRef Undef/;
  use Paws::DMS::Types qw/DMS_Tag/;
  has AllocatedStorage => (is => 'ro', isa => Int, predicate => 1);
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool, predicate => 1);
  has AvailabilityZone => (is => 'ro', isa => Str, predicate => 1);
  has DnsNameServers => (is => 'ro', isa => Str, predicate => 1);
  has EngineVersion => (is => 'ro', isa => Str, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has MultiAZ => (is => 'ro', isa => Bool, predicate => 1);
  has PreferredMaintenanceWindow => (is => 'ro', isa => Str, predicate => 1);
  has PubliclyAccessible => (is => 'ro', isa => Bool, predicate => 1);
  has ReplicationInstanceClass => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ReplicationInstanceIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ReplicationSubnetGroupIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DMS_Tag], predicate => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateReplicationInstance');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DMS::CreateReplicationInstanceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'DnsNameServers' => {
                                     'type' => 'Str'
                                   },
               'ReplicationSubnetGroupIdentifier' => {
                                                       'type' => 'Str'
                                                     },
               'Tags' => {
                           'type' => 'ArrayRef[DMS_Tag]',
                           'class' => 'Paws::DMS::Tag'
                         },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'PubliclyAccessible' => {
                                         'type' => 'Bool'
                                       },
               'ReplicationInstanceClass' => {
                                               'type' => 'Str'
                                             },
               'AllocatedStorage' => {
                                       'type' => 'Int'
                                     },
               'PreferredMaintenanceWindow' => {
                                                 'type' => 'Str'
                                               },
               'ReplicationInstanceIdentifier' => {
                                                    'type' => 'Str'
                                                  },
               'VpcSecurityGroupIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'MultiAZ' => {
                              'type' => 'Bool'
                            }
             },
  'IsRequired' => {
                    'ReplicationInstanceClass' => 1,
                    'ReplicationInstanceIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationInstance - Arguments for method CreateReplicationInstance on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationInstance on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateReplicationInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationInstance.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateReplicationInstanceResponse = $dms->CreateReplicationInstance(
      ReplicationInstanceClass         => 'MyString',
      ReplicationInstanceIdentifier    => 'MyString',
      AllocatedStorage                 => 1,             # OPTIONAL
      AutoMinorVersionUpgrade          => 1,             # OPTIONAL
      AvailabilityZone                 => 'MyString',    # OPTIONAL
      DnsNameServers                   => 'MyString',    # OPTIONAL
      EngineVersion                    => 'MyString',    # OPTIONAL
      KmsKeyId                         => 'MyString',    # OPTIONAL
      MultiAZ                          => 1,             # OPTIONAL
      PreferredMaintenanceWindow       => 'MyString',    # OPTIONAL
      PubliclyAccessible               => 1,             # OPTIONAL
      ReplicationSubnetGroupIdentifier => 'MyString',    # OPTIONAL
      Tags                             => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                 # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],        # OPTIONAL
    );

    # Results:
    my $ReplicationInstance =
      $CreateReplicationInstanceResponse->ReplicationInstance;

    # Returns a L<Paws::DMS::CreateReplicationInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateReplicationInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gigabytes) to be initially allocated for the
replication instance.



=head2 AutoMinorVersionUpgrade => Bool

Indicates whether minor engine upgrades will be applied automatically
to the replication instance during the maintenance window. This
parameter defaults to C<true>.

Default: C<true>



=head2 AvailabilityZone => Str

The AWS Availability Zone where the replication instance will be
created. The default value is a random, system-chosen Availability Zone
in the endpoint's AWS Region, for example: C<us-east-1d>



=head2 DnsNameServers => Str

A list of DNS name servers supported for the replication instance.



=head2 EngineVersion => Str

The engine version number of the replication instance.



=head2 KmsKeyId => Str

An AWS KMS key identifier that is used to encrypt the data on the
replication instance.

If you don't specify a value for the C<KmsKeyId> parameter, then AWS
DMS uses your default encryption key.

AWS KMS creates the default encryption key for your AWS account. Your
AWS account has a different default encryption key for each AWS Region.



=head2 MultiAZ => Bool

Specifies whether the replication instance is a Multi-AZ deployment.
You cannot set the C<AvailabilityZone> parameter if the Multi-AZ
parameter is set to C<true>.



=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Default: A 30-minute window selected at random from an 8-hour block of
time per AWS Region, occurring on a random day of the week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the replication instance. A
value of C<true> represents an instance with a public IP address. A
value of C<false> represents an instance with a private IP address. The
default value is C<true>.



=head2 B<REQUIRED> ReplicationInstanceClass => Str

The compute and memory capacity of the replication instance as
specified by the replication instance class.

Valid Values: C<dms.t2.micro | dms.t2.small | dms.t2.medium |
dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
dms.c4.4xlarge>



=head2 B<REQUIRED> ReplicationInstanceIdentifier => Str

The replication instance identifier. This parameter is stored as a
lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<myrepinstance>



=head2 ReplicationSubnetGroupIdentifier => Str

A subnet group to associate with the replication instance.



=head2 Tags => ArrayRef[DMS_Tag]

One or more tags to be assigned to the replication instance.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

Specifies the VPC security group to be used with the replication
instance. The VPC security group must work with the VPC containing the
replication instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationInstance in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

