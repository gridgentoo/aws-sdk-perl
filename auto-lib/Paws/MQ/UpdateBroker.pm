
package Paws::MQ::UpdateBroker;
  use Moo;
  use Types::Standard qw/Str Bool Undef ArrayRef/;
  use Paws::MQ::Types qw/MQ_ConfigurationId MQ_Logs/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool, predicate => 1);
  has BrokerId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Configuration => (is => 'ro', isa => MQ_ConfigurationId, predicate => 1);
  has EngineVersion => (is => 'ro', isa => Str, predicate => 1);
  has HostInstanceType => (is => 'ro', isa => Str, predicate => 1);
  has Logs => (is => 'ro', isa => MQ_Logs, predicate => 1);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateBroker');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/brokers/{broker-id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MQ::UpdateBrokerResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BrokerId' => 1
                  },
  'NameInRequest' => {
                       'Logs' => 'logs',
                       'HostInstanceType' => 'hostInstanceType',
                       'EngineVersion' => 'engineVersion',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'SecurityGroups' => 'securityGroups',
                       'Configuration' => 'configuration'
                     },
  'types' => {
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'Configuration' => {
                                    'class' => 'Paws::MQ::ConfigurationId',
                                    'type' => 'MQ_ConfigurationId'
                                  },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'HostInstanceType' => {
                                       'type' => 'Str'
                                     },
               'Logs' => {
                           'type' => 'MQ_Logs',
                           'class' => 'Paws::MQ::Logs'
                         },
               'BrokerId' => {
                               'type' => 'Str'
                             }
             },
  'ParamInURI' => {
                    'BrokerId' => 'broker-id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBroker - Arguments for method UpdateBroker on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBroker on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method UpdateBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBroker.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $UpdateBrokerResponse = $mq->UpdateBroker(
      BrokerId                => 'My__string',
      AutoMinorVersionUpgrade => 1,              # OPTIONAL
      Configuration           => {
        Id       => 'My__string',
        Revision => 1,                           # OPTIONAL
      },    # OPTIONAL
      EngineVersion    => 'My__string',    # OPTIONAL
      HostInstanceType => 'My__string',    # OPTIONAL
      Logs             => {
        Audit   => 1,
        General => 1,
      },                                   # OPTIONAL
      SecurityGroups => [ 'My__string', ... ],    # OPTIONAL
    );

    # Results:
    my $AutoMinorVersionUpgrade =
      $UpdateBrokerResponse->AutoMinorVersionUpgrade;
    my $BrokerId         = $UpdateBrokerResponse->BrokerId;
    my $Configuration    = $UpdateBrokerResponse->Configuration;
    my $EngineVersion    = $UpdateBrokerResponse->EngineVersion;
    my $HostInstanceType = $UpdateBrokerResponse->HostInstanceType;
    my $Logs             = $UpdateBrokerResponse->Logs;
    my $SecurityGroups   = $UpdateBrokerResponse->SecurityGroups;

    # Returns a L<Paws::MQ::UpdateBrokerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/UpdateBroker>

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

Enables automatic upgrades to new minor versions for brokers, as Apache
releases the versions. The automatic upgrades occur during the
maintenance window of the broker or after a manual broker reboot.



=head2 B<REQUIRED> BrokerId => Str

The name of the broker. This value must be unique in your AWS account,
1-50 characters long, must contain only letters, numbers, dashes, and
underscores, and must not contain whitespaces, brackets, wildcard
characters, or special characters.



=head2 Configuration => MQ_ConfigurationId

A list of information about the configuration.



=head2 EngineVersion => Str

The version of the broker engine. For a list of supported engine
versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html



=head2 HostInstanceType => Str

The host instance type of the broker to upgrade to. For a list of
supported instance types, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types



=head2 Logs => MQ_Logs

Enables Amazon CloudWatch logging for brokers.



=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of security groups (1 minimum, 5 maximum) that authorize
connections to brokers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBroker in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

