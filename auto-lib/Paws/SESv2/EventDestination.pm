# Generated from default/object.tt
package Paws::SESv2::EventDestination;
  use Moo;
  use Types::Standard qw/Bool Undef ArrayRef Str/;
  use Paws::SESv2::Types qw/SESv2_KinesisFirehoseDestination SESv2_CloudWatchDestination SESv2_PinpointDestination SESv2_SnsDestination/;
  has CloudWatchDestination => (is => 'ro', isa => SESv2_CloudWatchDestination);
  has Enabled => (is => 'ro', isa => Bool);
  has KinesisFirehoseDestination => (is => 'ro', isa => SESv2_KinesisFirehoseDestination);
  has MatchingEventTypes => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has PinpointDestination => (is => 'ro', isa => SESv2_PinpointDestination);
  has SnsDestination => (is => 'ro', isa => SESv2_SnsDestination);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'MatchingEventTypes' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'KinesisFirehoseDestination' => {
                                                 'class' => 'Paws::SESv2::KinesisFirehoseDestination',
                                                 'type' => 'SESv2_KinesisFirehoseDestination'
                                               },
               'CloudWatchDestination' => {
                                            'type' => 'SESv2_CloudWatchDestination',
                                            'class' => 'Paws::SESv2::CloudWatchDestination'
                                          },
               'SnsDestination' => {
                                     'type' => 'SESv2_SnsDestination',
                                     'class' => 'Paws::SESv2::SnsDestination'
                                   },
               'PinpointDestination' => {
                                          'type' => 'SESv2_PinpointDestination',
                                          'class' => 'Paws::SESv2::PinpointDestination'
                                        }
             },
  'IsRequired' => {
                    'MatchingEventTypes' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::EventDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::EventDestination object:

  $service_obj->Method(Att1 => { CloudWatchDestination => $value, ..., SnsDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::EventDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchDestination

=head1 DESCRIPTION

In the Amazon SES API v2, I<events> include message sends, deliveries,
opens, clicks, bounces, and complaints. I<Event destinations> are
places that you can send information about these events to. For
example, you can send event data to Amazon SNS to receive notifications
when you receive bounces or complaints, or you can use Amazon Kinesis
Data Firehose to stream data to Amazon S3 for long-term storage.

=head1 ATTRIBUTES


=head2 CloudWatchDestination => SESv2_CloudWatchDestination

  An object that defines an Amazon CloudWatch destination for email
events. You can use Amazon CloudWatch to monitor and gain insights on
your email sending metrics.


=head2 Enabled => Bool

  If C<true>, the event destination is enabled. When the event
destination is enabled, the specified event types are sent to the
destinations in this C<EventDestinationDefinition>.

If C<false>, the event destination is disabled. When the event
destination is disabled, events aren't sent to the specified
destinations.


=head2 KinesisFirehoseDestination => SESv2_KinesisFirehoseDestination

  An object that defines an Amazon Kinesis Data Firehose destination for
email events. You can use Amazon Kinesis Data Firehose to stream data
to other services, such as Amazon S3 and Amazon Redshift.


=head2 B<REQUIRED> MatchingEventTypes => ArrayRef[Str|Undef]

  The types of events that Amazon SES sends to the specified event
destinations.


=head2 B<REQUIRED> Name => Str

  A name that identifies the event destination.


=head2 PinpointDestination => SESv2_PinpointDestination

  An object that defines an Amazon Pinpoint project destination for email
events. You can send email event data to a Amazon Pinpoint project to
view metrics using the Transactional Messaging dashboards that are
built in to Amazon Pinpoint. For more information, see Transactional
Messaging Charts
(https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html)
in the I<Amazon Pinpoint User Guide>.


=head2 SnsDestination => SESv2_SnsDestination

  An object that defines an Amazon SNS destination for email events. You
can use Amazon SNS to send notification when certain email events
occur.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

