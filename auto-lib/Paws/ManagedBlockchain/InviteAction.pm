# Generated from default/object.tt
package Paws::ManagedBlockchain::InviteAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has Principal => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Principal' => 1
                  },
  'types' => {
               'Principal' => {
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

Paws::ManagedBlockchain::InviteAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::InviteAction object:

  $service_obj->Method(Att1 => { Principal => $value, ..., Principal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::InviteAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Principal

=head1 DESCRIPTION

An action to invite a specific AWS account to create a member and join
the network. The C<InviteAction> is carried out when a C<Proposal> is
C<APPROVED>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Principal => Str

  The AWS account ID to invite.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

