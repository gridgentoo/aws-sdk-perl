# Generated from default/object.tt
package Paws::XRay::ResponseTimeRootCauseEntity;
  use Moo;
  use Types::Standard qw/Num Str Bool/;
  use Paws::XRay::Types qw//;
  has Coverage => (is => 'ro', isa => Num);
  has Name => (is => 'ro', isa => Str);
  has Remote => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Remote' => {
                             'type' => 'Bool'
                           },
               'Name' => {
                           'type' => 'Str'
                         },
               'Coverage' => {
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

Paws::XRay::ResponseTimeRootCauseEntity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::ResponseTimeRootCauseEntity object:

  $service_obj->Method(Att1 => { Coverage => $value, ..., Remote => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::ResponseTimeRootCauseEntity object:

  $result = $service_obj->Method(...);
  $result->Att1->Coverage

=head1 DESCRIPTION

A collection of segments and corresponding subsegments associated to a
response time warning.

=head1 ATTRIBUTES


=head2 Coverage => Num

  The types and messages of the exceptions.


=head2 Name => Str

  The name of the entity.


=head2 Remote => Bool

  A flag that denotes a remote subsegment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

