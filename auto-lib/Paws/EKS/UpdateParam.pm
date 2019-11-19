# Generated from default/object.tt
package Paws::EKS::UpdateParam;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw//;
  has Type => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Value' => 'value',
                       'Type' => 'type'
                     },
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Value' => {
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

Paws::EKS::UpdateParam

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::UpdateParam object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::UpdateParam object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

An object representing the details of an update request.

=head1 ATTRIBUTES


=head2 Type => Str

  The keys associated with an update request.


=head2 Value => Str

  The value of the keys submitted as part of an update request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

