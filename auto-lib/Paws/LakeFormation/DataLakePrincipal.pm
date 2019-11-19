# Generated from default/object.tt
package Paws::LakeFormation::DataLakePrincipal;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LakeFormation::Types qw//;
  has DataLakePrincipalIdentifier => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataLakePrincipalIdentifier' => {
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

Paws::LakeFormation::DataLakePrincipal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::DataLakePrincipal object:

  $service_obj->Method(Att1 => { DataLakePrincipalIdentifier => $value, ..., DataLakePrincipalIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::DataLakePrincipal object:

  $result = $service_obj->Method(...);
  $result->Att1->DataLakePrincipalIdentifier

=head1 DESCRIPTION

The AWS Lake Formation principal.

=head1 ATTRIBUTES


=head2 DataLakePrincipalIdentifier => Str

  An identifier for the AWS Lake Formation principal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

