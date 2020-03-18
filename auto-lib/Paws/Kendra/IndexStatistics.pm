package Paws::Kendra::IndexStatistics;
  use Moose;
  has FaqStatistics => (is => 'ro', isa => 'Paws::Kendra::FaqStatistics', required => 1);
  has TextDocumentStatistics => (is => 'ro', isa => 'Paws::Kendra::TextDocumentStatistics', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::IndexStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::IndexStatistics object:

  $service_obj->Method(Att1 => { FaqStatistics => $value, ..., TextDocumentStatistics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::IndexStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->FaqStatistics

=head1 DESCRIPTION

Provides information about the number of documents and the number of
questions and answers in an index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FaqStatistics => L<Paws::Kendra::FaqStatistics>

  The number of question and answer topics in the index.


=head2 B<REQUIRED> TextDocumentStatistics => L<Paws::Kendra::TextDocumentStatistics>

  The number of text documents indexed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

