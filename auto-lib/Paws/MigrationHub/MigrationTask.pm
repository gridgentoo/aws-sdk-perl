# Generated from default/object.tt
package Paws::MigrationHub::MigrationTask;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MigrationHub::Types qw/MigrationHub_Task MigrationHub_ResourceAttribute/;
  has MigrationTaskName => (is => 'ro', isa => Str);
  has ProgressUpdateStream => (is => 'ro', isa => Str);
  has ResourceAttributeList => (is => 'ro', isa => ArrayRef[MigrationHub_ResourceAttribute]);
  has Task => (is => 'ro', isa => MigrationHub_Task);
  has UpdateDateTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MigrationTaskName' => {
                                        'type' => 'Str'
                                      },
               'ResourceAttributeList' => {
                                            'type' => 'ArrayRef[MigrationHub_ResourceAttribute]',
                                            'class' => 'Paws::MigrationHub::ResourceAttribute'
                                          },
               'UpdateDateTime' => {
                                     'type' => 'Str'
                                   },
               'ProgressUpdateStream' => {
                                           'type' => 'Str'
                                         },
               'Task' => {
                           'class' => 'Paws::MigrationHub::Task',
                           'type' => 'MigrationHub_Task'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::MigrationTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHub::MigrationTask object:

  $service_obj->Method(Att1 => { MigrationTaskName => $value, ..., UpdateDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHub::MigrationTask object:

  $result = $service_obj->Method(...);
  $result->Att1->MigrationTaskName

=head1 DESCRIPTION

Represents a migration task in a migration tool.

=head1 ATTRIBUTES


=head2 MigrationTaskName => Str

  Unique identifier that references the migration task.


=head2 ProgressUpdateStream => Str

  A name that identifies the vendor of the migration tool being used.


=head2 ResourceAttributeList => ArrayRef[MigrationHub_ResourceAttribute]

  


=head2 Task => MigrationHub_Task

  Task object encapsulating task information.


=head2 UpdateDateTime => Str

  The timestamp when the task was gathered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

