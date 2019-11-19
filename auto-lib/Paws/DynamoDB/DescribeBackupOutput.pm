# Generated from json/callresult_class.tt

package Paws::DynamoDB::DescribeBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_BackupDescription/;
  has BackupDescription => (is => 'ro', isa => DynamoDB_BackupDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BackupDescription' => {
                                        'class' => 'Paws::DynamoDB::BackupDescription',
                                        'type' => 'DynamoDB_BackupDescription'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeBackupOutput

=head1 ATTRIBUTES


=head2 BackupDescription => DynamoDB_BackupDescription

Contains the description of the backup created for the table.


=head2 _request_id => Str


=cut

1;