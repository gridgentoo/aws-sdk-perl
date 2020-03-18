package Paws::Robomaker::SimulationJob;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ClientRequestToken => (is => 'ro', isa => 'Str', request_name => 'clientRequestToken', traits => ['NameInRequest']);
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::DataSource]', request_name => 'dataSources', traits => ['NameInRequest']);
  has FailureBehavior => (is => 'ro', isa => 'Str', request_name => 'failureBehavior', traits => ['NameInRequest']);
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has IamRole => (is => 'ro', isa => 'Str', request_name => 'iamRole', traits => ['NameInRequest']);
  has LastStartedAt => (is => 'ro', isa => 'Str', request_name => 'lastStartedAt', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has LoggingConfig => (is => 'ro', isa => 'Paws::Robomaker::LoggingConfig', request_name => 'loggingConfig', traits => ['NameInRequest']);
  has MaxJobDurationInSeconds => (is => 'ro', isa => 'Int', request_name => 'maxJobDurationInSeconds', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has NetworkInterface => (is => 'ro', isa => 'Paws::Robomaker::NetworkInterface', request_name => 'networkInterface', traits => ['NameInRequest']);
  has OutputLocation => (is => 'ro', isa => 'Paws::Robomaker::OutputLocation', request_name => 'outputLocation', traits => ['NameInRequest']);
  has RobotApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::RobotApplicationConfig]', request_name => 'robotApplications', traits => ['NameInRequest']);
  has SimulationApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationApplicationConfig]', request_name => 'simulationApplications', traits => ['NameInRequest']);
  has SimulationTimeMillis => (is => 'ro', isa => 'Int', request_name => 'simulationTimeMillis', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has VpcConfig => (is => 'ro', isa => 'Paws::Robomaker::VPCConfigResponse', request_name => 'vpcConfig', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SimulationJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::SimulationJob object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::SimulationJob object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a simulation job.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the simulation job.


=head2 ClientRequestToken => Str

  A unique identifier for this C<SimulationJob> request.


=head2 DataSources => ArrayRef[L<Paws::Robomaker::DataSource>]

  The data sources for the simulation job.


=head2 FailureBehavior => Str

  The failure behavior the simulation job.

=over

=item Continue

Restart the simulation job in the same host instance.

=item Fail

Stop the simulation job and terminate the instance.

=back



=head2 FailureCode => Str

  The failure code of the simulation job if it failed.


=head2 FailureReason => Str

  The reason why the simulation job failed.


=head2 IamRole => Str

  The IAM role that allows the simulation instance to call the AWS APIs
that are specified in its associated policies on your behalf. This is
how credentials are passed in to your simulation job.


=head2 LastStartedAt => Str

  The time, in milliseconds since the epoch, when the simulation job was
last started.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the simulation job was
last updated.


=head2 LoggingConfig => L<Paws::Robomaker::LoggingConfig>

  The logging configuration.


=head2 MaxJobDurationInSeconds => Int

  The maximum simulation job duration in seconds. The value must be 8
days (691,200 seconds) or less.


=head2 Name => Str

  The name of the simulation job.


=head2 NetworkInterface => L<Paws::Robomaker::NetworkInterface>

  Information about a network interface.


=head2 OutputLocation => L<Paws::Robomaker::OutputLocation>

  Location for output files generated by the simulation job.


=head2 RobotApplications => ArrayRef[L<Paws::Robomaker::RobotApplicationConfig>]

  A list of robot applications.


=head2 SimulationApplications => ArrayRef[L<Paws::Robomaker::SimulationApplicationConfig>]

  A list of simulation applications.


=head2 SimulationTimeMillis => Int

  The simulation job execution duration in milliseconds.


=head2 Status => Str

  Status of the simulation job.


=head2 Tags => L<Paws::Robomaker::TagMap>

  A map that contains tag keys and tag values that are attached to the
simulation job.


=head2 VpcConfig => L<Paws::Robomaker::VPCConfigResponse>

  VPC configuration information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

