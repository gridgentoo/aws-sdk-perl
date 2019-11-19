# Generated from default/object.tt
package Paws::CodePipeline::ArtifactStore;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_EncryptionKey/;
  has EncryptionKey => (is => 'ro', isa => CodePipeline_EncryptionKey);
  has Location => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'EncryptionKey' => {
                                    'type' => 'CodePipeline_EncryptionKey',
                                    'class' => 'Paws::CodePipeline::EncryptionKey'
                                  },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'EncryptionKey' => 'encryptionKey',
                       'Location' => 'location'
                     },
  'IsRequired' => {
                    'Location' => 1,
                    'Type' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ArtifactStore

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ArtifactStore object:

  $service_obj->Method(Att1 => { EncryptionKey => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactStore object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionKey

=head1 DESCRIPTION

The Amazon S3 bucket where artifacts for the pipeline are stored.

You must include either C<artifactStore> or C<artifactStores> in your
pipeline, but you cannot use both. If you create a cross-region action
in your pipeline, you must use C<artifactStores>.

=head1 ATTRIBUTES


=head2 EncryptionKey => CodePipeline_EncryptionKey

  The encryption key used to encrypt the data in the artifact store, such
as an AWS Key Management Service (AWS KMS) key. If this is undefined,
the default key for Amazon S3 is used.


=head2 B<REQUIRED> Location => Str

  The Amazon S3 bucket used for storing the artifacts for a pipeline. You
can specify the name of an S3 bucket but not a folder in the bucket. A
folder to contain the pipeline artifacts is created for you based on
the name of the pipeline. You can use any Amazon S3 bucket in the same
AWS Region as the pipeline to store your pipeline artifacts.


=head2 B<REQUIRED> Type => Str

  The type of the artifact store, such as S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

