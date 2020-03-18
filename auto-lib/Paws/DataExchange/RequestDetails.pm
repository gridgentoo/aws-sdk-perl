package Paws::DataExchange::RequestDetails;
  use Moose;
  has ExportAssetsToS3 => (is => 'ro', isa => 'Paws::DataExchange::ExportAssetsToS3RequestDetails');
  has ExportAssetToSignedUrl => (is => 'ro', isa => 'Paws::DataExchange::ExportAssetToSignedUrlRequestDetails');
  has ImportAssetFromSignedUrl => (is => 'ro', isa => 'Paws::DataExchange::ImportAssetFromSignedUrlRequestDetails');
  has ImportAssetsFromS3 => (is => 'ro', isa => 'Paws::DataExchange::ImportAssetsFromS3RequestDetails');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::RequestDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::RequestDetails object:

  $service_obj->Method(Att1 => { ExportAssetsToS3 => $value, ..., ImportAssetsFromS3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::RequestDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ExportAssetsToS3

=head1 DESCRIPTION

The details for the request.

=head1 ATTRIBUTES


=head2 ExportAssetsToS3 => L<Paws::DataExchange::ExportAssetsToS3RequestDetails>

  Details about the export to Amazon S3 request.


=head2 ExportAssetToSignedUrl => L<Paws::DataExchange::ExportAssetToSignedUrlRequestDetails>

  Details about the export to signed URL request.


=head2 ImportAssetFromSignedUrl => L<Paws::DataExchange::ImportAssetFromSignedUrlRequestDetails>

  Details about the import from signed URL request.


=head2 ImportAssetsFromS3 => L<Paws::DataExchange::ImportAssetsFromS3RequestDetails>

  Details about the import from Amazon S3 request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

