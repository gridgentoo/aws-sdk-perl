package Paws::Chime::PhoneNumberOrder;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has OrderedPhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::Chime::OrderedPhoneNumber]');
  has PhoneNumberOrderId => (is => 'ro', isa => 'Str');
  has ProductType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PhoneNumberOrder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::PhoneNumberOrder object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., UpdatedTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::PhoneNumberOrder object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

The details of a phone number order created for Amazon Chime.

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

  The phone number order creation timestamp, in ISO 8601 format.


=head2 OrderedPhoneNumbers => ArrayRef[L<Paws::Chime::OrderedPhoneNumber>]

  The ordered phone number details, such as the phone number in E.164
format and the phone number status.


=head2 PhoneNumberOrderId => Str

  The phone number order ID.


=head2 ProductType => Str

  The phone number order product type.


=head2 Status => Str

  The status of the phone number order.


=head2 UpdatedTimestamp => Str

  The updated phone number order timestamp, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

