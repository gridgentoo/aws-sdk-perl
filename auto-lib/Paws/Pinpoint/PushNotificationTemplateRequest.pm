package Paws::Pinpoint::PushNotificationTemplateRequest;
  use Moose;
  has ADM => (is => 'ro', isa => 'Paws::Pinpoint::AndroidPushNotificationTemplate');
  has APNS => (is => 'ro', isa => 'Paws::Pinpoint::APNSPushNotificationTemplate');
  has Baidu => (is => 'ro', isa => 'Paws::Pinpoint::AndroidPushNotificationTemplate');
  has Default => (is => 'ro', isa => 'Paws::Pinpoint::DefaultPushNotificationTemplate');
  has DefaultSubstitutions => (is => 'ro', isa => 'Str');
  has GCM => (is => 'ro', isa => 'Paws::Pinpoint::AndroidPushNotificationTemplate');
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TemplateDescription => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PushNotificationTemplateRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::PushNotificationTemplateRequest object:

  $service_obj->Method(Att1 => { ADM => $value, ..., TemplateDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::PushNotificationTemplateRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ADM

=head1 DESCRIPTION

Specifies the content and settings for a message template that can be
used in messages that are sent through a push notification channel.

=head1 ATTRIBUTES


=head2 ADM => L<Paws::Pinpoint::AndroidPushNotificationTemplate>

  The message template to use for the ADM (Amazon Device Messaging)
channel. This message template overrides the default template for push
notification channels (DefaultPushNotificationTemplate).


=head2 APNS => L<Paws::Pinpoint::APNSPushNotificationTemplate>

  The message template to use for the APNs (Apple Push Notification
service) channel. This message template overrides the default template
for push notification channels (DefaultPushNotificationTemplate).


=head2 Baidu => L<Paws::Pinpoint::AndroidPushNotificationTemplate>

  The message template to use for the Baidu (Baidu Cloud Push) channel.
This message template overrides the default template for push
notification channels (DefaultPushNotificationTemplate).


=head2 Default => L<Paws::Pinpoint::DefaultPushNotificationTemplate>

  The default message template to use for push notification channels.


=head2 DefaultSubstitutions => Str

  A JSON object that specifies the default values to use for message
variables in the message template. This object is a set of key-value
pairs. Each key defines a message variable in the template. The
corresponding value defines the default value for that variable. When
you create a message that's based on the template, you can override
these defaults with message-specific and address-specific variables and
values.


=head2 GCM => L<Paws::Pinpoint::AndroidPushNotificationTemplate>

  The message template to use for the GCM channel, which is used to send
notifications through the Firebase Cloud Messaging (FCM), formerly
Google Cloud Messaging (GCM), service. This message template overrides
the default template for push notification channels
(DefaultPushNotificationTemplate).


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that defines the tags to
associate with the message template. Each tag consists of a required
tag key and an associated tag value.


=head2 TemplateDescription => Str

  A custom description of the message template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

