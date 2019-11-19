# Generated from default/object.tt
package Paws::SecurityHub::NumberFilter;
  use Moo;
  use Types::Standard qw/Num/;
  use Paws::SecurityHub::Types qw//;
  has Eq => (is => 'ro', isa => Num);
  has Gte => (is => 'ro', isa => Num);
  has Lte => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Eq' => {
                         'type' => 'Num'
                       },
               'Lte' => {
                          'type' => 'Num'
                        },
               'Gte' => {
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

Paws::SecurityHub::NumberFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::NumberFilter object:

  $service_obj->Method(Att1 => { Eq => $value, ..., Lte => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::NumberFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Eq

=head1 DESCRIPTION

A number filter for querying findings.

=head1 ATTRIBUTES


=head2 Eq => Num

  The equal-to condition to be applied to a single field when querying
for findings.


=head2 Gte => Num

  The greater-than-equal condition to be applied to a single field when
querying for findings.


=head2 Lte => Num

  The less-than-equal condition to be applied to a single field when
querying for findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

