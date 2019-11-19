
package Paws::Backup::UpdateBackupPlanOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw//;
  has BackupPlanArn => (is => 'ro', isa => Str);
  has BackupPlanId => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'BackupPlanId' => {
                                   'type' => 'Str'
                                 },
               'BackupPlanArn' => {
                                    'type' => 'Str'
                                  },
               'CreationDate' => {
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

Paws::Backup::UpdateBackupPlanOutput

=head1 ATTRIBUTES


=head2 BackupPlanArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a backup plan;
for example,
C<arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50>.


=head2 BackupPlanId => Str

Uniquely identifies a backup plan.


=head2 CreationDate => Str

The date and time a backup plan is updated, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 VersionId => Str

Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
most 1,024 bytes long. Version Ids cannot be edited.


=head2 _request_id => Str


=cut

