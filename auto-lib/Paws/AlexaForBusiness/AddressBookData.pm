# Generated from default/object.tt
package Paws::AlexaForBusiness::AddressBookData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has AddressBookArn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'AddressBookArn' => {
                                     'type' => 'Str'
                                   },
               'Description' => {
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

Paws::AlexaForBusiness::AddressBookData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::AddressBookData object:

  $service_obj->Method(Att1 => { AddressBookArn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::AddressBookData object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressBookArn

=head1 DESCRIPTION

Information related to an address book.

=head1 ATTRIBUTES


=head2 AddressBookArn => Str

  The ARN of the address book.


=head2 Description => Str

  The description of the address book.


=head2 Name => Str

  The name of the address book.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

