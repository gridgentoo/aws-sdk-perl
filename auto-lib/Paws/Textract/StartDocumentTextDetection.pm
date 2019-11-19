# Generated from json/callargs_class.tt

package Paws::Textract::StartDocumentTextDetection;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Textract::Types qw/Textract_NotificationChannel Textract_DocumentLocation/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has DocumentLocation => (is => 'ro', isa => Textract_DocumentLocation, required => 1, predicate => 1);
  has JobTag => (is => 'ro', isa => Str, predicate => 1);
  has NotificationChannel => (is => 'ro', isa => Textract_NotificationChannel, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartDocumentTextDetection');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Textract::StartDocumentTextDetectionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'JobTag' => {
                             'type' => 'Str'
                           },
               'DocumentLocation' => {
                                       'class' => 'Paws::Textract::DocumentLocation',
                                       'type' => 'Textract_DocumentLocation'
                                     },
               'NotificationChannel' => {
                                          'class' => 'Paws::Textract::NotificationChannel',
                                          'type' => 'Textract_NotificationChannel'
                                        }
             },
  'IsRequired' => {
                    'DocumentLocation' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::StartDocumentTextDetection - Arguments for method StartDocumentTextDetection on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDocumentTextDetection on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method StartDocumentTextDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDocumentTextDetection.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $StartDocumentTextDetectionResponse =
      $textract->StartDocumentTextDetection(
      DocumentLocation => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      JobTag              => 'MyJobTag',                # OPTIONAL
      NotificationChannel => {
        RoleArn     => 'MyRoleArn',                     # min: 20, max: 2048
        SNSTopicArn => 'MySNSTopicArn',                 # min: 20, max: 1024

      },    # OPTIONAL
      );

    # Results:
    my $JobId = $StartDocumentTextDetectionResponse->JobId;

    # Returns a L<Paws::Textract::StartDocumentTextDetectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/StartDocumentTextDetection>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The idempotent token that's used to identify the start request. If you
use the same token with multiple C<StartDocumentTextDetection>
requests, the same C<JobId> is returned. Use C<ClientRequestToken> to
prevent the same job from being accidentally started more than once.



=head2 B<REQUIRED> DocumentLocation => Textract_DocumentLocation

The location of the document to be processed.



=head2 JobTag => Str

An identifier you specify that's included in the completion
notification that's published to the Amazon SNS topic. For example, you
can use C<JobTag> to identify the type of document, such as a tax form
or a receipt, that the completion notification corresponds to.



=head2 NotificationChannel => Textract_NotificationChannel

The Amazon SNS topic ARN that you want Amazon Textract to publish the
completion status of the operation to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDocumentTextDetection in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

