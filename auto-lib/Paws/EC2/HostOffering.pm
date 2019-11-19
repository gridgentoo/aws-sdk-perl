package Paws::EC2::HostOffering;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw//;
  has CurrencyCode => (is => 'ro', isa => Str);
  has Duration => (is => 'ro', isa => Int);
  has HourlyPrice => (is => 'ro', isa => Str);
  has InstanceFamily => (is => 'ro', isa => Str);
  has OfferingId => (is => 'ro', isa => Str);
  has PaymentOption => (is => 'ro', isa => Str);
  has UpfrontPrice => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'HourlyPrice' => 'hourlyPrice',
                       'InstanceFamily' => 'instanceFamily',
                       'CurrencyCode' => 'currencyCode',
                       'PaymentOption' => 'paymentOption',
                       'Duration' => 'duration',
                       'UpfrontPrice' => 'upfrontPrice',
                       'OfferingId' => 'offeringId'
                     },
  'types' => {
               'PaymentOption' => {
                                    'type' => 'Str'
                                  },
               'HourlyPrice' => {
                                  'type' => 'Str'
                                },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'InstanceFamily' => {
                                     'type' => 'Str'
                                   },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'Duration' => {
                               'type' => 'Int'
                             },
               'UpfrontPrice' => {
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

Paws::EC2::HostOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::HostOffering object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., UpfrontPrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::HostOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency of the offering.


=head2 Duration => Int

  The duration of the offering (in seconds).


=head2 HourlyPrice => Str

  The hourly price of the offering.


=head2 InstanceFamily => Str

  The instance family of the offering.


=head2 OfferingId => Str

  The ID of the offering.


=head2 PaymentOption => Str

  The available payment option.


=head2 UpfrontPrice => Str

  The upfront price of the offering. Does not apply to No Upfront
offerings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
