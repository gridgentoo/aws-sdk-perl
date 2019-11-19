
package Paws::LexModels::GetIntentResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::LexModels::Types qw/LexModels_FollowUpPrompt LexModels_Statement LexModels_FulfillmentActivity LexModels_Slot LexModels_CodeHook LexModels_Prompt/;
  has Checksum => (is => 'ro', isa => Str);
  has ConclusionStatement => (is => 'ro', isa => LexModels_Statement);
  has ConfirmationPrompt => (is => 'ro', isa => LexModels_Prompt);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DialogCodeHook => (is => 'ro', isa => LexModels_CodeHook);
  has FollowUpPrompt => (is => 'ro', isa => LexModels_FollowUpPrompt);
  has FulfillmentActivity => (is => 'ro', isa => LexModels_FulfillmentActivity);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ParentIntentSignature => (is => 'ro', isa => Str);
  has RejectionStatement => (is => 'ro', isa => LexModels_Statement);
  has SampleUtterances => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Slots => (is => 'ro', isa => ArrayRef[LexModels_Slot]);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Slots' => {
                            'class' => 'Paws::LexModels::Slot',
                            'type' => 'ArrayRef[LexModels_Slot]'
                          },
               'FollowUpPrompt' => {
                                     'class' => 'Paws::LexModels::FollowUpPrompt',
                                     'type' => 'LexModels_FollowUpPrompt'
                                   },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'Checksum' => {
                               'type' => 'Str'
                             },
               'Version' => {
                              'type' => 'Str'
                            },
               'ConfirmationPrompt' => {
                                         'class' => 'Paws::LexModels::Prompt',
                                         'type' => 'LexModels_Prompt'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                },
               'SampleUtterances' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'ParentIntentSignature' => {
                                            'type' => 'Str'
                                          },
               'FulfillmentActivity' => {
                                          'class' => 'Paws::LexModels::FulfillmentActivity',
                                          'type' => 'LexModels_FulfillmentActivity'
                                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'DialogCodeHook' => {
                                     'type' => 'LexModels_CodeHook',
                                     'class' => 'Paws::LexModels::CodeHook'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConclusionStatement' => {
                                          'type' => 'LexModels_Statement',
                                          'class' => 'Paws::LexModels::Statement'
                                        },
               'RejectionStatement' => {
                                         'class' => 'Paws::LexModels::Statement',
                                         'type' => 'LexModels_Statement'
                                       },
               'CreatedDate' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'FulfillmentActivity' => 'fulfillmentActivity',
                       'Name' => 'name',
                       'DialogCodeHook' => 'dialogCodeHook',
                       'ConclusionStatement' => 'conclusionStatement',
                       'RejectionStatement' => 'rejectionStatement',
                       'CreatedDate' => 'createdDate',
                       'Slots' => 'slots',
                       'FollowUpPrompt' => 'followUpPrompt',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'Checksum' => 'checksum',
                       'ConfirmationPrompt' => 'confirmationPrompt',
                       'Version' => 'version',
                       'Description' => 'description',
                       'ParentIntentSignature' => 'parentIntentSignature',
                       'SampleUtterances' => 'sampleUtterances'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetIntentResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the intent.


=head2 ConclusionStatement => LexModels_Statement

After the Lambda function specified in the C<fulfillmentActivity>
element fulfills the intent, Amazon Lex conveys this statement to the
user.


=head2 ConfirmationPrompt => LexModels_Prompt

If defined in the bot, Amazon Lex uses prompt to confirm the intent
before fulfilling the user's request. For more information, see
PutIntent.


=head2 CreatedDate => Str

The date that the intent was created.


=head2 Description => Str

A description of the intent.


=head2 DialogCodeHook => LexModels_CodeHook

If defined in the bot, Amazon Amazon Lex invokes this Lambda function
for each user input. For more information, see PutIntent.


=head2 FollowUpPrompt => LexModels_FollowUpPrompt

If defined in the bot, Amazon Lex uses this prompt to solicit
additional user activity after the intent is fulfilled. For more
information, see PutIntent.


=head2 FulfillmentActivity => LexModels_FulfillmentActivity

Describes how the intent is fulfilled. For more information, see
PutIntent.


=head2 LastUpdatedDate => Str

The date that the intent was updated. When you create a resource, the
creation date and the last updated date are the same.


=head2 Name => Str

The name of the intent.


=head2 ParentIntentSignature => Str

A unique identifier for a built-in intent.


=head2 RejectionStatement => LexModels_Statement

If the user answers "no" to the question defined in
C<confirmationPrompt>, Amazon Lex responds with this statement to
acknowledge that the intent was canceled.


=head2 SampleUtterances => ArrayRef[Str|Undef]

An array of sample utterances configured for the intent.


=head2 Slots => ArrayRef[LexModels_Slot]

An array of intent slots configured for the intent.


=head2 Version => Str

The version of the intent.


=head2 _request_id => Str


=cut

