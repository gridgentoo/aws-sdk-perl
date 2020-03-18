package Paws::Pinpoint::SMSTemplateRequest;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has DefaultSubstitutions => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TemplateDescription => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SMSTemplateRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SMSTemplateRequest object:

  $service_obj->Method(Att1 => { Body => $value, ..., TemplateDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SMSTemplateRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Specifies the content and settings for a message template that can be
used in text messages that are sent through the SMS channel.

=head1 ATTRIBUTES


=head2 Body => Str

  The message body to use in text messages that are based on the message
template.


=head2 DefaultSubstitutions => Str

  A JSON object that specifies the default values to use for message
variables in the message template. This object is a set of key-value
pairs. Each key defines a message variable in the template. The
corresponding value defines the default value for that variable. When
you create a message that's based on the template, you can override
these defaults with message-specific and address-specific variables and
values.


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

