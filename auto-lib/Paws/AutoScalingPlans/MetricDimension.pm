# Generated from default/object.tt
package Paws::AutoScalingPlans::MetricDimension;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AutoScalingPlans::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Value' => 1,
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Value' => {
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

Paws::AutoScalingPlans::MetricDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::MetricDimension object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::MetricDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Represents a dimension for a customized metric.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the dimension.


=head2 B<REQUIRED> Value => Str

  The value of the dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

