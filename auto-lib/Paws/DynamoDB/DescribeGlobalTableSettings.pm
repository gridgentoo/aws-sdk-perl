
package Paws::DynamoDB::DescribeGlobalTableSettings;
  use Moose;
  has GlobalTableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGlobalTableSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DescribeGlobalTableSettingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeGlobalTableSettings - Arguments for method DescribeGlobalTableSettings on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGlobalTableSettings on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DescribeGlobalTableSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGlobalTableSettings.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $DescribeGlobalTableSettingsOutput =
      $dynamodb->DescribeGlobalTableSettings(
      GlobalTableName => 'MyTableName',

      );

    # Results:
    my $ReplicaSettings = $DescribeGlobalTableSettingsOutput->ReplicaSettings;
    my $GlobalTableName = $DescribeGlobalTableSettingsOutput->GlobalTableName;

    # Returns a L<Paws::DynamoDB::DescribeGlobalTableSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalTableName => Str

The name of the global table to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGlobalTableSettings in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

