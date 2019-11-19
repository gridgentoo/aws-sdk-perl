# Generated from default/object.tt
package Paws::Pinpoint::ExportJobRequest;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Pinpoint::Types qw//;
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has S3UrlPrefix => (is => 'ro', isa => Str, required => 1);
  has SegmentId => (is => 'ro', isa => Str);
  has SegmentVersion => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RoleArn' => 1,
                    'S3UrlPrefix' => 1
                  },
  'types' => {
               'SegmentVersion' => {
                                     'type' => 'Int'
                                   },
               'SegmentId' => {
                                'type' => 'Str'
                              },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'S3UrlPrefix' => {
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

Paws::Pinpoint::ExportJobRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ExportJobRequest object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., SegmentVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ExportJobRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Specifies the settings for a job that exports endpoint definitions to
an Amazon Simple Storage Service (Amazon S3) bucket.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that authorizes Amazon Pinpoint to access the
Amazon S3 location where you want to export endpoint definitions to.


=head2 B<REQUIRED> S3UrlPrefix => Str

  The URL of the location in an Amazon Simple Storage Service (Amazon S3)
bucket where you want to export endpoint definitions to. This location
is typically a folder that contains multiple files. The URL should be
in the following format: s3://bucket-name/folder-name/.


=head2 SegmentId => Str

  The identifier for the segment to export endpoint definitions from. If
you don't specify this value, Amazon Pinpoint exports definitions for
all the endpoints that are associated with the application.


=head2 SegmentVersion => Int

  The version of the segment to export endpoint definitions from, if
specified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

