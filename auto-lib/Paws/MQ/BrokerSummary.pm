# Generated from default/object.tt
package Paws::MQ::BrokerSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw//;
  has BrokerArn => (is => 'ro', isa => Str);
  has BrokerId => (is => 'ro', isa => Str);
  has BrokerName => (is => 'ro', isa => Str);
  has BrokerState => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Str);
  has DeploymentMode => (is => 'ro', isa => Str);
  has HostInstanceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BrokerArn' => 'brokerArn',
                       'HostInstanceType' => 'hostInstanceType',
                       'BrokerState' => 'brokerState',
                       'DeploymentMode' => 'deploymentMode',
                       'BrokerName' => 'brokerName',
                       'BrokerId' => 'brokerId',
                       'Created' => 'created'
                     },
  'types' => {
               'BrokerArn' => {
                                'type' => 'Str'
                              },
               'Created' => {
                              'type' => 'Str'
                            },
               'BrokerName' => {
                                 'type' => 'Str'
                               },
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'BrokerState' => {
                                  'type' => 'Str'
                                },
               'DeploymentMode' => {
                                     'type' => 'Str'
                                   },
               'HostInstanceType' => {
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

Paws::MQ::BrokerSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::BrokerSummary object:

  $service_obj->Method(Att1 => { BrokerArn => $value, ..., HostInstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::BrokerSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerArn

=head1 DESCRIPTION

The Amazon Resource Name (ARN) of the broker.

=head1 ATTRIBUTES


=head2 BrokerArn => Str

  The Amazon Resource Name (ARN) of the broker.


=head2 BrokerId => Str

  The unique ID that Amazon MQ generates for the broker.


=head2 BrokerName => Str

  The name of the broker. This value must be unique in your AWS account,
1-50 characters long, must contain only letters, numbers, dashes, and
underscores, and must not contain whitespaces, brackets, wildcard
characters, or special characters.


=head2 BrokerState => Str

  The status of the broker.


=head2 Created => Str

  The time when the broker was created.


=head2 DeploymentMode => Str

  Required. The deployment mode of the broker.


=head2 HostInstanceType => Str

  The broker's instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

