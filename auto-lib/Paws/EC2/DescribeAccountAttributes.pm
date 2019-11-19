
package Paws::EC2::DescribeAccountAttributes;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Bool/;
  use Paws::EC2::Types qw//;
  has AttributeNames => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAccountAttributes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeAccountAttributesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'AttributeNames' => 'attributeName'
                     },
  'types' => {
               'AttributeNames' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'DryRun' => {
                             'type' => 'Bool'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAccountAttributes - Arguments for method DescribeAccountAttributes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountAttributes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeAccountAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountAttributes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a single attribute for your AWS account
    # This example describes the supported-platforms attribute for your AWS
    # account.
    my $DescribeAccountAttributesResult = $ec2->DescribeAccountAttributes(
      'AttributeNames' => ['supported-platforms'] );

    # Results:
    my $AccountAttributes = $DescribeAccountAttributesResult->AccountAttributes;

    # Returns a L<Paws::EC2::DescribeAccountAttributesResult> object.
    # To describe all attributes for your AWS account
    # This example describes the attributes for your AWS account.
    my $DescribeAccountAttributesResult = $ec2->DescribeAccountAttributes();

    # Results:
    my $AccountAttributes = $DescribeAccountAttributesResult->AccountAttributes;

    # Returns a L<Paws::EC2::DescribeAccountAttributesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeAccountAttributes>

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

The account attribute names.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountAttributes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

