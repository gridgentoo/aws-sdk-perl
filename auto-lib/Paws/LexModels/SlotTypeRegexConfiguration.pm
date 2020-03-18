package Paws::LexModels::SlotTypeRegexConfiguration;
  use Moose;
  has Pattern => (is => 'ro', isa => 'Str', request_name => 'pattern', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::SlotTypeRegexConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::SlotTypeRegexConfiguration object:

  $service_obj->Method(Att1 => { Pattern => $value, ..., Pattern => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::SlotTypeRegexConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Pattern

=head1 DESCRIPTION

Provides a regular expression used to validate the value of a slot.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Pattern => Str

  A regular expression used to validate the value of a slot.

Use a standard regular expression. Amazon Lex supports the following
characters in the regular expression:

=over

=item *

A-Z, a-z

=item *

0-9

=item *

Unicode characters ("\ uE<lt>UnicodeE<gt>")

=back

Represent Unicode characters with four digits, for example "\u0041" or
"\u005A".

The following regular expression operators are not supported:

=over

=item *

Infinite repeaters: *, +, or {x,} with no upper bound.

=item *

Wild card (.)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

