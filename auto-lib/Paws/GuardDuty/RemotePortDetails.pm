# Generated from default/object.tt
package Paws::GuardDuty::RemotePortDetails;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::GuardDuty::Types qw//;
  has Port => (is => 'ro', isa => Int);
  has PortName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PortName' => {
                               'type' => 'Str'
                             },
               'Port' => {
                           'type' => 'Int'
                         }
             },
  'NameInRequest' => {
                       'Port' => 'port',
                       'PortName' => 'portName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::RemotePortDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::RemotePortDetails object:

  $service_obj->Method(Att1 => { Port => $value, ..., PortName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::RemotePortDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Port

=head1 DESCRIPTION

Contains information about the remote port.

=head1 ATTRIBUTES


=head2 Port => Int

  Port number of the remote connection.


=head2 PortName => Str

  Port name of the remote connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

