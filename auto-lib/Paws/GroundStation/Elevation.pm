# Generated from default/object.tt
package Paws::GroundStation::Elevation;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::GroundStation::Types qw//;
  has Unit => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Num, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Value' => 'value',
                       'Unit' => 'unit'
                     },
  'IsRequired' => {
                    'Unit' => 1,
                    'Value' => 1
                  },
  'types' => {
               'Value' => {
                            'type' => 'Num'
                          },
               'Unit' => {
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

Paws::GroundStation::Elevation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::Elevation object:

  $service_obj->Method(Att1 => { Unit => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::Elevation object:

  $result = $service_obj->Method(...);
  $result->Att1->Unit

=head1 DESCRIPTION

Elevation angle of the satellite in the sky during a contact.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Unit => Str

  Elevation angle units.


=head2 B<REQUIRED> Value => Num

  Elevation angle value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

