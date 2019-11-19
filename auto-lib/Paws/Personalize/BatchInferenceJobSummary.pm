# Generated from default/object.tt
package Paws::Personalize::BatchInferenceJobSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has BatchInferenceJobArn => (is => 'ro', isa => Str);
  has CreationDateTime => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has JobName => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BatchInferenceJobArn' => {
                                           'type' => 'Str'
                                         },
               'JobName' => {
                              'type' => 'Str'
                            },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'Status' => {
                             'type' => 'Str'
                           },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'BatchInferenceJobArn' => 'batchInferenceJobArn',
                       'JobName' => 'jobName',
                       'CreationDateTime' => 'creationDateTime',
                       'FailureReason' => 'failureReason',
                       'Status' => 'status',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::BatchInferenceJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::BatchInferenceJobSummary object:

  $service_obj->Method(Att1 => { BatchInferenceJobArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::BatchInferenceJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchInferenceJobArn

=head1 DESCRIPTION

A truncated version of the BatchInferenceJob datatype. The
ListBatchInferenceJobs operation returns a list of batch inference job
summaries.

=head1 ATTRIBUTES


=head2 BatchInferenceJobArn => Str

  The Amazon Resource Name (ARN) of the batch inference job.


=head2 CreationDateTime => Str

  The time at which the batch inference job was created.


=head2 FailureReason => Str

  If the batch inference job failed, the reason for the failure.


=head2 JobName => Str

  The name of the batch inference job.


=head2 LastUpdatedDateTime => Str

  The time at which the batch inference job was last updated.


=head2 Status => Str

  The status of the batch inference job. The status is one of the
following values:

=over

=item *

PENDING

=item *

IN PROGRESS

=item *

ACTIVE

=item *

CREATE FAILED

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

