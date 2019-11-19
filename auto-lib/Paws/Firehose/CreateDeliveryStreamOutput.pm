# Generated from json/callresult_class.tt

package Paws::Firehose::CreateDeliveryStreamOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw//;
  has DeliveryStreamARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeliveryStreamARN' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Firehose::CreateDeliveryStreamOutput

=head1 ATTRIBUTES


=head2 DeliveryStreamARN => Str

The ARN of the delivery stream.


=head2 _request_id => Str


=cut

1;