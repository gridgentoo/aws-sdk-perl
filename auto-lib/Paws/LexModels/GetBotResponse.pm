
package Paws::LexModels::GetBotResponse;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_Statement LexModels_Intent LexModels_Prompt/;
  has AbortStatement => (is => 'ro', isa => LexModels_Statement);
  has Checksum => (is => 'ro', isa => Str);
  has ChildDirected => (is => 'ro', isa => Bool);
  has ClarificationPrompt => (is => 'ro', isa => LexModels_Prompt);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has IdleSessionTTLInSeconds => (is => 'ro', isa => Int);
  has Intents => (is => 'ro', isa => ArrayRef[LexModels_Intent]);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Locale => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);
  has VoiceId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'IdleSessionTTLInSeconds' => {
                                              'type' => 'Int'
                                            },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChildDirected' => {
                                    'type' => 'Bool'
                                  },
               'Locale' => {
                             'type' => 'Str'
                           },
               'AbortStatement' => {
                                     'class' => 'Paws::LexModels::Statement',
                                     'type' => 'LexModels_Statement'
                                   },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Checksum' => {
                               'type' => 'Str'
                             },
               'Version' => {
                              'type' => 'Str'
                            },
               'ClarificationPrompt' => {
                                          'class' => 'Paws::LexModels::Prompt',
                                          'type' => 'LexModels_Prompt'
                                        },
               'Intents' => {
                              'class' => 'Paws::LexModels::Intent',
                              'type' => 'ArrayRef[LexModels_Intent]'
                            },
               'VoiceId' => {
                              'type' => 'Str'
                            },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'IdleSessionTTLInSeconds' => 'idleSessionTTLInSeconds',
                       'FailureReason' => 'failureReason',
                       'CreatedDate' => 'createdDate',
                       'Locale' => 'locale',
                       'Name' => 'name',
                       'AbortStatement' => 'abortStatement',
                       'Status' => 'status',
                       'ChildDirected' => 'childDirected',
                       'Checksum' => 'checksum',
                       'ClarificationPrompt' => 'clarificationPrompt',
                       'Version' => 'version',
                       'Description' => 'description',
                       'VoiceId' => 'voiceId',
                       'Intents' => 'intents',
                       'LastUpdatedDate' => 'lastUpdatedDate'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotResponse

=head1 ATTRIBUTES


=head2 AbortStatement => LexModels_Statement

The message that Amazon Lex returns when the user elects to end the
conversation without completing it. For more information, see PutBot.


=head2 Checksum => Str

Checksum of the bot used to identify a specific revision of the bot's
C<$LATEST> version.


=head2 ChildDirected => Bool

For each Amazon Lex bot created with the Amazon Lex Model Building
Service, you must specify whether your use of Amazon Lex is related to
a website, program, or other application that is directed or targeted,
in whole or in part, to children under age 13 and subject to the
Children's Online Privacy Protection Act (COPPA) by specifying C<true>
or C<false> in the C<childDirected> field. By specifying C<true> in the
C<childDirected> field, you confirm that your use of Amazon Lex B<is>
related to a website, program, or other application that is directed or
targeted, in whole or in part, to children under age 13 and subject to
COPPA. By specifying C<false> in the C<childDirected> field, you
confirm that your use of Amazon Lex B<is not> related to a website,
program, or other application that is directed or targeted, in whole or
in part, to children under age 13 and subject to COPPA. You may not
specify a default value for the C<childDirected> field that does not
accurately reflect whether your use of Amazon Lex is related to a
website, program, or other application that is directed or targeted, in
whole or in part, to children under age 13 and subject to COPPA.

If your use of Amazon Lex relates to a website, program, or other
application that is directed in whole or in part, to children under age
13, you must obtain any required verifiable parental consent under
COPPA. For information regarding the use of Amazon Lex in connection
with websites, programs, or other applications that are directed or
targeted, in whole or in part, to children under age 13, see the Amazon
Lex FAQ. (https://aws.amazon.com/lex/faqs#data-security)


=head2 ClarificationPrompt => LexModels_Prompt

The message Amazon Lex uses when it doesn't understand the user's
request. For more information, see PutBot.


=head2 CreatedDate => Str

The date that the bot was created.


=head2 Description => Str

A description of the bot.


=head2 FailureReason => Str

If C<status> is C<FAILED>, Amazon Lex explains why it failed to build
the bot.


=head2 IdleSessionTTLInSeconds => Int

The maximum time in seconds that Amazon Lex retains the data gathered
in a conversation. For more information, see PutBot.


=head2 Intents => ArrayRef[LexModels_Intent]

An array of C<intent> objects. For more information, see PutBot.


=head2 LastUpdatedDate => Str

The date that the bot was updated. When you create a resource, the
creation date and last updated date are the same.


=head2 Locale => Str

The target locale for the bot.

Valid values are: C<"en-US">, C<"en-GB">, C<"de-DE">
=head2 Name => Str

The name of the bot.


=head2 Status => Str

The status of the bot. If the bot is ready to run, the status is
C<READY>. If there was a problem with building the bot, the status is
C<FAILED> and the C<failureReason> explains why the bot did not build.
If the bot was saved but not built, the status is C<NOT BUILT>.

Valid values are: C<"BUILDING">, C<"READY">, C<"READY_BASIC_TESTING">, C<"FAILED">, C<"NOT_BUILT">
=head2 Version => Str

The version of the bot. For a new bot, the version is always
C<$LATEST>.


=head2 VoiceId => Str

The Amazon Polly voice ID that Amazon Lex uses for voice interaction
with the user. For more information, see PutBot.


=head2 _request_id => Str


=cut

