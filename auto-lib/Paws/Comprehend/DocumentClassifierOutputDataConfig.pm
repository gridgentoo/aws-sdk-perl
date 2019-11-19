# Generated from default/object.tt
package Paws::Comprehend::DocumentClassifierOutputDataConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw//;
  has KmsKeyId => (is => 'ro', isa => Str);
  has S3Uri => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'S3Uri' => {
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

Paws::Comprehend::DocumentClassifierOutputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DocumentClassifierOutputDataConfig object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DocumentClassifierOutputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

Provides output results configuration parameters for custom classifier
jobs.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

  ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
uses to encrypt the output results from an analysis job. The KmsKeyId
can be one of the following formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

KMS Key Alias: C<"alias/ExampleAlias">

=item *

ARN of a KMS Key Alias:
C<"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias">

=back



=head2 S3Uri => Str

  When you use the C<OutputDataConfig> object while creating a custom
classifier, you specify the Amazon S3 location where you want to write
the confusion matrix. The URI must be in the same region as the API
endpoint that you are calling. The location is used as the prefix for
the actual location of this output file.

When the custom classifier job is finished, the service creates the
output file in a directory specific to the job. The C<S3Uri> field
contains the location of the output file, called C<output.tar.gz>. It
is a compressed archive that contains the confusion matrix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

