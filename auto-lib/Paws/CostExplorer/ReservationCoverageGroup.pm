# Generated from default/object.tt
package Paws::CostExplorer::ReservationCoverageGroup;
  use Moo;
  use Types::Standard qw//;
  use Paws::CostExplorer::Types qw/CostExplorer_Attributes CostExplorer_Coverage/;
  has Attributes => (is => 'ro', isa => CostExplorer_Attributes);
  has Coverage => (is => 'ro', isa => CostExplorer_Coverage);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'type' => 'CostExplorer_Attributes',
                                 'class' => 'Paws::CostExplorer::Attributes'
                               },
               'Coverage' => {
                               'type' => 'CostExplorer_Coverage',
                               'class' => 'Paws::CostExplorer::Coverage'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ReservationCoverageGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ReservationCoverageGroup object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Coverage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ReservationCoverageGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

A group of reservations that share a set of attributes.

=head1 ATTRIBUTES


=head2 Attributes => CostExplorer_Attributes

  The attributes for this group of reservations.


=head2 Coverage => CostExplorer_Coverage

  How much instance usage this group of reservations covered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

