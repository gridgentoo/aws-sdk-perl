# Generated from json/callargs_class.tt

package Paws::CodePipeline::PutJobFailureResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_FailureDetails/;
  has FailureDetails => (is => 'ro', isa => CodePipeline_FailureDetails, required => 1, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutJobFailureResult');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FailureDetails' => 'failureDetails',
                       'JobId' => 'jobId'
                     },
  'IsRequired' => {
                    'JobId' => 1,
                    'FailureDetails' => 1
                  },
  'types' => {
               'FailureDetails' => {
                                     'type' => 'CodePipeline_FailureDetails',
                                     'class' => 'Paws::CodePipeline::FailureDetails'
                                   },
               'JobId' => {
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

Paws::CodePipeline::PutJobFailureResult - Arguments for method PutJobFailureResult on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutJobFailureResult on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PutJobFailureResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutJobFailureResult.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->PutJobFailureResult(
      FailureDetails => {
        Message => 'MyMessage',    # min: 1, max: 5000
        Type    => 'JobFailed'
        , # values: JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
        ExternalExecutionId => 'MyExecutionId',    # min: 1, max: 1500; OPTIONAL
      },
      JobId => 'MyJobId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PutJobFailureResult>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailureDetails => CodePipeline_FailureDetails

The details about the failure of a job.



=head2 B<REQUIRED> JobId => Str

The unique system-generated ID of the job that failed. This is the same
ID returned from C<PollForJobs>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutJobFailureResult in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

