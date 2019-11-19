# Generated from default/object.tt
package Paws::MediaPackageVod::PackagingConfigurationCreateParameters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_CmafPackage MediaPackageVod_DashPackage MediaPackageVod_MssPackage MediaPackageVod_HlsPackage/;
  has CmafPackage => (is => 'ro', isa => MediaPackageVod_CmafPackage);
  has DashPackage => (is => 'ro', isa => MediaPackageVod_DashPackage);
  has HlsPackage => (is => 'ro', isa => MediaPackageVod_HlsPackage);
  has Id => (is => 'ro', isa => Str, required => 1);
  has MssPackage => (is => 'ro', isa => MediaPackageVod_MssPackage);
  has PackagingGroupId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CmafPackage' => {
                                  'type' => 'MediaPackageVod_CmafPackage',
                                  'class' => 'Paws::MediaPackageVod::CmafPackage'
                                },
               'Id' => {
                         'type' => 'Str'
                       },
               'DashPackage' => {
                                  'class' => 'Paws::MediaPackageVod::DashPackage',
                                  'type' => 'MediaPackageVod_DashPackage'
                                },
               'PackagingGroupId' => {
                                       'type' => 'Str'
                                     },
               'HlsPackage' => {
                                 'type' => 'MediaPackageVod_HlsPackage',
                                 'class' => 'Paws::MediaPackageVod::HlsPackage'
                               },
               'MssPackage' => {
                                 'type' => 'MediaPackageVod_MssPackage',
                                 'class' => 'Paws::MediaPackageVod::MssPackage'
                               }
             },
  'NameInRequest' => {
                       'MssPackage' => 'mssPackage',
                       'HlsPackage' => 'hlsPackage',
                       'PackagingGroupId' => 'packagingGroupId',
                       'DashPackage' => 'dashPackage',
                       'Id' => 'id',
                       'CmafPackage' => 'cmafPackage'
                     },
  'IsRequired' => {
                    'PackagingGroupId' => 1,
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::PackagingConfigurationCreateParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::PackagingConfigurationCreateParameters object:

  $service_obj->Method(Att1 => { CmafPackage => $value, ..., PackagingGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::PackagingConfigurationCreateParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->CmafPackage

=head1 DESCRIPTION

Parameters used to create a new MediaPackage VOD PackagingConfiguration
resource.

=head1 ATTRIBUTES


=head2 CmafPackage => MediaPackageVod_CmafPackage

  


=head2 DashPackage => MediaPackageVod_DashPackage

  


=head2 HlsPackage => MediaPackageVod_HlsPackage

  


=head2 B<REQUIRED> Id => Str

  The ID of the PackagingConfiguration.


=head2 MssPackage => MediaPackageVod_MssPackage

  


=head2 B<REQUIRED> PackagingGroupId => Str

  The ID of a PackagingGroup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

