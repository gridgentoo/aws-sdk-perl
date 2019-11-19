# Generated from default/object.tt
package Paws::GroundStation::DemodulationConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has UnvalidatedJSON => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UnvalidatedJSON' => 'unvalidatedJSON'
                     },
  'IsRequired' => {
                    'UnvalidatedJSON' => 1
                  },
  'types' => {
               'UnvalidatedJSON' => {
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

Paws::GroundStation::DemodulationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::DemodulationConfig object:

  $service_obj->Method(Att1 => { UnvalidatedJSON => $value, ..., UnvalidatedJSON => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::DemodulationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->UnvalidatedJSON

=head1 DESCRIPTION

Information about the demodulation C<Config>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> UnvalidatedJSON => Str

  Unvalidated JSON of a demodulation C<Config>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

