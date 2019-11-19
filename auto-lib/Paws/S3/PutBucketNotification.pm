
package Paws::S3::PutBucketNotification;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_NotificationConfigurationDeprecated/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has NotificationConfiguration => (is => 'ro', isa => S3_NotificationConfigurationDeprecated, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketNotification');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?notification');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'NotificationConfiguration' => {
                                                'class' => 'Paws::S3::NotificationConfigurationDeprecated',
                                                'type' => 'S3_NotificationConfigurationDeprecated'
                                              },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'Bucket' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Bucket' => 1,
                    'NotificationConfiguration' => 1
                  },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length'
                     },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
                                      }
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketNotification - Arguments for method PutBucketNotification on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketNotification on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketNotification.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketNotification(
      Bucket                    => 'MyBucketName',
      NotificationConfiguration => {
        CloudFunctionConfiguration => {
          CloudFunction => 'MyCloudFunction',                 # OPTIONAL
          Event         => 's3:ReducedRedundancyLostObject'
          , # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
          Events => [
            's3:ReducedRedundancyLostObject',
            ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
          ],    # OPTIONAL
          Id             => 'MyNotificationId',                 # OPTIONAL
          InvocationRole => 'MyCloudFunctionInvocationRole',    # OPTIONAL
        },    # OPTIONAL
        QueueConfiguration => {
          Event => 's3:ReducedRedundancyLostObject'
          , # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
          Events => [
            's3:ReducedRedundancyLostObject',
            ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
          ],    # OPTIONAL
          Id    => 'MyNotificationId',    # OPTIONAL
          Queue => 'MyQueueArn',          # OPTIONAL
        },    # OPTIONAL
        TopicConfiguration => {
          Event => 's3:ReducedRedundancyLostObject'
          , # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
          Events => [
            's3:ReducedRedundancyLostObject',
            ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:Post, s3:ObjectRestore:Completed
          ],    # OPTIONAL
          Id    => 'MyNotificationId',    # OPTIONAL
          Topic => 'MyTopicArn',          # OPTIONAL
        },    # OPTIONAL
      },
      ContentLength => 1,                 # OPTIONAL
      ContentMD5    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketNotification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The MD5 hash of the C<PutPublicAccessBlock> request body.



=head2 B<REQUIRED> NotificationConfiguration => S3_NotificationConfigurationDeprecated

The container for the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketNotification in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

