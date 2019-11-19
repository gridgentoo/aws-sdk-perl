# Generated from default/object.tt
package Paws::IoTEventsData::DetectorStateDefinition;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEventsData::Types qw/IoTEventsData_VariableDefinition IoTEventsData_TimerDefinition/;
  has StateName => (is => 'ro', isa => Str, required => 1);
  has Timers => (is => 'ro', isa => ArrayRef[IoTEventsData_TimerDefinition], required => 1);
  has Variables => (is => 'ro', isa => ArrayRef[IoTEventsData_VariableDefinition], required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'StateName' => 'stateName',
                       'Variables' => 'variables',
                       'Timers' => 'timers'
                     },
  'IsRequired' => {
                    'Timers' => 1,
                    'Variables' => 1,
                    'StateName' => 1
                  },
  'types' => {
               'Timers' => {
                             'class' => 'Paws::IoTEventsData::TimerDefinition',
                             'type' => 'ArrayRef[IoTEventsData_TimerDefinition]'
                           },
               'StateName' => {
                                'type' => 'Str'
                              },
               'Variables' => {
                                'type' => 'ArrayRef[IoTEventsData_VariableDefinition]',
                                'class' => 'Paws::IoTEventsData::VariableDefinition'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::DetectorStateDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::DetectorStateDefinition object:

  $service_obj->Method(Att1 => { StateName => $value, ..., Variables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::DetectorStateDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->StateName

=head1 DESCRIPTION

The new state, variable values, and timer settings of the detector
(instance).

=head1 ATTRIBUTES


=head2 B<REQUIRED> StateName => Str

  The name of the new state of the detector (instance).


=head2 B<REQUIRED> Timers => ArrayRef[IoTEventsData_TimerDefinition]

  The new values of the detector's timers. Any timer whose value isn't
specified is cleared, and its timeout event won't occur.


=head2 B<REQUIRED> Variables => ArrayRef[IoTEventsData_VariableDefinition]

  The new values of the detector's variables. Any variable whose value
isn't specified is cleared.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

