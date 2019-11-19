# Generated from default/object.tt
package Paws::RedShift::Event;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::RedShift::Types qw//;
  has Date => (is => 'ro', isa => Str);
  has EventCategories => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EventId => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has Severity => (is => 'ro', isa => Str);
  has SourceIdentifier => (is => 'ro', isa => Str);
  has SourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EventCategories' => 'EventCategory'
                     },
  'types' => {
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'SourceIdentifier' => {
                                       'type' => 'Str'
                                     },
               'EventId' => {
                              'type' => 'Str'
                            },
               'Severity' => {
                               'type' => 'Str'
                             },
               'EventCategories' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'Message' => {
                              'type' => 'Str'
                            },
               'Date' => {
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

Paws::RedShift::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::Event object:

  $service_obj->Method(Att1 => { Date => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

Describes an event.

=head1 ATTRIBUTES


=head2 Date => Str

  The date and time of the event.


=head2 EventCategories => ArrayRef[Str|Undef]

  A list of the event categories.

Values: Configuration, Management, Monitoring, Security


=head2 EventId => Str

  The identifier of the event.


=head2 Message => Str

  The text of this event.


=head2 Severity => Str

  The severity of the event.

Values: ERROR, INFO


=head2 SourceIdentifier => Str

  The identifier for the source of the event.


=head2 SourceType => Str

  The source type for this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

