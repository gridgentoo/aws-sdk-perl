
package Paws::Kafka::DescribeConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Kafka::Types qw/Kafka_ConfigurationRevision/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has KafkaVersions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has LatestRevision => (is => 'ro', isa => Kafka_ConfigurationRevision);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'LatestRevision' => {
                                     'type' => 'Kafka_ConfigurationRevision',
                                     'class' => 'Paws::Kafka::ConfigurationRevision'
                                   },
               'KafkaVersions' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'KafkaVersions' => 'kafkaVersions',
                       'Arn' => 'arn',
                       'CreationTime' => 'creationTime',
                       'LatestRevision' => 'latestRevision',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the configuration.


=head2 CreationTime => Str

The time when the configuration was created.


=head2 Description => Str

The description of the configuration.


=head2 KafkaVersions => ArrayRef[Str|Undef]

The versions of Apache Kafka with which you can use this MSK
configuration.


=head2 LatestRevision => Kafka_ConfigurationRevision

Latest revision of the configuration.


=head2 Name => Str

The name of the configuration.


=head2 _request_id => Str


=cut

