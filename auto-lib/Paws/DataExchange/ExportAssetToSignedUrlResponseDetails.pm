# Generated from default/object.tt
package Paws::DataExchange::ExportAssetToSignedUrlResponseDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw//;
  has AssetId => (is => 'ro', isa => Str, required => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1);
  has SignedUrl => (is => 'ro', isa => Str);
  has SignedUrlExpiresAt => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SignedUrlExpiresAt' => {
                                         'type' => 'Str'
                                       },
               'AssetId' => {
                              'type' => 'Str'
                            },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'SignedUrl' => {
                                'type' => 'Str'
                              },
               'DataSetId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'AssetId' => 1,
                    'RevisionId' => 1,
                    'DataSetId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ExportAssetToSignedUrlResponseDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ExportAssetToSignedUrlResponseDetails object:

  $service_obj->Method(Att1 => { AssetId => $value, ..., SignedUrlExpiresAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ExportAssetToSignedUrlResponseDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetId

=head1 DESCRIPTION

The details of the export to signed URL response.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

  The unique identifier for the asset associated with this export job.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this export job.


=head2 B<REQUIRED> RevisionId => Str

  The unique identifier for the revision associated with this export
response.


=head2 SignedUrl => Str

  The signed URL for the export request.


=head2 SignedUrlExpiresAt => Str

  The date and time that the signed URL expires, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

