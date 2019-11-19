# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::ApplicationDetail;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_CloudWatchLoggingOptionDescription KinesisAnalyticsV2_ApplicationConfigurationDescription/;
  has ApplicationARN => (is => 'ro', isa => Str, required => 1);
  has ApplicationConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_ApplicationConfigurationDescription);
  has ApplicationDescription => (is => 'ro', isa => Str);
  has ApplicationName => (is => 'ro', isa => Str, required => 1);
  has ApplicationStatus => (is => 'ro', isa => Str, required => 1);
  has ApplicationVersionId => (is => 'ro', isa => Int, required => 1);
  has CloudWatchLoggingOptionDescriptions => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]);
  has CreateTimestamp => (is => 'ro', isa => Str);
  has LastUpdateTimestamp => (is => 'ro', isa => Str);
  has RuntimeEnvironment => (is => 'ro', isa => Str, required => 1);
  has ServiceExecutionRole => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApplicationVersionId' => 1,
                    'ApplicationStatus' => 1,
                    'RuntimeEnvironment' => 1,
                    'ApplicationARN' => 1,
                    'ApplicationName' => 1
                  },
  'types' => {
               'LastUpdateTimestamp' => {
                                          'type' => 'Str'
                                        },
               'ServiceExecutionRole' => {
                                           'type' => 'Str'
                                         },
               'ApplicationVersionId' => {
                                           'type' => 'Int'
                                         },
               'ApplicationStatus' => {
                                        'type' => 'Str'
                                      },
               'ApplicationDescription' => {
                                             'type' => 'Str'
                                           },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'CloudWatchLoggingOptionDescriptions' => {
                                                          'class' => 'Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionDescription',
                                                          'type' => 'ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]'
                                                        },
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   },
               'CreateTimestamp' => {
                                      'type' => 'Str'
                                    },
               'ApplicationConfigurationDescription' => {
                                                          'class' => 'Paws::KinesisAnalyticsV2::ApplicationConfigurationDescription',
                                                          'type' => 'KinesisAnalyticsV2_ApplicationConfigurationDescription'
                                                        },
               'RuntimeEnvironment' => {
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

Paws::KinesisAnalyticsV2::ApplicationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ApplicationDetail object:

  $service_obj->Method(Att1 => { ApplicationARN => $value, ..., ServiceExecutionRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ApplicationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationARN

=head1 DESCRIPTION

Describes the application, including the application Amazon Resource
Name (ARN), status, latest version, and input and output
configurations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationARN => Str

  The ARN of the application.


=head2 ApplicationConfigurationDescription => KinesisAnalyticsV2_ApplicationConfigurationDescription

  Provides details about the application's SQL or Java code and starting
parameters.


=head2 ApplicationDescription => Str

  The description of the application.


=head2 B<REQUIRED> ApplicationName => Str

  The name of the application.


=head2 B<REQUIRED> ApplicationStatus => Str

  The status of the application.


=head2 B<REQUIRED> ApplicationVersionId => Int

  Provides the current application version. Kinesis Data Analytics
updates the C<ApplicationVersionId> each time you update the
application.


=head2 CloudWatchLoggingOptionDescriptions => ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]

  Describes the application Amazon CloudWatch logging options.


=head2 CreateTimestamp => Str

  The current timestamp when the application was created.


=head2 LastUpdateTimestamp => Str

  The current timestamp when the application was last updated.


=head2 B<REQUIRED> RuntimeEnvironment => Str

  The runtime environment for the application (C<SQL-1.0> or
C<FLINK-1_6>).


=head2 ServiceExecutionRole => Str

  Specifies the IAM role that the application uses to access external
resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

