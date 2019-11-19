# Generated from default/object.tt
package Paws::IoTEvents::TransitionEvent;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_Action/;
  has Actions => (is => 'ro', isa => ArrayRef[IoTEvents_Action]);
  has Condition => (is => 'ro', isa => Str, required => 1);
  has EventName => (is => 'ro', isa => Str, required => 1);
  has NextState => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Condition' => 'condition',
                       'NextState' => 'nextState',
                       'Actions' => 'actions',
                       'EventName' => 'eventName'
                     },
  'IsRequired' => {
                    'Condition' => 1,
                    'NextState' => 1,
                    'EventName' => 1
                  },
  'types' => {
               'Actions' => {
                              'class' => 'Paws::IoTEvents::Action',
                              'type' => 'ArrayRef[IoTEvents_Action]'
                            },
               'EventName' => {
                                'type' => 'Str'
                              },
               'NextState' => {
                                'type' => 'Str'
                              },
               'Condition' => {
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

Paws::IoTEvents::TransitionEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::TransitionEvent object:

  $service_obj->Method(Att1 => { Actions => $value, ..., NextState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::TransitionEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Specifies the actions performed and the next state entered when a
C<"condition"> evaluates to TRUE.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[IoTEvents_Action]

  The actions to be performed.


=head2 B<REQUIRED> Condition => Str

  [Required] A Boolean expression that when TRUE causes the actions to be
performed and the C<"nextState"> to be entered.


=head2 B<REQUIRED> EventName => Str

  The name of the transition event.


=head2 B<REQUIRED> NextState => Str

  The next state to enter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

