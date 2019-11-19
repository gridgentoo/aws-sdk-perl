# Generated from json/callresult_class.tt

package Paws::DynamoDB::ListBackupsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_BackupSummary/;
  has BackupSummaries => (is => 'ro', isa => ArrayRef[DynamoDB_BackupSummary]);
  has LastEvaluatedBackupArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastEvaluatedBackupArn' => {
                                             'type' => 'Str'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BackupSummaries' => {
                                      'type' => 'ArrayRef[DynamoDB_BackupSummary]',
                                      'class' => 'Paws::DynamoDB::BackupSummary'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListBackupsOutput

=head1 ATTRIBUTES


=head2 BackupSummaries => ArrayRef[DynamoDB_BackupSummary]

List of C<BackupSummary> objects.


=head2 LastEvaluatedBackupArn => Str

The ARN of the backup last evaluated when the current page of results
was returned, inclusive of the current page of results. This value may
be specified as the C<ExclusiveStartBackupArn> of a new C<ListBackups>
operation in order to fetch the next page of results.

If C<LastEvaluatedBackupArn> is empty, then the last page of results
has been processed and there are no more results to be retrieved.

If C<LastEvaluatedBackupArn> is not empty, this may or may not indicate
that there is more data to be returned. All results are guaranteed to
have been returned if and only if no value for
C<LastEvaluatedBackupArn> is returned.


=head2 _request_id => Str


=cut

1;