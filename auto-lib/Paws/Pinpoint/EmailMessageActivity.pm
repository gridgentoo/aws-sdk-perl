package Paws::Pinpoint::EmailMessageActivity;
  use Moose;
  has MessageConfig => (is => 'ro', isa => 'Paws::Pinpoint::JourneyEmailMessage');
  has NextActivity => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has TemplateVersion => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EmailMessageActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EmailMessageActivity object:

  $service_obj->Method(Att1 => { MessageConfig => $value, ..., TemplateVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EmailMessageActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageConfig

=head1 DESCRIPTION

Specifies the settings for an email activity in a journey. This type of
activity sends an email message to participants.

=head1 ATTRIBUTES


=head2 MessageConfig => L<Paws::Pinpoint::JourneyEmailMessage>

  The "From" address to use for the message.


=head2 NextActivity => Str

  The unique identifier for the next activity to perform, after the
message is sent.


=head2 TemplateName => Str

  The name of the email template to use for the message.


=head2 TemplateVersion => Str

  The unique identifier for the version of the email template to use for
the message. If specified, this value must match the identifier for an
existing template version. To retrieve a list of versions and version
identifiers for a template, use the

Template Versions resource.

If you don't specify a value for this property, Amazon Pinpoint uses
the I<active> version of the template. The I<active> version is
typically the version of a template that's been most recently reviewed
and approved for use, depending on your workflow. It isn't necessarily
the latest version of a template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

