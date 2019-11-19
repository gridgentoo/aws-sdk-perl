# Generated from default/object.tt
package Paws::Chime::MemberError;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has MemberId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'MemberId' => {
                               'type' => 'Str'
                             },
               'ErrorCode' => {
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

Paws::Chime::MemberError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::MemberError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., MemberId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::MemberError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

The list of errors returned when a member action results in an error.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code.


=head2 ErrorMessage => Str

  The error message.


=head2 MemberId => Str

  The member ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

