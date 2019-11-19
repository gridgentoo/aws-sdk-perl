# Generated from json/callargs_class.tt

package Paws::Comprehend::ListDocumentClassificationJobs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Comprehend::Types qw/Comprehend_DocumentClassificationJobFilter/;
  has Filter => (is => 'ro', isa => Comprehend_DocumentClassificationJobFilter, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListDocumentClassificationJobs');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Comprehend::ListDocumentClassificationJobsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Filter' => {
                             'type' => 'Comprehend_DocumentClassificationJobFilter',
                             'class' => 'Paws::Comprehend::DocumentClassificationJobFilter'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassificationJobs - Arguments for method ListDocumentClassificationJobs on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDocumentClassificationJobs on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ListDocumentClassificationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDocumentClassificationJobs.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ListDocumentClassificationJobsResponse =
      $comprehend->ListDocumentClassificationJobs(
      Filter => {
        JobName   => 'MyJobName',    # min: 1, max: 256; OPTIONAL
        JobStatus => 'SUBMITTED'
        , # values: SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED; OPTIONAL
        SubmitTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        SubmitTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $DocumentClassificationJobPropertiesList =
      $ListDocumentClassificationJobsResponse
      ->DocumentClassificationJobPropertiesList;
    my $NextToken = $ListDocumentClassificationJobsResponse->NextToken;

 # Returns a L<Paws::Comprehend::ListDocumentClassificationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ListDocumentClassificationJobs>

=head1 ATTRIBUTES


=head2 Filter => Comprehend_DocumentClassificationJobFilter

Filters the jobs that are returned. You can filter jobs on their names,
status, or the date and time that they were submitted. You can only set
one filter at a time.



=head2 MaxResults => Int

The maximum number of results to return in each page. The default is
100.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDocumentClassificationJobs in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

