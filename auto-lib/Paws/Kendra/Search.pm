package Paws::Kendra::Search;
  use Moose;
  has Displayable => (is => 'ro', isa => 'Bool');
  has Facetable => (is => 'ro', isa => 'Bool');
  has Searchable => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Search

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::Search object:

  $service_obj->Method(Att1 => { Displayable => $value, ..., Searchable => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::Search object:

  $result = $service_obj->Method(...);
  $result->Att1->Displayable

=head1 DESCRIPTION

Provides information about how a custom index field is used during a
search.

=head1 ATTRIBUTES


=head2 Displayable => Bool

  Determines whether the field is returned in the query response. The
default is C<true>.


=head2 Facetable => Bool

  Indicates that the field can be used to create search facets, a count
of results for each value in the field. The default is C<false> .


=head2 Searchable => Bool

  Determines whether the field is used in the search. If the
C<Searchable> field is C<true>, you can use relevance tuning to
manually tune how Amazon Kendra weights the field in the search. The
default is C<true> for string fields and C<false> for number and date
fields.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

