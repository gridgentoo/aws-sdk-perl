
package Paws::IoT::CreateJob;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw/IoT_AbortConfig IoT_PresignedUrlConfig IoT_TimeoutConfig IoT_JobExecutionsRolloutConfig IoT_Tag/;
  has AbortConfig => (is => 'ro', isa => IoT_AbortConfig, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Document => (is => 'ro', isa => Str, predicate => 1);
  has DocumentSource => (is => 'ro', isa => Str, predicate => 1);
  has JobExecutionsRolloutConfig => (is => 'ro', isa => IoT_JobExecutionsRolloutConfig, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PresignedUrlConfig => (is => 'ro', isa => IoT_PresignedUrlConfig, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoT_Tag], predicate => 1);
  has Targets => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has TargetSelection => (is => 'ro', isa => Str, predicate => 1);
  has TimeoutConfig => (is => 'ro', isa => IoT_TimeoutConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::CreateJobResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'JobId' => 1,
                    'Targets' => 1
                  },
  'NameInRequest' => {
                       'TimeoutConfig' => 'timeoutConfig',
                       'PresignedUrlConfig' => 'presignedUrlConfig',
                       'JobExecutionsRolloutConfig' => 'jobExecutionsRolloutConfig',
                       'AbortConfig' => 'abortConfig',
                       'Document' => 'document',
                       'Tags' => 'tags',
                       'Targets' => 'targets',
                       'DocumentSource' => 'documentSource',
                       'TargetSelection' => 'targetSelection',
                       'Description' => 'description'
                     },
  'types' => {
               'TimeoutConfig' => {
                                    'class' => 'Paws::IoT::TimeoutConfig',
                                    'type' => 'IoT_TimeoutConfig'
                                  },
               'JobExecutionsRolloutConfig' => {
                                                 'class' => 'Paws::IoT::JobExecutionsRolloutConfig',
                                                 'type' => 'IoT_JobExecutionsRolloutConfig'
                                               },
               'Targets' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'JobId' => {
                            'type' => 'Str'
                          },
               'Tags' => {
                           'class' => 'Paws::IoT::Tag',
                           'type' => 'ArrayRef[IoT_Tag]'
                         },
               'PresignedUrlConfig' => {
                                         'class' => 'Paws::IoT::PresignedUrlConfig',
                                         'type' => 'IoT_PresignedUrlConfig'
                                       },
               'AbortConfig' => {
                                  'class' => 'Paws::IoT::AbortConfig',
                                  'type' => 'IoT_AbortConfig'
                                },
               'Document' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DocumentSource' => {
                                     'type' => 'Str'
                                   },
               'TargetSelection' => {
                                      'type' => 'Str'
                                    }
             },
  'ParamInURI' => {
                    'JobId' => 'jobId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateJob - Arguments for method CreateJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateJobResponse = $iot->CreateJob(
      JobId       => 'MyJobId',
      Targets     => [ 'MyTargetArn', ... ],
      AbortConfig => {
        CriteriaList => [
          {
            Action      => 'CANCEL',  # values: CANCEL
            FailureType => 'FAILED',  # values: FAILED, REJECTED, TIMED_OUT, ALL
            MinNumberOfExecutedThings => 1,    # min: 1
            ThresholdPercentage       => 1,    # max: 100

          },
          ...
        ],                                     # min: 1

      },    # OPTIONAL
      Description                => 'MyJobDescription',       # OPTIONAL
      Document                   => 'MyJobDocument',          # OPTIONAL
      DocumentSource             => 'MyJobDocumentSource',    # OPTIONAL
      JobExecutionsRolloutConfig => {
        ExponentialRate => {
          BaseRatePerMinute    => 1,    # min: 1, max: 1000
          IncrementFactor      => 1,    # min: 1, max: 5
          RateIncreaseCriteria => {
            NumberOfNotifiedThings  => 1,    # min: 1; OPTIONAL
            NumberOfSucceededThings => 1,    # min: 1; OPTIONAL
          },

        },    # OPTIONAL
        MaximumPerMinute => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      PresignedUrlConfig => {
        ExpiresInSec => 1,              # min: 60, max: 3600; OPTIONAL
        RoleArn      => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      TargetSelection => 'CONTINUOUS',    # OPTIONAL
      TimeoutConfig   => {
        InProgressTimeoutInMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Description = $CreateJobResponse->Description;
    my $JobArn      = $CreateJobResponse->JobArn;
    my $JobId       = $CreateJobResponse->JobId;

    # Returns a L<Paws::IoT::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateJob>

=head1 ATTRIBUTES


=head2 AbortConfig => IoT_AbortConfig

Allows you to create criteria to abort a job.



=head2 Description => Str

A short text description of the job.



=head2 Document => Str

The job document.

If the job document resides in an S3 bucket, you must use a placeholder
link when specifying the document.

The placeholder link is of the following form:

C<${aws:iot:s3-presigned-url:https://s3.amazonaws.com/I<bucket>/I<key>}>

where I<bucket> is your bucket name and I<key> is the object in the
bucket to which you are linking.



=head2 DocumentSource => Str

An S3 link to the job document.



=head2 JobExecutionsRolloutConfig => IoT_JobExecutionsRolloutConfig

Allows you to create a staged rollout of the job.



=head2 B<REQUIRED> JobId => Str

A job identifier which must be unique for your AWS account. We
recommend using a UUID. Alpha-numeric characters, "-" and "_" are valid
for use here.



=head2 PresignedUrlConfig => IoT_PresignedUrlConfig

Configuration information for pre-signed S3 URLs.



=head2 Tags => ArrayRef[IoT_Tag]

Metadata which can be used to manage the job.



=head2 B<REQUIRED> Targets => ArrayRef[Str|Undef]

A list of things and thing groups to which the job should be sent.



=head2 TargetSelection => Str

Specifies whether the job will continue to run (CONTINUOUS), or will be
complete after all those things specified as targets have completed the
job (SNAPSHOT). If continuous, the job may also be run on a thing when
a change is detected in a target. For example, a job will run on a
thing when the thing is added to a target group, even after the job was
completed by all things originally in the group.

Valid values are: C<"CONTINUOUS">, C<"SNAPSHOT">

=head2 TimeoutConfig => IoT_TimeoutConfig

Specifies the amount of time each device has to finish its execution of
the job. The timer is started when the job execution status is set to
C<IN_PROGRESS>. If the job execution status is not set to another
terminal state before the time expires, it will be automatically set to
C<TIMED_OUT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

