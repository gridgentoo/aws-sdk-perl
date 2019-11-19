# Generated from default/object.tt
package Paws::Kinesis::KMSDisabledException;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw//;
  has Message => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Message' => 'message'
                     },
  'types' => {
               'Message' => {
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

Paws::Kinesis::KMSDisabledException

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::KMSDisabledException object:

  $service_obj->Method(Att1 => { Message => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::KMSDisabledException object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

The request was rejected because the specified customer master key
(CMK) isn't enabled.

=head1 ATTRIBUTES


=head2 Message => Str

  A message that provides information about the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

