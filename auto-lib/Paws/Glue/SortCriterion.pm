# Generated from default/object.tt
package Paws::Glue::SortCriterion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has FieldName => (is => 'ro', isa => Str);
  has Sort => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FieldName' => {
                                'type' => 'Str'
                              },
               'Sort' => {
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

Paws::Glue::SortCriterion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::SortCriterion object:

  $service_obj->Method(Att1 => { FieldName => $value, ..., Sort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::SortCriterion object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldName

=head1 DESCRIPTION

Specifies a field to sort by and a sort order.

=head1 ATTRIBUTES


=head2 FieldName => Str

  The name of the field on which to sort.


=head2 Sort => Str

  An ascending or descending sort.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

