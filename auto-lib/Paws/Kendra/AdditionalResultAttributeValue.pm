package Paws::Kendra::AdditionalResultAttributeValue;
  use Moose;
  has TextWithHighlightsValue => (is => 'ro', isa => 'Paws::Kendra::TextWithHighlights');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::AdditionalResultAttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::AdditionalResultAttributeValue object:

  $service_obj->Method(Att1 => { TextWithHighlightsValue => $value, ..., TextWithHighlightsValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::AdditionalResultAttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->TextWithHighlightsValue

=head1 DESCRIPTION

An attribute returned with a document from a search.

=head1 ATTRIBUTES


=head2 TextWithHighlightsValue => L<Paws::Kendra::TextWithHighlights>

  The text associated with the attribute and information about the
highlight to apply to the text.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

