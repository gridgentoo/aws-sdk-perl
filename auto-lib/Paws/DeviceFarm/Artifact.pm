package Paws::DeviceFarm::Artifact;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Extension => (is => 'ro', isa => 'Str', request_name => 'extension', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Artifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Artifact object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Artifact object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents the output of a test. Examples of artifacts include logs and
screenshots.

=head1 ATTRIBUTES


=head2 Arn => Str

  The artifact's ARN.


=head2 Extension => Str

  The artifact's file extension.


=head2 Name => Str

  The artifact's name.


=head2 Type => Str

  The artifact's type.

Allowed values include the following:

=over

=item *

UNKNOWN

=item *

SCREENSHOT

=item *

DEVICE_LOG

=item *

MESSAGE_LOG

=item *

VIDEO_LOG

=item *

RESULT_LOG

=item *

SERVICE_LOG

=item *

WEBKIT_LOG

=item *

INSTRUMENTATION_OUTPUT

=item *

EXERCISER_MONKEY_OUTPUT: the artifact (log) generated by an Android
fuzz test.

=item *

CALABASH_JSON_OUTPUT

=item *

CALABASH_PRETTY_OUTPUT

=item *

CALABASH_STANDARD_OUTPUT

=item *

CALABASH_JAVA_XML_OUTPUT

=item *

AUTOMATION_OUTPUT

=item *

APPIUM_SERVER_OUTPUT

=item *

APPIUM_JAVA_OUTPUT

=item *

APPIUM_JAVA_XML_OUTPUT

=item *

APPIUM_PYTHON_OUTPUT

=item *

APPIUM_PYTHON_XML_OUTPUT

=item *

EXPLORER_EVENT_LOG

=item *

EXPLORER_SUMMARY_LOG

=item *

APPLICATION_CRASH_REPORT

=item *

XCTEST_LOG

=item *

VIDEO

=item *

CUSTOMER_ARTIFACT

=item *

CUSTOMER_ARTIFACT_LOG

=item *

TESTSPEC_OUTPUT

=back



=head2 Url => Str

  The presigned Amazon S3 URL that can be used with a GET request to
download the artifact's file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

