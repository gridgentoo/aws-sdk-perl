# Generated from default/object.tt
package Paws::SESv2::Destination;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::SESv2::Types qw//;
  has BccAddresses => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CcAddresses => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ToAddresses => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CcAddresses' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'ToAddresses' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'BccAddresses' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::Destination object:

  $service_obj->Method(Att1 => { BccAddresses => $value, ..., ToAddresses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->BccAddresses

=head1 DESCRIPTION

An object that describes the recipients for an email.

=head1 ATTRIBUTES


=head2 BccAddresses => ArrayRef[Str|Undef]

  An array that contains the email addresses of the "BCC" (blind carbon
copy) recipients for the email.


=head2 CcAddresses => ArrayRef[Str|Undef]

  An array that contains the email addresses of the "CC" (carbon copy)
recipients for the email.


=head2 ToAddresses => ArrayRef[Str|Undef]

  An array that contains the email addresses of the "To" recipients for
the email.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

