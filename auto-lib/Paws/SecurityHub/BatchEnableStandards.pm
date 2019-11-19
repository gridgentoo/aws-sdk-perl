
package Paws::SecurityHub::BatchEnableStandards;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_StandardsSubscriptionRequest/;
  has StandardsSubscriptionRequests => (is => 'ro', isa => ArrayRef[SecurityHub_StandardsSubscriptionRequest], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchEnableStandards');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/standards/register');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SecurityHub::BatchEnableStandardsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StandardsSubscriptionRequests' => {
                                                    'class' => 'Paws::SecurityHub::StandardsSubscriptionRequest',
                                                    'type' => 'ArrayRef[SecurityHub_StandardsSubscriptionRequest]'
                                                  }
             },
  'IsRequired' => {
                    'StandardsSubscriptionRequests' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchEnableStandards - Arguments for method BatchEnableStandards on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchEnableStandards on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchEnableStandards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchEnableStandards.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchEnableStandardsResponse = $securityhub->BatchEnableStandards(
      StandardsSubscriptionRequests => [
        {
          StandardsArn   => 'MyNonEmptyString',
          StandardsInput => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $StandardsSubscriptions =
      $BatchEnableStandardsResponse->StandardsSubscriptions;

    # Returns a L<Paws::SecurityHub::BatchEnableStandardsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchEnableStandards>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StandardsSubscriptionRequests => ArrayRef[SecurityHub_StandardsSubscriptionRequest]

The list of standards compliance checks to enable.

In this release, Security Hub supports only the CIS AWS Foundations
standard.

The ARN for the standard is
C<arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchEnableStandards in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

