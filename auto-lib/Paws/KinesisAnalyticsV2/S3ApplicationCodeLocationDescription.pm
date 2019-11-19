# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::S3ApplicationCodeLocationDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw//;
  has BucketARN => (is => 'ro', isa => Str, required => 1);
  has FileKey => (is => 'ro', isa => Str, required => 1);
  has ObjectVersion => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BucketARN' => 1,
                    'FileKey' => 1
                  },
  'types' => {
               'ObjectVersion' => {
                                    'type' => 'Str'
                                  },
               'BucketARN' => {
                                'type' => 'Str'
                              },
               'FileKey' => {
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

Paws::KinesisAnalyticsV2::S3ApplicationCodeLocationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::S3ApplicationCodeLocationDescription object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., ObjectVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::S3ApplicationCodeLocationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Describes the location of a Java-based Amazon Kinesis Data Analytics
application's code stored in an S3 bucket.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketARN => Str

  The Amazon Resource Name (ARN) for the S3 bucket containing the
application code.


=head2 B<REQUIRED> FileKey => Str

  The file key for the object containing the application code.


=head2 ObjectVersion => Str

  The version of the object containing the application code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

