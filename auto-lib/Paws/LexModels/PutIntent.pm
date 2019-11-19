
package Paws::LexModels::PutIntent;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::LexModels::Types qw/LexModels_Statement LexModels_FollowUpPrompt LexModels_Slot LexModels_CodeHook LexModels_Prompt LexModels_FulfillmentActivity/;
  has Checksum => (is => 'ro', isa => Str, predicate => 1);
  has ConclusionStatement => (is => 'ro', isa => LexModels_Statement, predicate => 1);
  has ConfirmationPrompt => (is => 'ro', isa => LexModels_Prompt, predicate => 1);
  has CreateVersion => (is => 'ro', isa => Bool, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DialogCodeHook => (is => 'ro', isa => LexModels_CodeHook, predicate => 1);
  has FollowUpPrompt => (is => 'ro', isa => LexModels_FollowUpPrompt, predicate => 1);
  has FulfillmentActivity => (is => 'ro', isa => LexModels_FulfillmentActivity, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ParentIntentSignature => (is => 'ro', isa => Str, predicate => 1);
  has RejectionStatement => (is => 'ro', isa => LexModels_Statement, predicate => 1);
  has SampleUtterances => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Slots => (is => 'ro', isa => ArrayRef[LexModels_Slot], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutIntent');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/intents/{name}/versions/$LATEST');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LexModels::PutIntentResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FollowUpPrompt' => {
                                     'type' => 'LexModels_FollowUpPrompt',
                                     'class' => 'Paws::LexModels::FollowUpPrompt'
                                   },
               'Slots' => {
                            'type' => 'ArrayRef[LexModels_Slot]',
                            'class' => 'Paws::LexModels::Slot'
                          },
               'CreateVersion' => {
                                    'type' => 'Bool'
                                  },
               'ParentIntentSignature' => {
                                            'type' => 'Str'
                                          },
               'SampleUtterances' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ConfirmationPrompt' => {
                                         'type' => 'LexModels_Prompt',
                                         'class' => 'Paws::LexModels::Prompt'
                                       },
               'Checksum' => {
                               'type' => 'Str'
                             },
               'DialogCodeHook' => {
                                     'class' => 'Paws::LexModels::CodeHook',
                                     'type' => 'LexModels_CodeHook'
                                   },
               'Name' => {
                           'type' => 'Str'
                         },
               'FulfillmentActivity' => {
                                          'type' => 'LexModels_FulfillmentActivity',
                                          'class' => 'Paws::LexModels::FulfillmentActivity'
                                        },
               'RejectionStatement' => {
                                         'type' => 'LexModels_Statement',
                                         'class' => 'Paws::LexModels::Statement'
                                       },
               'ConclusionStatement' => {
                                          'class' => 'Paws::LexModels::Statement',
                                          'type' => 'LexModels_Statement'
                                        }
             },
  'NameInRequest' => {
                       'FulfillmentActivity' => 'fulfillmentActivity',
                       'DialogCodeHook' => 'dialogCodeHook',
                       'ConclusionStatement' => 'conclusionStatement',
                       'RejectionStatement' => 'rejectionStatement',
                       'Slots' => 'slots',
                       'FollowUpPrompt' => 'followUpPrompt',
                       'ConfirmationPrompt' => 'confirmationPrompt',
                       'Checksum' => 'checksum',
                       'CreateVersion' => 'createVersion',
                       'ParentIntentSignature' => 'parentIntentSignature',
                       'SampleUtterances' => 'sampleUtterances',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'Name' => 1
                  },
  'ParamInURI' => {
                    'Name' => 'name'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutIntent - Arguments for method PutIntent on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntent on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method PutIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntent.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $PutIntentResponse = $models . lex->PutIntent(
      Name                => 'MyIntentName',
      Checksum            => 'MyString',       # OPTIONAL
      ConclusionStatement => {
        Messages => [
          {
            Content => 'MyContentString',      # min: 1, max: 1000
            ContentType => 'PlainText', # values: PlainText, SSML, CustomPayload
            GroupNumber => 1,           # min: 1, max: 5; OPTIONAL
          },
          ...
        ],                              # min: 1, max: 15
        ResponseCard => 'MyResponseCard',    # min: 1, max: 50000; OPTIONAL
      },    # OPTIONAL
      ConfirmationPrompt => {
        MaxAttempts => 1,    # min: 1, max: 5
        Messages    => [
          {
            Content => 'MyContentString',    # min: 1, max: 1000
            ContentType => 'PlainText', # values: PlainText, SSML, CustomPayload
            GroupNumber => 1,           # min: 1, max: 5; OPTIONAL
          },
          ...
        ],                              # min: 1, max: 15
        ResponseCard => 'MyResponseCard',    # min: 1, max: 50000; OPTIONAL
      },    # OPTIONAL
      CreateVersion  => 1,                  # OPTIONAL
      Description    => 'MyDescription',    # OPTIONAL
      DialogCodeHook => {
        MessageVersion => 'MyMessageVersion',    # min: 1, max: 5
        Uri            => 'MyLambdaARN',         # min: 20, max: 2048

      },    # OPTIONAL
      FollowUpPrompt => {
        Prompt => {
          MaxAttempts => 1,    # min: 1, max: 5
          Messages    => [
            {
              Content => 'MyContentString',    # min: 1, max: 1000
              ContentType =>
                'PlainText',    # values: PlainText, SSML, CustomPayload
              GroupNumber => 1, # min: 1, max: 5; OPTIONAL
            },
            ...
          ],                    # min: 1, max: 15
          ResponseCard => 'MyResponseCard',    # min: 1, max: 50000; OPTIONAL
        },
        RejectionStatement => {
          Messages => [
            {
              Content => 'MyContentString',    # min: 1, max: 1000
              ContentType =>
                'PlainText',    # values: PlainText, SSML, CustomPayload
              GroupNumber => 1, # min: 1, max: 5; OPTIONAL
            },
            ...
          ],                    # min: 1, max: 15
          ResponseCard => 'MyResponseCard',    # min: 1, max: 50000; OPTIONAL
        },

      },    # OPTIONAL
      FulfillmentActivity => {
        Type     => 'ReturnIntent',    # values: ReturnIntent, CodeHook
        CodeHook => {
          MessageVersion => 'MyMessageVersion',    # min: 1, max: 5
          Uri            => 'MyLambdaARN',         # min: 20, max: 2048

        },
      },    # OPTIONAL
      ParentIntentSignature => 'MyBuiltinIntentSignature',    # OPTIONAL
      RejectionStatement    => {
        Messages => [
          {
            Content => 'MyContentString',    # min: 1, max: 1000
            ContentType => 'PlainText', # values: PlainText, SSML, CustomPayload
            GroupNumber => 1,           # min: 1, max: 5; OPTIONAL
          },
          ...
        ],                              # min: 1, max: 15
        ResponseCard => 'MyResponseCard',    # min: 1, max: 50000; OPTIONAL
      },    # OPTIONAL
      SampleUtterances => [
        'MyUtterance', ...    # min: 1, max: 200
      ],                      # OPTIONAL
      Slots => [
        {
          Name             => 'MySlotName',       # min: 1, max: 100
          SlotConstraint   => 'Required',         # values: Required, Optional
          Description      => 'MyDescription',    # max: 200
          Priority         => 1,                  # max: 100; OPTIONAL
          ResponseCard     => 'MyResponseCard',   # min: 1, max: 50000; OPTIONAL
          SampleUtterances => [
            'MyUtterance', ...                    # min: 1, max: 200
          ],                                      # max: 10; OPTIONAL
          SlotType =>
            'MyCustomOrBuiltinSlotTypeName',      # min: 1, max: 100; OPTIONAL
          SlotTypeVersion        => 'MyVersion',  # min: 1, max: 64; OPTIONAL
          ValueElicitationPrompt => {
            MaxAttempts => 1,                     # min: 1, max: 5
            Messages    => [
              {
                Content => 'MyContentString',     # min: 1, max: 1000
                ContentType =>
                  'PlainText',    # values: PlainText, SSML, CustomPayload
                GroupNumber => 1, # min: 1, max: 5; OPTIONAL
              },
              ...
            ],                    # min: 1, max: 15
            ResponseCard => 'MyResponseCard',    # min: 1, max: 50000; OPTIONAL
          },
        },
        ...
      ],                                         # OPTIONAL
    );

    # Results:
    my $Checksum              = $PutIntentResponse->Checksum;
    my $ConclusionStatement   = $PutIntentResponse->ConclusionStatement;
    my $ConfirmationPrompt    = $PutIntentResponse->ConfirmationPrompt;
    my $CreateVersion         = $PutIntentResponse->CreateVersion;
    my $CreatedDate           = $PutIntentResponse->CreatedDate;
    my $Description           = $PutIntentResponse->Description;
    my $DialogCodeHook        = $PutIntentResponse->DialogCodeHook;
    my $FollowUpPrompt        = $PutIntentResponse->FollowUpPrompt;
    my $FulfillmentActivity   = $PutIntentResponse->FulfillmentActivity;
    my $LastUpdatedDate       = $PutIntentResponse->LastUpdatedDate;
    my $Name                  = $PutIntentResponse->Name;
    my $ParentIntentSignature = $PutIntentResponse->ParentIntentSignature;
    my $RejectionStatement    = $PutIntentResponse->RejectionStatement;
    my $SampleUtterances      = $PutIntentResponse->SampleUtterances;
    my $Slots                 = $PutIntentResponse->Slots;
    my $Version               = $PutIntentResponse->Version;

    # Returns a L<Paws::LexModels::PutIntentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/PutIntent>

=head1 ATTRIBUTES


=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version.

When you create a new intent, leave the C<checksum> field blank. If you
specify a checksum you get a C<BadRequestException> exception.

When you want to update a intent, set the C<checksum> field to the
checksum of the most recent revision of the C<$LATEST> version. If you
don't specify the C< checksum> field, or if the checksum does not match
the C<$LATEST> version, you get a C<PreconditionFailedException>
exception.



=head2 ConclusionStatement => LexModels_Statement

The statement that you want Amazon Lex to convey to the user after the
intent is successfully fulfilled by the Lambda function.

This element is relevant only if you provide a Lambda function in the
C<fulfillmentActivity>. If you return the intent to the client
application, you can't specify this element.

The C<followUpPrompt> and C<conclusionStatement> are mutually
exclusive. You can specify only one.



=head2 ConfirmationPrompt => LexModels_Prompt

Prompts the user to confirm the intent. This question should have a yes
or no answer.

Amazon Lex uses this prompt to ensure that the user acknowledges that
the intent is ready for fulfillment. For example, with the
C<OrderPizza> intent, you might want to confirm that the order is
correct before placing it. For other intents, such as intents that
simply respond to user questions, you might not need to ask the user
for confirmation before providing the information.

You you must provide both the C<rejectionStatement> and the
C<confirmationPrompt>, or neither.



=head2 CreateVersion => Bool





=head2 Description => Str

A description of the intent.



=head2 DialogCodeHook => LexModels_CodeHook

Specifies a Lambda function to invoke for each user input. You can
invoke this Lambda function to personalize user interaction.

For example, suppose your bot determines that the user is John. Your
Lambda function might retrieve John's information from a backend
database and prepopulate some of the values. For example, if you find
that John is gluten intolerant, you might set the corresponding intent
slot, C<GlutenIntolerant>, to true. You might find John's phone number
and set the corresponding session attribute.



=head2 FollowUpPrompt => LexModels_FollowUpPrompt

Amazon Lex uses this prompt to solicit additional activity after
fulfilling an intent. For example, after the C<OrderPizza> intent is
fulfilled, you might prompt the user to order a drink.

The action that Amazon Lex takes depends on the user's response, as
follows:

=over

=item *

If the user says "Yes" it responds with the clarification prompt that
is configured for the bot.

=item *

if the user says "Yes" and continues with an utterance that triggers an
intent it starts a conversation for the intent.

=item *

If the user says "No" it responds with the rejection statement
configured for the the follow-up prompt.

=item *

If it doesn't recognize the utterance it repeats the follow-up prompt
again.

=back

The C<followUpPrompt> field and the C<conclusionStatement> field are
mutually exclusive. You can specify only one.



=head2 FulfillmentActivity => LexModels_FulfillmentActivity

Required. Describes how the intent is fulfilled. For example, after a
user provides all of the information for a pizza order,
C<fulfillmentActivity> defines how the bot places an order with a local
pizza store.

You might configure Amazon Lex to return all of the intent information
to the client application, or direct it to invoke a Lambda function
that can process the intent (for example, place an order with a
pizzeria).



=head2 B<REQUIRED> Name => Str

The name of the intent. The name is I<not> case sensitive.

The name can't match a built-in intent name, or a built-in intent name
with "AMAZON." removed. For example, because there is a built-in intent
called C<AMAZON.HelpIntent>, you can't create a custom intent called
C<HelpIntent>.

For a list of built-in intents, see Standard Built-in Intents
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
in the I<Alexa Skills Kit>.



=head2 ParentIntentSignature => Str

A unique identifier for the built-in intent to base this intent on. To
find the signature for an intent, see Standard Built-in Intents
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
in the I<Alexa Skills Kit>.



=head2 RejectionStatement => LexModels_Statement

When the user answers "no" to the question defined in
C<confirmationPrompt>, Amazon Lex responds with this statement to
acknowledge that the intent was canceled.

You must provide both the C<rejectionStatement> and the
C<confirmationPrompt>, or neither.



=head2 SampleUtterances => ArrayRef[Str|Undef]

An array of utterances (strings) that a user might say to signal the
intent. For example, "I want {PizzaSize} pizza", "Order {Quantity}
{PizzaSize} pizzas".

In each utterance, a slot name is enclosed in curly braces.



=head2 Slots => ArrayRef[LexModels_Slot]

An array of intent slots. At runtime, Amazon Lex elicits required slot
values from the user using prompts defined in the slots. For more
information, see how-it-works.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntent in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

