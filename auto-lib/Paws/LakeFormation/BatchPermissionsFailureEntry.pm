# Generated from default/object.tt
package Paws::LakeFormation::BatchPermissionsFailureEntry;
  use Moo;
  use Types::Standard qw//;
  use Paws::LakeFormation::Types qw/LakeFormation_BatchPermissionsRequestEntry LakeFormation_ErrorDetail/;
  has Error => (is => 'ro', isa => LakeFormation_ErrorDetail);
  has RequestEntry => (is => 'ro', isa => LakeFormation_BatchPermissionsRequestEntry);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestEntry' => {
                                   'type' => 'LakeFormation_BatchPermissionsRequestEntry',
                                   'class' => 'Paws::LakeFormation::BatchPermissionsRequestEntry'
                                 },
               'Error' => {
                            'class' => 'Paws::LakeFormation::ErrorDetail',
                            'type' => 'LakeFormation_ErrorDetail'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::BatchPermissionsFailureEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::BatchPermissionsFailureEntry object:

  $service_obj->Method(Att1 => { Error => $value, ..., RequestEntry => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::BatchPermissionsFailureEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Error

=head1 DESCRIPTION

A list of failures when performing a batch grant or batch revoke
operation.

=head1 ATTRIBUTES


=head2 Error => LakeFormation_ErrorDetail

  An error message that applies to the failure of the entry.


=head2 RequestEntry => LakeFormation_BatchPermissionsRequestEntry

  An identifier for an entry of the batch request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

