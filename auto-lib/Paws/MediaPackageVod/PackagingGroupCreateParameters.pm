# Generated from default/object.tt
package Paws::MediaPackageVod::PackagingGroupCreateParameters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Id' => 1
                  },
  'NameInRequest' => {
                       'Id' => 'id'
                     },
  'types' => {
               'Id' => {
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

Paws::MediaPackageVod::PackagingGroupCreateParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::PackagingGroupCreateParameters object:

  $service_obj->Method(Att1 => { Id => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::PackagingGroupCreateParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Parameters used to create a new MediaPackage VOD PackagingGroup
resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The ID of the PackagingGroup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

