
package Paws::LexModels::PutSlotTypeResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_EnumerationValue/;
  has Checksum => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has CreateVersion => (is => 'ro', isa => Bool);
  has Description => (is => 'ro', isa => Str);
  has EnumerationValues => (is => 'ro', isa => ArrayRef[LexModels_EnumerationValue]);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ValueSelectionStrategy => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreateVersion' => {
                                    'type' => 'Bool'
                                  },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ValueSelectionStrategy' => {
                                             'type' => 'Str'
                                           },
               'Version' => {
                              'type' => 'Str'
                            },
               'EnumerationValues' => {
                                        'class' => 'Paws::LexModels::EnumerationValue',
                                        'type' => 'ArrayRef[LexModels_EnumerationValue]'
                                      },
               'Checksum' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'ValueSelectionStrategy' => 'valueSelectionStrategy',
                       'Description' => 'description',
                       'CreatedDate' => 'createdDate',
                       'CreateVersion' => 'createVersion',
                       'Checksum' => 'checksum',
                       'EnumerationValues' => 'enumerationValues',
                       'Version' => 'version',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutSlotTypeResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the C<$LATEST> version of the slot type.


=head2 CreatedDate => Str

The date that the slot type was created.


=head2 CreateVersion => Bool




=head2 Description => Str

A description of the slot type.


=head2 EnumerationValues => ArrayRef[LexModels_EnumerationValue]

A list of C<EnumerationValue> objects that defines the values that the
slot type can take.


=head2 LastUpdatedDate => Str

The date that the slot type was updated. When you create a slot type,
the creation date and last update date are the same.


=head2 Name => Str

The name of the slot type.


=head2 ValueSelectionStrategy => Str

The slot resolution strategy that Amazon Lex uses to determine the
value of the slot. For more information, see PutSlotType.

Valid values are: C<"ORIGINAL_VALUE">, C<"TOP_RESOLUTION">
=head2 Version => Str

The version of the slot type. For a new slot type, the version is
always C<$LATEST>.


=head2 _request_id => Str


=cut

