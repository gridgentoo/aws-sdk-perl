
package Paws::Robomaker::CreateDeploymentJob;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_DeploymentApplicationConfig Robomaker_TagMap Robomaker_DeploymentConfig/;
  has ClientRequestToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeploymentApplicationConfigs => (is => 'ro', isa => ArrayRef[Robomaker_DeploymentApplicationConfig], required => 1, predicate => 1);
  has DeploymentConfig => (is => 'ro', isa => Robomaker_DeploymentConfig, predicate => 1);
  has Fleet => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => Robomaker_TagMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeploymentJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/createDeploymentJob');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Robomaker::CreateDeploymentJobResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'DeploymentConfig' => {
                                       'class' => 'Paws::Robomaker::DeploymentConfig',
                                       'type' => 'Robomaker_DeploymentConfig'
                                     },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Fleet' => {
                            'type' => 'Str'
                          },
               'DeploymentApplicationConfigs' => {
                                                   'class' => 'Paws::Robomaker::DeploymentApplicationConfig',
                                                   'type' => 'ArrayRef[Robomaker_DeploymentApplicationConfig]'
                                                 }
             },
  'IsRequired' => {
                    'ClientRequestToken' => 1,
                    'Fleet' => 1,
                    'DeploymentApplicationConfigs' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'DeploymentConfig' => 'deploymentConfig',
                       'DeploymentApplicationConfigs' => 'deploymentApplicationConfigs',
                       'Fleet' => 'fleet',
                       'ClientRequestToken' => 'clientRequestToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateDeploymentJob - Arguments for method CreateDeploymentJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeploymentJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateDeploymentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeploymentJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateDeploymentJobResponse = $robomaker->CreateDeploymentJob(
      ClientRequestToken           => 'MyClientRequestToken',
      DeploymentApplicationConfigs => [
        {
          Application        => 'MyArn',                  # min: 1, max: 1224
          ApplicationVersion => 'MyDeploymentVersion',    # min: 1, max: 255
          LaunchConfig       => {
            LaunchFile           => 'MyCommand',          # min: 1, max: 1024
            PackageName          => 'MyCommand',          # min: 1, max: 1024
            EnvironmentVariables => {
              'MyEnvironmentVariableKey' => 'MyEnvironmentVariableValue'
              ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
            },    # max: 16; OPTIONAL
            PostLaunchFile => 'MyPath',    # min: 1, max: 1024; OPTIONAL
            PreLaunchFile  => 'MyPath',    # min: 1, max: 1024; OPTIONAL
          },

        },
        ...
      ],
      Fleet            => 'MyArn',
      DeploymentConfig => {
        ConcurrentDeploymentPercentage => 1,    # min: 1, max: 100; OPTIONAL
        DownloadConditionFile          => {
          Bucket => 'MyS3Bucket',               # min: 3, max: 63
          Key    => 'MyS3Key',                  # min: 1, max: 1024
          Etag   => 'MyS3Etag',                 # OPTIONAL
        },    # OPTIONAL
        FailureThresholdPercentage      => 1,    # min: 1, max: 100; OPTIONAL
        RobotDeploymentTimeoutInSeconds => 1,    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateDeploymentJobResponse->Arn;
    my $CreatedAt = $CreateDeploymentJobResponse->CreatedAt;
    my $DeploymentApplicationConfigs =
      $CreateDeploymentJobResponse->DeploymentApplicationConfigs;
    my $DeploymentConfig = $CreateDeploymentJobResponse->DeploymentConfig;
    my $FailureCode      = $CreateDeploymentJobResponse->FailureCode;
    my $FailureReason    = $CreateDeploymentJobResponse->FailureReason;
    my $Fleet            = $CreateDeploymentJobResponse->Fleet;
    my $Status           = $CreateDeploymentJobResponse->Status;
    my $Tags             = $CreateDeploymentJobResponse->Tags;

    # Returns a L<Paws::Robomaker::CreateDeploymentJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateDeploymentJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> DeploymentApplicationConfigs => ArrayRef[Robomaker_DeploymentApplicationConfig]

The deployment application configuration.



=head2 DeploymentConfig => Robomaker_DeploymentConfig

The requested deployment configuration.



=head2 B<REQUIRED> Fleet => Str

The Amazon Resource Name (ARN) of the fleet to deploy.



=head2 Tags => Robomaker_TagMap

A map that contains tag keys and tag values that are attached to the
deployment job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeploymentJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

