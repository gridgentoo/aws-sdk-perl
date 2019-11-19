# Generated from default/object.tt
package Paws::LakeFormation::PrincipalPermissions;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::LakeFormation::Types qw/LakeFormation_DataLakePrincipal/;
  has Permissions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Principal => (is => 'ro', isa => LakeFormation_DataLakePrincipal);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Permissions' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'Principal' => {
                                'class' => 'Paws::LakeFormation::DataLakePrincipal',
                                'type' => 'LakeFormation_DataLakePrincipal'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::PrincipalPermissions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::PrincipalPermissions object:

  $service_obj->Method(Att1 => { Permissions => $value, ..., Principal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::PrincipalPermissions object:

  $result = $service_obj->Method(...);
  $result->Att1->Permissions

=head1 DESCRIPTION

Permissions granted to a principal.

=head1 ATTRIBUTES


=head2 Permissions => ArrayRef[Str|Undef]

  The permissions that are granted to the principal.


=head2 Principal => LakeFormation_DataLakePrincipal

  The principal who is granted permissions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

