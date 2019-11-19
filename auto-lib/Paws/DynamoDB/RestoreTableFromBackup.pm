# Generated from json/callargs_class.tt

package Paws::DynamoDB::RestoreTableFromBackup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_GlobalSecondaryIndex DynamoDB_LocalSecondaryIndex DynamoDB_ProvisionedThroughput/;
  has BackupArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BillingModeOverride => (is => 'ro', isa => Str, predicate => 1);
  has GlobalSecondaryIndexOverride => (is => 'ro', isa => ArrayRef[DynamoDB_GlobalSecondaryIndex], predicate => 1);
  has LocalSecondaryIndexOverride => (is => 'ro', isa => ArrayRef[DynamoDB_LocalSecondaryIndex], predicate => 1);
  has ProvisionedThroughputOverride => (is => 'ro', isa => DynamoDB_ProvisionedThroughput, predicate => 1);
  has TargetTableName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreTableFromBackup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DynamoDB::RestoreTableFromBackupOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProvisionedThroughputOverride' => {
                                                    'class' => 'Paws::DynamoDB::ProvisionedThroughput',
                                                    'type' => 'DynamoDB_ProvisionedThroughput'
                                                  },
               'BackupArn' => {
                                'type' => 'Str'
                              },
               'TargetTableName' => {
                                      'type' => 'Str'
                                    },
               'GlobalSecondaryIndexOverride' => {
                                                   'type' => 'ArrayRef[DynamoDB_GlobalSecondaryIndex]',
                                                   'class' => 'Paws::DynamoDB::GlobalSecondaryIndex'
                                                 },
               'LocalSecondaryIndexOverride' => {
                                                  'class' => 'Paws::DynamoDB::LocalSecondaryIndex',
                                                  'type' => 'ArrayRef[DynamoDB_LocalSecondaryIndex]'
                                                },
               'BillingModeOverride' => {
                                          'type' => 'Str'
                                        }
             },
  'IsRequired' => {
                    'TargetTableName' => 1,
                    'BackupArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::RestoreTableFromBackup - Arguments for method RestoreTableFromBackup on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreTableFromBackup on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method RestoreTableFromBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreTableFromBackup.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $RestoreTableFromBackupOutput = $dynamodb->RestoreTableFromBackup(
      BackupArn                    => 'MyBackupArn',
      TargetTableName              => 'MyTableName',
      BillingModeOverride          => 'PROVISIONED',    # OPTIONAL
      GlobalSecondaryIndexOverride => [
        {
          IndexName => 'MyIndexName',                   # min: 3, max: 255
          KeySchema => [
            {
              AttributeName => 'MyKeySchemaAttributeName', # min: 1, max: 255
              KeyType       => 'HASH',                     # values: HASH, RANGE

            },
            ...
          ],                                               # min: 1, max: 2
          Projection => {
            NonKeyAttributes => [
              'MyNonKeyAttributeName', ...                 # min: 1, max: 255
            ],    # min: 1, max: 20; OPTIONAL
            ProjectionType => 'ALL', # values: ALL, KEYS_ONLY, INCLUDE; OPTIONAL
          },
          ProvisionedThroughput => {
            ReadCapacityUnits  => 1,    # min: 1
            WriteCapacityUnits => 1,    # min: 1

          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      LocalSecondaryIndexOverride => [
        {
          IndexName => 'MyIndexName',    # min: 3, max: 255
          KeySchema => [
            {
              AttributeName => 'MyKeySchemaAttributeName', # min: 1, max: 255
              KeyType       => 'HASH',                     # values: HASH, RANGE

            },
            ...
          ],                                               # min: 1, max: 2
          Projection => {
            NonKeyAttributes => [
              'MyNonKeyAttributeName', ...                 # min: 1, max: 255
            ],    # min: 1, max: 20; OPTIONAL
            ProjectionType => 'ALL', # values: ALL, KEYS_ONLY, INCLUDE; OPTIONAL
          },

        },
        ...
      ],                             # OPTIONAL
      ProvisionedThroughputOverride => {
        ReadCapacityUnits  => 1,     # min: 1
        WriteCapacityUnits => 1,     # min: 1

      },    # OPTIONAL
    );

    # Results:
    my $TableDescription = $RestoreTableFromBackupOutput->TableDescription;

    # Returns a L<Paws::DynamoDB::RestoreTableFromBackupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/RestoreTableFromBackup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupArn => Str

The Amazon Resource Name (ARN) associated with the backup.



=head2 BillingModeOverride => Str

The billing mode of the restored table.

Valid values are: C<"PROVISIONED">, C<"PAY_PER_REQUEST">

=head2 GlobalSecondaryIndexOverride => ArrayRef[DynamoDB_GlobalSecondaryIndex]

List of global secondary indexes for the restored table. The indexes
provided should match existing secondary indexes. You can choose to
exclude some or all of the indexes at the time of restore.



=head2 LocalSecondaryIndexOverride => ArrayRef[DynamoDB_LocalSecondaryIndex]

List of local secondary indexes for the restored table. The indexes
provided should match existing secondary indexes. You can choose to
exclude some or all of the indexes at the time of restore.



=head2 ProvisionedThroughputOverride => DynamoDB_ProvisionedThroughput

Provisioned throughput settings for the restored table.



=head2 B<REQUIRED> TargetTableName => Str

The name of the new table to which the backup must be restored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreTableFromBackup in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

