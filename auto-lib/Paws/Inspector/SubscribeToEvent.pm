# Generated from json/callargs_class.tt

package Paws::Inspector::SubscribeToEvent;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has Event => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TopicArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SubscribeToEvent');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TopicArn' => {
                               'type' => 'Str'
                             },
               'Event' => {
                            'type' => 'Str'
                          },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ResourceArn' => 'resourceArn',
                       'Event' => 'event',
                       'TopicArn' => 'topicArn'
                     },
  'IsRequired' => {
                    'Event' => 1,
                    'TopicArn' => 1,
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::SubscribeToEvent - Arguments for method SubscribeToEvent on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubscribeToEvent on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method SubscribeToEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubscribeToEvent.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Subscribe to event
    # Enables the process of sending Amazon Simple Notification Service (SNS)
    # notifications about a specified event to a specified SNS topic.
    $inspector->SubscribeToEvent(
      'Event' => 'ASSESSMENT_RUN_COMPLETED',
      'ResourceArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0',
      'TopicArn' => 'arn:aws:sns:us-west-2:123456789012:exampletopic'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/SubscribeToEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => Str

The event for which you want to receive SNS notifications.

Valid values are: C<"ASSESSMENT_RUN_STARTED">, C<"ASSESSMENT_RUN_COMPLETED">, C<"ASSESSMENT_RUN_STATE_CHANGED">, C<"FINDING_REPORTED">, C<"OTHER">

=head2 B<REQUIRED> ResourceArn => Str

The ARN of the assessment template that is used during the event for
which you want to receive SNS notifications.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the SNS topic to which the SNS notifications are sent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubscribeToEvent in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

