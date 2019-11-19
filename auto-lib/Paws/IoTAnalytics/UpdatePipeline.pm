
package Paws::IoTAnalytics::UpdatePipeline;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_PipelineActivity/;
  has PipelineActivities => (is => 'ro', isa => ArrayRef[IoTAnalytics_PipelineActivity], required => 1, predicate => 1);
  has PipelineName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdatePipeline');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/pipelines/{pipelineName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'PipelineName' => 'pipelineName'
                  },
  'NameInRequest' => {
                       'PipelineActivities' => 'pipelineActivities'
                     },
  'IsRequired' => {
                    'PipelineActivities' => 1,
                    'PipelineName' => 1
                  },
  'types' => {
               'PipelineName' => {
                                   'type' => 'Str'
                                 },
               'PipelineActivities' => {
                                         'class' => 'Paws::IoTAnalytics::PipelineActivity',
                                         'type' => 'ArrayRef[IoTAnalytics_PipelineActivity]'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::UpdatePipeline - Arguments for method UpdatePipeline on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipeline on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method UpdatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipeline.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    $iotanalytics->UpdatePipeline(
      PipelineActivities => [
        {
          AddAttributes => {
            Attributes => {
              'MyAttributeName' => 'MyAttributeName'
              ,    # key: min: 1, max: 256, value: min: 1, max: 256
            },    # min: 1, max: 50
            Name => 'MyActivityName',    # min: 1, max: 128
            Next => 'MyActivityName',    # min: 1, max: 128
          },    # OPTIONAL
          Channel => {
            ChannelName => 'MyChannelName',     # min: 1, max: 128
            Name        => 'MyActivityName',    # min: 1, max: 128
            Next        => 'MyActivityName',    # min: 1, max: 128
          },    # OPTIONAL
          Datastore => {
            DatastoreName => 'MyDatastoreName',    # min: 1, max: 128
            Name          => 'MyActivityName',     # min: 1, max: 128

          },    # OPTIONAL
          DeviceRegistryEnrich => {
            Attribute => 'MyAttributeName',    # min: 1, max: 256
            Name      => 'MyActivityName',     # min: 1, max: 128
            RoleArn   => 'MyRoleArn',          # min: 20, max: 2048
            ThingName => 'MyAttributeName',    # min: 1, max: 256
            Next      => 'MyActivityName',     # min: 1, max: 128
          },    # OPTIONAL
          DeviceShadowEnrich => {
            Attribute => 'MyAttributeName',    # min: 1, max: 256
            Name      => 'MyActivityName',     # min: 1, max: 128
            RoleArn   => 'MyRoleArn',          # min: 20, max: 2048
            ThingName => 'MyAttributeName',    # min: 1, max: 256
            Next      => 'MyActivityName',     # min: 1, max: 128
          },    # OPTIONAL
          Filter => {
            Filter => 'MyFilterExpression',    # min: 1, max: 256
            Name   => 'MyActivityName',        # min: 1, max: 128
            Next   => 'MyActivityName',        # min: 1, max: 128
          },    # OPTIONAL
          Lambda => {
            BatchSize  => 1,                   # min: 1, max: 1000
            LambdaName => 'MyLambdaName',      # min: 1, max: 64
            Name       => 'MyActivityName',    # min: 1, max: 128
            Next       => 'MyActivityName',    # min: 1, max: 128
          },    # OPTIONAL
          Math => {
            Attribute => 'MyAttributeName',     # min: 1, max: 256
            Math      => 'MyMathExpression',    # min: 1, max: 256
            Name      => 'MyActivityName',      # min: 1, max: 128
            Next      => 'MyActivityName',      # min: 1, max: 128
          },    # OPTIONAL
          RemoveAttributes => {
            Attributes => [
              'MyAttributeName', ...    # min: 1, max: 256
            ],                          # min: 1, max: 50
            Name => 'MyActivityName',   # min: 1, max: 128
            Next => 'MyActivityName',   # min: 1, max: 128
          },    # OPTIONAL
          SelectAttributes => {
            Attributes => [
              'MyAttributeName', ...    # min: 1, max: 256
            ],                          # min: 1, max: 50
            Name => 'MyActivityName',   # min: 1, max: 128
            Next => 'MyActivityName',   # min: 1, max: 128
          },    # OPTIONAL
        },
        ...
      ],
      PipelineName => 'MyPipelineName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/UpdatePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineActivities => ArrayRef[IoTAnalytics_PipelineActivity]

A list of "PipelineActivity" objects. Activities perform
transformations on your messages, such as removing, renaming or adding
message attributes; filtering messages based on attribute values;
invoking your Lambda functions on messages for advanced processing; or
performing mathematical transformations to normalize device data.

The list can be 2-25 B<PipelineActivity> objects and must contain both
a C<channel> and a C<datastore> activity. Each entry in the list must
contain only one activity, for example:

C<pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } },
... ]>



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipeline in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

