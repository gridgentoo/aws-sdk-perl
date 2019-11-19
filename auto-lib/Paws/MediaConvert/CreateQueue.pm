
package Paws::MediaConvert::CreateQueue;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert___mapOf__string MediaConvert_ReservationPlanSettings/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PricingPlan => (is => 'ro', isa => Str, predicate => 1);
  has ReservationPlanSettings => (is => 'ro', isa => MediaConvert_ReservationPlanSettings, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => MediaConvert___mapOf__string, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateQueue');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2017-08-29/queues');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConvert::CreateQueueResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'type' => 'MediaConvert___mapOf__string',
                           'class' => 'Paws::MediaConvert::__mapOf__string'
                         },
               'PricingPlan' => {
                                  'type' => 'Str'
                                },
               'ReservationPlanSettings' => {
                                              'type' => 'MediaConvert_ReservationPlanSettings',
                                              'class' => 'Paws::MediaConvert::ReservationPlanSettings'
                                            },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'PricingPlan' => 'pricingPlan',
                       'Tags' => 'tags',
                       'Description' => 'description',
                       'Status' => 'status',
                       'Name' => 'name',
                       'ReservationPlanSettings' => 'reservationPlanSettings'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateQueue - Arguments for method CreateQueue on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueue on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method CreateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueue.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $CreateQueueResponse = $mediaconvert->CreateQueue(
      Name                    => 'My__string',
      Description             => 'My__string',    # OPTIONAL
      PricingPlan             => 'ON_DEMAND',     # OPTIONAL
      ReservationPlanSettings => {
        Commitment    => 'ONE_YEAR',              # values: ONE_YEAR
        RenewalType   => 'AUTO_RENEW',            # values: AUTO_RENEW, EXPIRE
        ReservedSlots => 1,

      },    # OPTIONAL
      Status => 'ACTIVE',                             # OPTIONAL
      Tags   => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Queue = $CreateQueueResponse->Queue;

    # Returns a L<Paws::MediaConvert::CreateQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/CreateQueue>

=head1 ATTRIBUTES


=head2 Description => Str

Optional. A description of the queue that you are creating.



=head2 B<REQUIRED> Name => Str

The name of the queue that you are creating.



=head2 PricingPlan => Str

Specifies whether the pricing plan for the queue is on-demand or
reserved. For on-demand, you pay per minute, billed in increments of
.01 minute. For reserved, you pay for the transcoding capacity of the
entire queue, regardless of how much or how little you use it. Reserved
pricing requires a 12-month commitment. When you use the API to create
a queue, the default is on-demand.

Valid values are: C<"ON_DEMAND">, C<"RESERVED">

=head2 ReservationPlanSettings => MediaConvert_ReservationPlanSettings

Details about the pricing plan for your reserved queue. Required for
reserved queues and not applicable to on-demand queues.



=head2 Status => Str

Initial state of the queue. If you create a paused queue, then jobs in
that queue won't begin.

Valid values are: C<"ACTIVE">, C<"PAUSED">

=head2 Tags => MediaConvert___mapOf__string

The tags that you want to add to the resource. You can tag resources
with a key-value pair or with only a key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueue in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

