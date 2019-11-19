# Generated from default/object.tt
package Paws::SESv2::SendQuota;
  use Moo;
  use Types::Standard qw/Num/;
  use Paws::SESv2::Types qw//;
  has Max24HourSend => (is => 'ro', isa => Num);
  has MaxSendRate => (is => 'ro', isa => Num);
  has SentLast24Hours => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxSendRate' => {
                                  'type' => 'Num'
                                },
               'SentLast24Hours' => {
                                      'type' => 'Num'
                                    },
               'Max24HourSend' => {
                                    'type' => 'Num'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SendQuota

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::SendQuota object:

  $service_obj->Method(Att1 => { Max24HourSend => $value, ..., SentLast24Hours => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::SendQuota object:

  $result = $service_obj->Method(...);
  $result->Att1->Max24HourSend

=head1 DESCRIPTION

An object that contains information about the per-day and per-second
sending limits for your Amazon SES account in the current AWS Region.

=head1 ATTRIBUTES


=head2 Max24HourSend => Num

  The maximum number of emails that you can send in the current AWS
Region over a 24-hour period. This value is also called your I<sending
quota>.


=head2 MaxSendRate => Num

  The maximum number of emails that you can send per second in the
current AWS Region. This value is also called your I<maximum sending
rate> or your I<maximum TPS (transactions per second) rate>.


=head2 SentLast24Hours => Num

  The number of emails sent from your Amazon SES account in the current
AWS Region over the past 24 hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

