# Generated from json/callresult_class.tt

package Paws::DirectConnect::ConfirmConnectionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw//;
  has ConnectionState => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ConnectionState' => 'connectionState'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConnectionState' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionState => Str

The state of the connection. The following are the possible values:

=over

=item *

C<ordering>: The initial state of a hosted connection provisioned on an
interconnect. The connection stays in the ordering state until the
owner of the hosted connection confirms or declines the connection
order.

=item *

C<requested>: The initial state of a standard connection. The
connection stays in the requested state until the Letter of
Authorization (LOA) is sent to the customer.

=item *

C<pending>: The connection has been approved and is being initialized.

=item *

C<available>: The network link is up and the connection is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The connection is being deleted.

=item *

C<deleted>: The connection has been deleted.

=item *

C<rejected>: A hosted connection in the C<ordering> state enters the
C<rejected> state if it is deleted by the customer.

=item *

C<unknown>: The state of the connection is not available.

=back


Valid values are: C<"ordering">, C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">, C<"unknown">
=head2 _request_id => Str


=cut

1;