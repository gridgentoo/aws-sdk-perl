package Paws::Kendra::RelevanceFeedback;
  use Moose;
  has RelevanceValue => (is => 'ro', isa => 'Str', required => 1);
  has ResultId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::RelevanceFeedback

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::RelevanceFeedback object:

  $service_obj->Method(Att1 => { RelevanceValue => $value, ..., ResultId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::RelevanceFeedback object:

  $result = $service_obj->Method(...);
  $result->Att1->RelevanceValue

=head1 DESCRIPTION

Provides feedback on how relevant a document is to a search. Your
application uses the SubmitFeedback operation to provide relevance
information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RelevanceValue => Str

  Whether to document was relevant or not relevant to the search.


=head2 B<REQUIRED> ResultId => Str

  The unique identifier of the search result that the user provided
relevance feedback for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

