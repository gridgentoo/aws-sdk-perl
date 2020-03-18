package Paws::Pinpoint::VoiceTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has DefaultSubstitutions => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TemplateDescription => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::VoiceTemplateResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::VoiceTemplateResponse object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VoiceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::VoiceTemplateResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Provides information about the content and settings for a message
template that can be used in messages that are sent through the voice
channel.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the message template.


=head2 Body => Str

  The text of the script that's used in messages that are based on the
message template, in plain text format.


=head2 B<REQUIRED> CreationDate => Str

  The date, in ISO 8601 format, when the message template was created.


=head2 DefaultSubstitutions => Str

  The JSON object that specifies the default values that are used for
message variables in the message template. This object is a set of
key-value pairs. Each key defines a message variable in the template.
The corresponding value defines the default value for that variable.


=head2 LanguageCode => Str

  The code for the language that's used when synthesizing the text of the
script in messages that are based on the message template. For a list
of supported languages and the code for each one, see the Amazon Polly
Developer Guide
(https://docs.aws.amazon.com/polly/latest/dg/what-is.html).


=head2 B<REQUIRED> LastModifiedDate => Str

  The date, in ISO 8601 format, when the message template was last
modified.


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that identifies the tags that
are associated with the message template. Each tag consists of a
required tag key and an associated tag value.


=head2 TemplateDescription => Str

  The custom description of the message template.


=head2 B<REQUIRED> TemplateName => Str

  The name of the message template.


=head2 B<REQUIRED> TemplateType => Str

  The type of channel that the message template is designed for. For a
voice template, this value is VOICE.


=head2 Version => Str

  The unique identifier, as an integer, for the active version of the
message template, or the version of the template that you specified by
using the version parameter in your request.


=head2 VoiceId => Str

  The name of the voice that's used when delivering messages that are
based on the message template. For a list of supported voices, see the
Amazon Polly Developer Guide
(https://docs.aws.amazon.com/polly/latest/dg/what-is.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

