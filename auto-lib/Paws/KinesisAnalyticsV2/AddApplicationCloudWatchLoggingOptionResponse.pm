# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::AddApplicationCloudWatchLoggingOptionResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_CloudWatchLoggingOptionDescription/;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);
  has CloudWatchLoggingOptionDescriptions => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   },
               'CloudWatchLoggingOptionDescriptions' => {
                                                          'type' => 'ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]',
                                                          'class' => 'Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionDescription'
                                                        },
               'ApplicationVersionId' => {
                                           'type' => 'Int'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationCloudWatchLoggingOptionResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application's ARN.


=head2 ApplicationVersionId => Int

The new version ID of the Kinesis Data Analytics application. Kinesis
Data Analytics updates the C<ApplicationVersionId> each time you change
the CloudWatch logging options.


=head2 CloudWatchLoggingOptionDescriptions => ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]

The descriptions of the current CloudWatch logging options for the
Kinesis Data Analytics application.


=head2 _request_id => Str


=cut

1;