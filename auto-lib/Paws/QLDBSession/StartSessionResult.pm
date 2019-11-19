# Generated from default/object.tt
package Paws::QLDBSession::StartSessionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDBSession::Types qw//;
  has SessionToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SessionToken' => {
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

Paws::QLDBSession::StartSessionResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::StartSessionResult object:

  $service_obj->Method(Att1 => { SessionToken => $value, ..., SessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::StartSessionResult object:

  $result = $service_obj->Method(...);
  $result->Att1->SessionToken

=head1 DESCRIPTION

Contains the details of the started session.

=head1 ATTRIBUTES


=head2 SessionToken => Str

  Session token of the started session. This C<SessionToken> is required
for every subsequent command that is issued during the current session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

