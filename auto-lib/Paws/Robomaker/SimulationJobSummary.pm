# Generated from default/object.tt
package Paws::Robomaker::SimulationJobSummary;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Robomaker::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has DataSourceNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RobotApplicationNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SimulationApplicationNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RobotApplicationNames' => 'robotApplicationNames',
                       'Status' => 'status',
                       'DataSourceNames' => 'dataSourceNames',
                       'Name' => 'name',
                       'Arn' => 'arn',
                       'SimulationApplicationNames' => 'simulationApplicationNames',
                       'LastUpdatedAt' => 'lastUpdatedAt'
                     },
  'types' => {
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'SimulationApplicationNames' => {
                                                 'type' => 'ArrayRef[Str|Undef]'
                                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'RobotApplicationNames' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          },
               'Status' => {
                             'type' => 'Str'
                           },
               'DataSourceNames' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SimulationJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::SimulationJobSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::SimulationJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Summary information for a simulation job.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the simulation job.


=head2 DataSourceNames => ArrayRef[Str|Undef]

  The names of the data sources.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the simulation job was
last updated.


=head2 Name => Str

  The name of the simulation job.


=head2 RobotApplicationNames => ArrayRef[Str|Undef]

  A list of simulation job robot application names.


=head2 SimulationApplicationNames => ArrayRef[Str|Undef]

  A list of simulation job simulation application names.


=head2 Status => Str

  The status of the simulation job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

