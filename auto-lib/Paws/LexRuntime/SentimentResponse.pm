package Paws::LexRuntime::SentimentResponse;
  use Moose;
  has SentimentLabel => (is => 'ro', isa => 'Str', request_name => 'sentimentLabel', traits => ['NameInRequest']);
  has SentimentScore => (is => 'ro', isa => 'Str', request_name => 'sentimentScore', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::SentimentResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntime::SentimentResponse object:

  $service_obj->Method(Att1 => { SentimentLabel => $value, ..., SentimentScore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntime::SentimentResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->SentimentLabel

=head1 DESCRIPTION

The sentiment expressed in an utterance.

When the bot is configured to send utterances to Amazon Comprehend for
sentiment analysis, this field structure contains the result of the
analysis.

=head1 ATTRIBUTES


=head2 SentimentLabel => Str

  The inferred sentiment that Amazon Comprehend has the highest
confidence in.


=head2 SentimentScore => Str

  The likelihood that the sentiment was correctly inferred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

