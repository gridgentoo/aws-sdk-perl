package Paws::S3::AbortIncompleteMultipartUpload;
  use Moose;
  has DaysAfterInitiation => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::AbortIncompleteMultipartUpload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::AbortIncompleteMultipartUpload object:

  $service_obj->Method(Att1 => { DaysAfterInitiation => $value, ..., DaysAfterInitiation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::AbortIncompleteMultipartUpload object:

  $result = $service_obj->Method(...);
  $result->Att1->DaysAfterInitiation

=head1 DESCRIPTION

Specifies the days since the initiation of an incomplete multipart
upload that Amazon S3 will wait before permanently removing all parts
of the upload. For more information, see Aborting Incomplete Multipart
Uploads Using a Bucket Lifecycle Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config)
in the I<Amazon Simple Storage Service Developer Guide>.

=head1 ATTRIBUTES


=head2 DaysAfterInitiation => Int

  Specifies the number of days after which Amazon S3 aborts an incomplete
multipart upload.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

