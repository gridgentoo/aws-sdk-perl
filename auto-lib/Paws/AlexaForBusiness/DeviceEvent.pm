# Generated from default/object.tt
package Paws::AlexaForBusiness::DeviceEvent;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has Timestamp => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'Type' => {
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

Paws::AlexaForBusiness::DeviceEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::DeviceEvent object:

  $service_obj->Method(Att1 => { Timestamp => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::DeviceEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Timestamp

=head1 DESCRIPTION

The list of device events.

=head1 ATTRIBUTES


=head2 Timestamp => Str

  The time (in epoch) when the event occurred.


=head2 Type => Str

  The type of device event.


=head2 Value => Str

  The value of the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

