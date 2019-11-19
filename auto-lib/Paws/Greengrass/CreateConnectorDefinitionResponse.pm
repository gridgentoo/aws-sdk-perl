
package Paws::Greengrass::CreateConnectorDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LastUpdatedTimestamp => (is => 'ro', isa => Str);
  has LatestVersion => (is => 'ro', isa => Str);
  has LatestVersionArn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'LatestVersion' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'LastUpdatedTimestamp' => {
                                           'type' => 'Str'
                                         },
               'LatestVersionArn' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateConnectorDefinitionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the definition.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the definition was
created.


=head2 Id => Str

The ID of the definition.


=head2 LastUpdatedTimestamp => Str

The time, in milliseconds since the epoch, when the definition was last
updated.


=head2 LatestVersion => Str

The ID of the latest version associated with the definition.


=head2 LatestVersionArn => Str

The ARN of the latest version associated with the definition.


=head2 Name => Str

The name of the definition.


=head2 _request_id => Str


=cut

