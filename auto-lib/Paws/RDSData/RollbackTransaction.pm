
package Paws::RDSData::RollbackTransaction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDSData::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SecretArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TransactionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RollbackTransaction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/RollbackTransaction');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDSData::RollbackTransactionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecretArn' => {
                                'type' => 'Str'
                              },
               'TransactionId' => {
                                    'type' => 'Str'
                                  },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'SecretArn' => 1,
                    'TransactionId' => 1,
                    'ResourceArn' => 1
                  },
  'NameInRequest' => {
                       'TransactionId' => 'transactionId',
                       'SecretArn' => 'secretArn',
                       'ResourceArn' => 'resourceArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::RollbackTransaction - Arguments for method RollbackTransaction on L<Paws::RDSData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RollbackTransaction on the
L<AWS RDS DataService|Paws::RDSData> service. Use the attributes of this class
as arguments to method RollbackTransaction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RollbackTransaction.

=head1 SYNOPSIS

    my $rds-data = Paws->service('RDSData');
    my $RollbackTransactionResponse = $rds -data->RollbackTransaction(
      ResourceArn   => 'MyArn',
      SecretArn     => 'MyArn',
      TransactionId => 'MyId',

    );

    # Results:
    my $TransactionStatus = $RollbackTransactionResponse->TransactionStatus;

    # Returns a L<Paws::RDSData::RollbackTransactionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-data/RollbackTransaction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.



=head2 B<REQUIRED> SecretArn => Str

The name or ARN of the secret that enables access to the DB cluster.



=head2 B<REQUIRED> TransactionId => Str

The identifier of the transaction to roll back.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RollbackTransaction in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

