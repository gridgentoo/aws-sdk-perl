# Generated from default/object.tt
package Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ComprehendMedical::Types qw/ComprehendMedical_InputDataConfig ComprehendMedical_OutputDataConfig/;
  has DataAccessRoleArn => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has ExpirationTime => (is => 'ro', isa => Str);
  has InputDataConfig => (is => 'ro', isa => ComprehendMedical_InputDataConfig);
  has JobId => (is => 'ro', isa => Str);
  has JobName => (is => 'ro', isa => Str);
  has JobStatus => (is => 'ro', isa => Str);
  has KMSKey => (is => 'ro', isa => Str);
  has LanguageCode => (is => 'ro', isa => Str);
  has ManifestFilePath => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has ModelVersion => (is => 'ro', isa => Str);
  has OutputDataConfig => (is => 'ro', isa => ComprehendMedical_OutputDataConfig);
  has SubmitTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ManifestFilePath' => {
                                       'type' => 'Str'
                                     },
               'OutputDataConfig' => {
                                       'type' => 'ComprehendMedical_OutputDataConfig',
                                       'class' => 'Paws::ComprehendMedical::OutputDataConfig'
                                     },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'InputDataConfig' => {
                                      'class' => 'Paws::ComprehendMedical::InputDataConfig',
                                      'type' => 'ComprehendMedical_InputDataConfig'
                                    },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'JobId' => {
                            'type' => 'Str'
                          },
               'SubmitTime' => {
                                 'type' => 'Str'
                               },
               'ModelVersion' => {
                                   'type' => 'Str'
                                 },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'JobName' => {
                              'type' => 'Str'
                            },
               'DataAccessRoleArn' => {
                                        'type' => 'Str'
                                      },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Message' => {
                              'type' => 'Str'
                            },
               'ExpirationTime' => {
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

Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties object:

  $service_obj->Method(Att1 => { DataAccessRoleArn => $value, ..., SubmitTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DataAccessRoleArn

=head1 DESCRIPTION

Provides information about a detection job.

=head1 ATTRIBUTES


=head2 DataAccessRoleArn => Str

  The Amazon Resource Name (ARN) that gives Amazon Comprehend Medical
read access to your input data.


=head2 EndTime => Str

  The time that the detection job completed.


=head2 ExpirationTime => Str

  The date and time that job metadata is deleted from the server. Output
files in your S3 bucket will not be deleted. After the metadata is
deleted, the job will no longer appear in the results of the
C<ListEntitiesDetectionV2Job> or the C<ListPHIDetectionJobs> operation.


=head2 InputDataConfig => ComprehendMedical_InputDataConfig

  The input data configuration that you supplied when you created the
detection job.


=head2 JobId => Str

  The identifier assigned to the detection job.


=head2 JobName => Str

  The name that you assigned to the detection job.


=head2 JobStatus => Str

  The current status of the detection job. If the status is C<FAILED>,
the C<Message> field shows the reason for the failure.


=head2 KMSKey => Str

  The AWS Key Management Service key, if any, used to encrypt the output
files.


=head2 LanguageCode => Str

  The language code of the input documents.


=head2 ManifestFilePath => Str

  The path to the file that describes the results of a batch job.


=head2 Message => Str

  A description of the status of a job.


=head2 ModelVersion => Str

  The version of the model used to analyze the documents. The version
number looks like X.X.X. You can use this information to track the
model used for a particular batch of documents.


=head2 OutputDataConfig => ComprehendMedical_OutputDataConfig

  The output data configuration that you supplied when you created the
detection job.


=head2 SubmitTime => Str

  The time that the detection job was submitted for processing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

