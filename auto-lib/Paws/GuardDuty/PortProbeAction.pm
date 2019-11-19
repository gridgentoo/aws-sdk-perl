# Generated from default/object.tt
package Paws::GuardDuty::PortProbeAction;
  use Moo;
  use Types::Standard qw/Bool ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_PortProbeDetail/;
  has Blocked => (is => 'ro', isa => Bool);
  has PortProbeDetails => (is => 'ro', isa => ArrayRef[GuardDuty_PortProbeDetail]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Blocked' => 'blocked',
                       'PortProbeDetails' => 'portProbeDetails'
                     },
  'types' => {
               'PortProbeDetails' => {
                                       'class' => 'Paws::GuardDuty::PortProbeDetail',
                                       'type' => 'ArrayRef[GuardDuty_PortProbeDetail]'
                                     },
               'Blocked' => {
                              'type' => 'Bool'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::PortProbeAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::PortProbeAction object:

  $service_obj->Method(Att1 => { Blocked => $value, ..., PortProbeDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::PortProbeAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Blocked

=head1 DESCRIPTION

Contains information about the PORT_PROBE action described in the
finding.

=head1 ATTRIBUTES


=head2 Blocked => Bool

  Port probe blocked information.


=head2 PortProbeDetails => ArrayRef[GuardDuty_PortProbeDetail]

  A list of port probe details objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

