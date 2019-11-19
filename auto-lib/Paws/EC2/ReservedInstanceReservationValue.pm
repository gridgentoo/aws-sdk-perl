package Paws::EC2::ReservedInstanceReservationValue;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ReservationValue/;
  has ReservationValue => (is => 'ro', isa => EC2_ReservationValue);
  has ReservedInstanceId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservationValue' => {
                                       'class' => 'Paws::EC2::ReservationValue',
                                       'type' => 'EC2_ReservationValue'
                                     },
               'ReservedInstanceId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'ReservedInstanceId' => 'reservedInstanceId',
                       'ReservationValue' => 'reservationValue'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstanceReservationValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstanceReservationValue object:

  $service_obj->Method(Att1 => { ReservationValue => $value, ..., ReservedInstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstanceReservationValue object:

  $result = $service_obj->Method(...);
  $result->Att1->ReservationValue

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ReservationValue => EC2_ReservationValue

  The total value of the Convertible Reserved Instance that you are
exchanging.


=head2 ReservedInstanceId => Str

  The ID of the Convertible Reserved Instance that you are exchanging.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
