# Generated from default/object.tt
package Paws::DAX::Event;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DAX::Types qw//;
  has Date => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has SourceName => (is => 'ro', isa => Str);
  has SourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'Date' => {
                           'type' => 'Str'
                         },
               'SourceName' => {
                                 'type' => 'Str'
                               },
               'Message' => {
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

Paws::DAX::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::Event object:

  $service_obj->Method(Att1 => { Date => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

Represents a single occurrence of something interesting within the
system. Some examples of events are creating a DAX cluster, adding or
removing a node, or rebooting a node.

=head1 ATTRIBUTES


=head2 Date => Str

  The date and time when the event occurred.


=head2 Message => Str

  A user-defined message associated with the event.


=head2 SourceName => Str

  The source of the event. For example, if the event occurred at the node
level, the source would be the node ID.


=head2 SourceType => Str

  Specifies the origin of this event - a cluster, a parameter group, a
node ID, etc.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

