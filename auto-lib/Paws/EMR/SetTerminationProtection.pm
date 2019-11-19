# Generated from json/callargs_class.tt

package Paws::EMR::SetTerminationProtection;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::EMR::Types qw//;
  has JobFlowIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has TerminationProtected => (is => 'ro', isa => Bool, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SetTerminationProtection');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'JobFlowIds' => 1,
                    'TerminationProtected' => 1
                  },
  'types' => {
               'TerminationProtected' => {
                                           'type' => 'Bool'
                                         },
               'JobFlowIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::SetTerminationProtection - Arguments for method SetTerminationProtection on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTerminationProtection on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method SetTerminationProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTerminationProtection.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->SetTerminationProtection(
      JobFlowIds => [
        'MyXmlString', ...    # max: 10280
      ],
      TerminationProtected => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/SetTerminationProtection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobFlowIds => ArrayRef[Str|Undef]

A list of strings that uniquely identify the clusters to protect. This
identifier is returned by RunJobFlow and can also be obtained from
DescribeJobFlows .



=head2 B<REQUIRED> TerminationProtected => Bool

A Boolean that indicates whether to protect the cluster and prevent the
Amazon EC2 instances in the cluster from shutting down due to API
calls, user intervention, or job-flow error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTerminationProtection in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

