package Paws::Kendra::QueryResultItem;
  use Moose;
  has AdditionalAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::AdditionalResultAttribute]');
  has DocumentAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentAttribute]');
  has DocumentExcerpt => (is => 'ro', isa => 'Paws::Kendra::TextWithHighlights');
  has DocumentId => (is => 'ro', isa => 'Str');
  has DocumentTitle => (is => 'ro', isa => 'Paws::Kendra::TextWithHighlights');
  has DocumentURI => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::QueryResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::QueryResultItem object:

  $service_obj->Method(Att1 => { AdditionalAttributes => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::QueryResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalAttributes

=head1 DESCRIPTION

A single query result.

A query result contains information about a document returned by the
query. This includes the original location of the document, a list of
attributes assigned to the document, and relevant text from the
document that satisfies the query.

=head1 ATTRIBUTES


=head2 AdditionalAttributes => ArrayRef[L<Paws::Kendra::AdditionalResultAttribute>]

  


=head2 DocumentAttributes => ArrayRef[L<Paws::Kendra::DocumentAttribute>]

  An array of document attributes for the document that the query result
maps to. For example, the document author (Author) or the source URI
(SourceUri) of the document.


=head2 DocumentExcerpt => L<Paws::Kendra::TextWithHighlights>

  An extract of the text in the document. Contains information about
highlighting the relevant terms in the excerpt.


=head2 DocumentId => Str

  The unique identifier for the document.


=head2 DocumentTitle => L<Paws::Kendra::TextWithHighlights>

  The title of the document. Contains the text of the title and
information for highlighting the relevant terms in the title.


=head2 DocumentURI => Str

  The URI of the original location of the document.


=head2 Id => Str

  The unique identifier for the query result.


=head2 Type => Str

  The type of document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

