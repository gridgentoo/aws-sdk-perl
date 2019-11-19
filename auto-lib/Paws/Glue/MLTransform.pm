# Generated from default/object.tt
package Paws::Glue::MLTransform;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Num/;
  use Paws::Glue::Types qw/Glue_EvaluationMetrics Glue_GlueTable Glue_SchemaColumn Glue_TransformParameters/;
  has CreatedOn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EvaluationMetrics => (is => 'ro', isa => Glue_EvaluationMetrics);
  has InputRecordTables => (is => 'ro', isa => ArrayRef[Glue_GlueTable]);
  has LabelCount => (is => 'ro', isa => Int);
  has LastModifiedOn => (is => 'ro', isa => Str);
  has MaxCapacity => (is => 'ro', isa => Num);
  has MaxRetries => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has NumberOfWorkers => (is => 'ro', isa => Int);
  has Parameters => (is => 'ro', isa => Glue_TransformParameters);
  has Role => (is => 'ro', isa => Str);
  has Schema => (is => 'ro', isa => ArrayRef[Glue_SchemaColumn]);
  has Status => (is => 'ro', isa => Str);
  has Timeout => (is => 'ro', isa => Int);
  has TransformId => (is => 'ro', isa => Str);
  has WorkerType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EvaluationMetrics' => {
                                        'type' => 'Glue_EvaluationMetrics',
                                        'class' => 'Paws::Glue::EvaluationMetrics'
                                      },
               'Parameters' => {
                                 'class' => 'Paws::Glue::TransformParameters',
                                 'type' => 'Glue_TransformParameters'
                               },
               'MaxRetries' => {
                                 'type' => 'Int'
                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'Status' => {
                             'type' => 'Str'
                           },
               'MaxCapacity' => {
                                  'type' => 'Num'
                                },
               'NumberOfWorkers' => {
                                      'type' => 'Int'
                                    },
               'LastModifiedOn' => {
                                     'type' => 'Str'
                                   },
               'WorkerType' => {
                                 'type' => 'Str'
                               },
               'LabelCount' => {
                                 'type' => 'Int'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Schema' => {
                             'class' => 'Paws::Glue::SchemaColumn',
                             'type' => 'ArrayRef[Glue_SchemaColumn]'
                           },
               'TransformId' => {
                                  'type' => 'Str'
                                },
               'Role' => {
                           'type' => 'Str'
                         },
               'Timeout' => {
                              'type' => 'Int'
                            },
               'CreatedOn' => {
                                'type' => 'Str'
                              },
               'InputRecordTables' => {
                                        'class' => 'Paws::Glue::GlueTable',
                                        'type' => 'ArrayRef[Glue_GlueTable]'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::MLTransform

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::MLTransform object:

  $service_obj->Method(Att1 => { CreatedOn => $value, ..., WorkerType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::MLTransform object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedOn

=head1 DESCRIPTION

A structure for a machine learning transform.

=head1 ATTRIBUTES


=head2 CreatedOn => Str

  A timestamp. The time and date that this machine learning transform was
created.


=head2 Description => Str

  A user-defined, long-form description text for the machine learning
transform. Descriptions are not guaranteed to be unique and can be
changed at any time.


=head2 EvaluationMetrics => Glue_EvaluationMetrics

  An C<EvaluationMetrics> object. Evaluation metrics provide an estimate
of the quality of your machine learning transform.


=head2 InputRecordTables => ArrayRef[Glue_GlueTable]

  A list of AWS Glue table definitions used by the transform.


=head2 LabelCount => Int

  A count identifier for the labeling files generated by AWS Glue for
this transform. As you create a better transform, you can iteratively
download, label, and upload the labeling file.


=head2 LastModifiedOn => Str

  A timestamp. The last point in time when this machine learning
transform was modified.


=head2 MaxCapacity => Num

  The number of AWS Glue data processing units (DPUs) that are allocated
to task runs for this transform. You can allocate from 2 to 100 DPUs;
the default is 10. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
information, see the AWS Glue pricing page
(https://aws.amazon.com/glue/pricing/).

When the C<WorkerType> field is set to a value other than C<Standard>,
the C<MaxCapacity> field is set automatically and becomes read-only.


=head2 MaxRetries => Int

  The maximum number of times to retry after an C<MLTaskRun> of the
machine learning transform fails.


=head2 Name => Str

  A user-defined name for the machine learning transform. Names are not
guaranteed unique and can be changed at any time.


=head2 NumberOfWorkers => Int

  The number of workers of a defined C<workerType> that are allocated
when a task of the transform runs.


=head2 Parameters => Glue_TransformParameters

  A C<TransformParameters> object. You can use parameters to tune
(customize) the behavior of the machine learning transform by
specifying what data it learns from and your preference on various
tradeoffs (such as precious vs. recall, or accuracy vs. cost).


=head2 Role => Str

  The name or Amazon Resource Name (ARN) of the IAM role with the
required permissions. This role needs permission to your Amazon Simple
Storage Service (Amazon S3) sources, targets, temporary directory,
scripts, and any libraries used by the task run for this transform.


=head2 Schema => ArrayRef[Glue_SchemaColumn]

  A map of key-value pairs representing the columns and data types that
this transform can run against. Has an upper bound of 100 columns.


=head2 Status => Str

  The current status of the machine learning transform.


=head2 Timeout => Int

  The timeout in minutes of the machine learning transform.


=head2 TransformId => Str

  The unique transform ID that is generated for the machine learning
transform. The ID is guaranteed to be unique and does not change.


=head2 WorkerType => Str

  The type of predefined worker that is allocated when a task of this
transform runs. Accepts a value of Standard, G.1X, or G.2X.

=over

=item *

For the C<Standard> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 50GB disk, and 2 executors per worker.

=item *

For the C<G.1X> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 64GB disk, and 1 executor per worker.

=item *

For the C<G.2X> worker type, each worker provides 8 vCPU, 32 GB of
memory and a 128GB disk, and 1 executor per worker.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

