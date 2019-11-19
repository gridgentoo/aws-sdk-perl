# Generated from default/object.tt
package Paws::Pinpoint::SegmentImportResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__integer/;
  has ChannelCounts => (is => 'ro', isa => Pinpoint_MapOf__integer);
  has ExternalId => (is => 'ro', isa => Str, required => 1);
  has Format => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has S3Url => (is => 'ro', isa => Str, required => 1);
  has Size => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Format' => 1,
                    'Size' => 1,
                    'RoleArn' => 1,
                    'ExternalId' => 1,
                    'S3Url' => 1
                  },
  'types' => {
               'Size' => {
                           'type' => 'Int'
                         },
               'ChannelCounts' => {
                                    'class' => 'Paws::Pinpoint::MapOf__integer',
                                    'type' => 'Pinpoint_MapOf__integer'
                                  },
               'Format' => {
                             'type' => 'Str'
                           },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'S3Url' => {
                            'type' => 'Str'
                          },
               'ExternalId' => {
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

Paws::Pinpoint::SegmentImportResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentImportResource object:

  $service_obj->Method(Att1 => { ChannelCounts => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentImportResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelCounts

=head1 DESCRIPTION

Provides information about the import job that created a segment. An
import job is a job that creates a user segment by importing endpoint
definitions.

=head1 ATTRIBUTES


=head2 ChannelCounts => Pinpoint_MapOf__integer

  The number of channel types in the endpoint definitions that were
imported to create the segment.


=head2 B<REQUIRED> ExternalId => Str

  (Deprecated) Your AWS account ID, which you assigned to an external ID
key in an IAM trust policy. Amazon Pinpoint previously used this value
to assume an IAM role when importing endpoint definitions, but we
removed this requirement. We don't recommend use of external IDs for
IAM roles that are assumed by Amazon Pinpoint.


=head2 B<REQUIRED> Format => Str

  The format of the files that were imported to create the segment. Valid
values are: CSV, for comma-separated values format; and, JSON, for
newline-delimited JSON format.


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that authorized Amazon Pinpoint to access the
Amazon S3 location to import endpoint definitions from.


=head2 B<REQUIRED> S3Url => Str

  The URL of the Amazon Simple Storage Service (Amazon S3) bucket that
the endpoint definitions were imported from to create the segment.


=head2 B<REQUIRED> Size => Int

  The number of endpoint definitions that were imported successfully to
create the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

