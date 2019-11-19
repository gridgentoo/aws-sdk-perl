# Generated from default/object.tt
package Paws::ELB::PolicyAttributeDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ELB::Types qw//;
  has AttributeName => (is => 'ro', isa => Str);
  has AttributeValue => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AttributeValue' => {
                                     'type' => 'Str'
                                   },
               'AttributeName' => {
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

Paws::ELB::PolicyAttributeDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::PolicyAttributeDescription object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., AttributeValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::PolicyAttributeDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Information about a policy attribute.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The name of the attribute.


=head2 AttributeValue => Str

  The value of the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

