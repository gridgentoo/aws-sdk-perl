package Paws::CodeBuild::TestReportSummary;
  use Moose;
  has DurationInNanoSeconds => (is => 'ro', isa => 'Int', request_name => 'durationInNanoSeconds', traits => ['NameInRequest'], required => 1);
  has StatusCounts => (is => 'ro', isa => 'Paws::CodeBuild::ReportStatusCounts', request_name => 'statusCounts', traits => ['NameInRequest'], required => 1);
  has Total => (is => 'ro', isa => 'Int', request_name => 'total', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::TestReportSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::TestReportSummary object:

  $service_obj->Method(Att1 => { DurationInNanoSeconds => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::TestReportSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInNanoSeconds

=head1 DESCRIPTION

Information about a test report.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DurationInNanoSeconds => Int

  The number of nanoseconds it took to run all of the test cases in this
report.


=head2 B<REQUIRED> StatusCounts => L<Paws::CodeBuild::ReportStatusCounts>

  A map that contains the number of each type of status returned by the
test results in this C<TestReportSummary>.


=head2 B<REQUIRED> Total => Int

  The number of test cases in this C<TestReportSummary>. The total
includes truncated test cases.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

