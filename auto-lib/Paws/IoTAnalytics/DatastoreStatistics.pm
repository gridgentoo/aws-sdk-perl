# Generated from default/object.tt
package Paws::IoTAnalytics::DatastoreStatistics;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_EstimatedResourceSize/;
  has Size => (is => 'ro', isa => IoTAnalytics_EstimatedResourceSize);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Size' => 'size'
                     },
  'types' => {
               'Size' => {
                           'class' => 'Paws::IoTAnalytics::EstimatedResourceSize',
                           'type' => 'IoTAnalytics_EstimatedResourceSize'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatastoreStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatastoreStatistics object:

  $service_obj->Method(Att1 => { Size => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatastoreStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->Size

=head1 DESCRIPTION

Statistical information about the data store.

=head1 ATTRIBUTES


=head2 Size => IoTAnalytics_EstimatedResourceSize

  The estimated size of the data store.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

