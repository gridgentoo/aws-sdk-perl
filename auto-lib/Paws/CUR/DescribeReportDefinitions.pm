# Generated from json/callargs_class.tt

package Paws::CUR::DescribeReportDefinitions;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CUR::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeReportDefinitions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CUR::DescribeReportDefinitionsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
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

Paws::CUR::DescribeReportDefinitions - Arguments for method DescribeReportDefinitions on L<Paws::CUR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReportDefinitions on the
L<AWS Cost and Usage Report Service|Paws::CUR> service. Use the attributes of this class
as arguments to method DescribeReportDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReportDefinitions.

=head1 SYNOPSIS

    my $cur = Paws->service('CUR');
    my $DescribeReportDefinitionsResponse = $cur->DescribeReportDefinitions(
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeReportDefinitionsResponse->NextToken;
    my $ReportDefinitions =
      $DescribeReportDefinitionsResponse->ReportDefinitions;

    # Returns a L<Paws::CUR::DescribeReportDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cur/DescribeReportDefinitions>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReportDefinitions in L<Paws::CUR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

