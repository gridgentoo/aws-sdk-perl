# Generated from default/object.tt
package Paws::Neptune::Filter;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Neptune::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'Values' => 1
                  },
  'NameInRequest' => {
                       'Values' => 'Value'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

This type is not currently supported.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  This parameter is not currently supported.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  This parameter is not currently supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

