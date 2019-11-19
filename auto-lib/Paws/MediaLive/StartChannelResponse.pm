
package Paws::MediaLive::StartChannelResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MediaLive::Types qw/MediaLive_ChannelEgressEndpoint MediaLive_EncoderSettings MediaLive_InputAttachment MediaLive_OutputDestination MediaLive_Tags MediaLive_InputSpecification MediaLive_PipelineDetail/;
  has Arn => (is => 'ro', isa => Str);
  has ChannelClass => (is => 'ro', isa => Str);
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_OutputDestination]);
  has EgressEndpoints => (is => 'ro', isa => ArrayRef[MediaLive_ChannelEgressEndpoint]);
  has EncoderSettings => (is => 'ro', isa => MediaLive_EncoderSettings);
  has Id => (is => 'ro', isa => Str);
  has InputAttachments => (is => 'ro', isa => ArrayRef[MediaLive_InputAttachment]);
  has InputSpecification => (is => 'ro', isa => MediaLive_InputSpecification);
  has LogLevel => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has PipelineDetails => (is => 'ro', isa => ArrayRef[MediaLive_PipelineDetail]);
  has PipelinesRunningCount => (is => 'ro', isa => Int);
  has RoleArn => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PipelineDetails' => 'pipelineDetails',
                       'InputSpecification' => 'inputSpecification',
                       'RoleArn' => 'roleArn',
                       'Destinations' => 'destinations',
                       'EncoderSettings' => 'encoderSettings',
                       'Tags' => 'tags',
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'ChannelClass' => 'channelClass',
                       'InputAttachments' => 'inputAttachments',
                       'LogLevel' => 'logLevel',
                       'PipelinesRunningCount' => 'pipelinesRunningCount',
                       'EgressEndpoints' => 'egressEndpoints',
                       'Name' => 'name',
                       'State' => 'state'
                     },
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'ChannelClass' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
                         },
               'Destinations' => {
                                   'type' => 'ArrayRef[MediaLive_OutputDestination]',
                                   'class' => 'Paws::MediaLive::OutputDestination'
                                 },
               'EncoderSettings' => {
                                      'class' => 'Paws::MediaLive::EncoderSettings',
                                      'type' => 'MediaLive_EncoderSettings'
                                    },
               'InputSpecification' => {
                                         'class' => 'Paws::MediaLive::InputSpecification',
                                         'type' => 'MediaLive_InputSpecification'
                                       },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'PipelineDetails' => {
                                      'type' => 'ArrayRef[MediaLive_PipelineDetail]',
                                      'class' => 'Paws::MediaLive::PipelineDetail'
                                    },
               'State' => {
                            'type' => 'Str'
                          },
               'EgressEndpoints' => {
                                      'type' => 'ArrayRef[MediaLive_ChannelEgressEndpoint]',
                                      'class' => 'Paws::MediaLive::ChannelEgressEndpoint'
                                    },
               'Name' => {
                           'type' => 'Str'
                         },
               'LogLevel' => {
                               'type' => 'Str'
                             },
               'PipelinesRunningCount' => {
                                            'type' => 'Int'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InputAttachments' => {
                                       'class' => 'Paws::MediaLive::InputAttachment',
                                       'type' => 'ArrayRef[MediaLive_InputAttachment]'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StartChannelResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The unique arn of the channel.


=head2 ChannelClass => Str

The class for this channel. STANDARD for a channel with two pipelines
or SINGLE_PIPELINE for a channel with one pipeline.

Valid values are: C<"STANDARD">, C<"SINGLE_PIPELINE">
=head2 Destinations => ArrayRef[MediaLive_OutputDestination]

A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.


=head2 EgressEndpoints => ArrayRef[MediaLive_ChannelEgressEndpoint]

The endpoints where outgoing connections initiate from


=head2 EncoderSettings => MediaLive_EncoderSettings




=head2 Id => Str

The unique id of the channel.


=head2 InputAttachments => ArrayRef[MediaLive_InputAttachment]

List of input attachments for channel.


=head2 InputSpecification => MediaLive_InputSpecification




=head2 LogLevel => Str

The log level being written to CloudWatch Logs.

Valid values are: C<"ERROR">, C<"WARNING">, C<"INFO">, C<"DEBUG">, C<"DISABLED">
=head2 Name => Str

The name of the channel. (user-mutable)


=head2 PipelineDetails => ArrayRef[MediaLive_PipelineDetail]

Runtime details for the pipelines of a running channel.


=head2 PipelinesRunningCount => Int

The number of currently healthy pipelines.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role assumed when running the
Channel.


=head2 State => Str



Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"IDLE">, C<"STARTING">, C<"RUNNING">, C<"RECOVERING">, C<"STOPPING">, C<"DELETING">, C<"DELETED">, C<"UPDATING">, C<"UPDATE_FAILED">
=head2 Tags => MediaLive_Tags

A collection of key-value pairs.


=head2 _request_id => Str


=cut

