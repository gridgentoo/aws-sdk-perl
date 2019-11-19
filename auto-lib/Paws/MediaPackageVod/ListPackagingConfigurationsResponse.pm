
package Paws::MediaPackageVod::ListPackagingConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_PackagingConfiguration/;
  has NextToken => (is => 'ro', isa => Str);
  has PackagingConfigurations => (is => 'ro', isa => ArrayRef[MediaPackageVod_PackagingConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PackagingConfigurations' => {
                                              'type' => 'ArrayRef[MediaPackageVod_PackagingConfiguration]',
                                              'class' => 'Paws::MediaPackageVod::PackagingConfiguration'
                                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'PackagingConfigurations' => 'packagingConfigurations'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ListPackagingConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 PackagingConfigurations => ArrayRef[MediaPackageVod_PackagingConfiguration]

A list of MediaPackage VOD PackagingConfiguration resources.


=head2 _request_id => Str


=cut

