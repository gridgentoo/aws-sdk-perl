# Generated from default/object.tt
package Paws::CloudSearch::IntOptions;
  use Moo;
  use Types::Standard qw/Int Bool Str/;
  use Paws::CloudSearch::Types qw//;
  has DefaultValue => (is => 'ro', isa => Int);
  has FacetEnabled => (is => 'ro', isa => Bool);
  has ReturnEnabled => (is => 'ro', isa => Bool);
  has SearchEnabled => (is => 'ro', isa => Bool);
  has SortEnabled => (is => 'ro', isa => Bool);
  has SourceField => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DefaultValue' => {
                                   'type' => 'Int'
                                 },
               'SortEnabled' => {
                                  'type' => 'Bool'
                                },
               'FacetEnabled' => {
                                   'type' => 'Bool'
                                 },
               'SourceField' => {
                                  'type' => 'Str'
                                },
               'SearchEnabled' => {
                                    'type' => 'Bool'
                                  },
               'ReturnEnabled' => {
                                    'type' => 'Bool'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::IntOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::IntOptions object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., SourceField => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::IntOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

Options for a 64-bit signed integer field. Present if C<IndexFieldType>
specifies the field is of type C<int>. All options are enabled by
default.

=head1 ATTRIBUTES


=head2 DefaultValue => Int

  A value to use for the field if the field isn't specified for a
document. This can be important if you are using the field in an
expression and that field is not present in every document.


=head2 FacetEnabled => Bool

  Whether facet information can be returned for the field.


=head2 ReturnEnabled => Bool

  Whether the contents of the field can be returned in the search
results.


=head2 SearchEnabled => Bool

  Whether the contents of the field are searchable.


=head2 SortEnabled => Bool

  Whether the field can be used to sort the search results.


=head2 SourceField => Str

  The name of the source field to map to the field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

