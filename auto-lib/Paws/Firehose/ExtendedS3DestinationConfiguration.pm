# Generated from default/object.tt
package Paws::Firehose::ExtendedS3DestinationConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_BufferingHints Firehose_S3DestinationConfiguration Firehose_DataFormatConversionConfiguration Firehose_EncryptionConfiguration Firehose_ProcessingConfiguration Firehose_CloudWatchLoggingOptions/;
  has BucketARN => (is => 'ro', isa => Str, required => 1);
  has BufferingHints => (is => 'ro', isa => Firehose_BufferingHints);
  has CloudWatchLoggingOptions => (is => 'ro', isa => Firehose_CloudWatchLoggingOptions);
  has CompressionFormat => (is => 'ro', isa => Str);
  has DataFormatConversionConfiguration => (is => 'ro', isa => Firehose_DataFormatConversionConfiguration);
  has EncryptionConfiguration => (is => 'ro', isa => Firehose_EncryptionConfiguration);
  has ErrorOutputPrefix => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has ProcessingConfiguration => (is => 'ro', isa => Firehose_ProcessingConfiguration);
  has RoleARN => (is => 'ro', isa => Str, required => 1);
  has S3BackupConfiguration => (is => 'ro', isa => Firehose_S3DestinationConfiguration);
  has S3BackupMode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RoleARN' => 1,
                    'BucketARN' => 1
                  },
  'types' => {
               'S3BackupConfiguration' => {
                                            'class' => 'Paws::Firehose::S3DestinationConfiguration',
                                            'type' => 'Firehose_S3DestinationConfiguration'
                                          },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'EncryptionConfiguration' => {
                                              'class' => 'Paws::Firehose::EncryptionConfiguration',
                                              'type' => 'Firehose_EncryptionConfiguration'
                                            },
               'CompressionFormat' => {
                                        'type' => 'Str'
                                      },
               'ProcessingConfiguration' => {
                                              'type' => 'Firehose_ProcessingConfiguration',
                                              'class' => 'Paws::Firehose::ProcessingConfiguration'
                                            },
               'BufferingHints' => {
                                     'class' => 'Paws::Firehose::BufferingHints',
                                     'type' => 'Firehose_BufferingHints'
                                   },
               'BucketARN' => {
                                'type' => 'Str'
                              },
               'DataFormatConversionConfiguration' => {
                                                        'type' => 'Firehose_DataFormatConversionConfiguration',
                                                        'class' => 'Paws::Firehose::DataFormatConversionConfiguration'
                                                      },
               'CloudWatchLoggingOptions' => {
                                               'class' => 'Paws::Firehose::CloudWatchLoggingOptions',
                                               'type' => 'Firehose_CloudWatchLoggingOptions'
                                             },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'S3BackupMode' => {
                                   'type' => 'Str'
                                 },
               'ErrorOutputPrefix' => {
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

Paws::Firehose::ExtendedS3DestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ExtendedS3DestinationConfiguration object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., S3BackupMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ExtendedS3DestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Describes the configuration of a destination in Amazon S3.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketARN => Str

  The ARN of the S3 bucket. For more information, see Amazon Resource
Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 BufferingHints => Firehose_BufferingHints

  The buffering option.


=head2 CloudWatchLoggingOptions => Firehose_CloudWatchLoggingOptions

  The Amazon CloudWatch logging options for your delivery stream.


=head2 CompressionFormat => Str

  The compression format. If no value is specified, the default is
UNCOMPRESSED.


=head2 DataFormatConversionConfiguration => Firehose_DataFormatConversionConfiguration

  The serializer, deserializer, and schema for converting data from the
JSON format to the Parquet or ORC format before writing it to Amazon
S3.


=head2 EncryptionConfiguration => Firehose_EncryptionConfiguration

  The encryption configuration. If no value is specified, the default is
no encryption.


=head2 ErrorOutputPrefix => Str

  A prefix that Kinesis Data Firehose evaluates and adds to failed
records before writing them to S3. This prefix appears immediately
following the bucket name. For information about how to specify this
prefix, see Custom Prefixes for Amazon S3 Objects
(https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).


=head2 Prefix => Str

  The "YYYY/MM/DD/HH" time format prefix is automatically used for
delivered Amazon S3 files. You can also specify a custom prefix, as
described in Custom Prefixes for Amazon S3 Objects
(https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).


=head2 ProcessingConfiguration => Firehose_ProcessingConfiguration

  The data processing configuration.


=head2 B<REQUIRED> RoleARN => Str

  The Amazon Resource Name (ARN) of the AWS credentials. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 S3BackupConfiguration => Firehose_S3DestinationConfiguration

  The configuration for backup in Amazon S3.


=head2 S3BackupMode => Str

  The Amazon S3 backup mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

