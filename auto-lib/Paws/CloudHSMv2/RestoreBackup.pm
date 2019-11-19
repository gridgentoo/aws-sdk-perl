# Generated from json/callargs_class.tt

package Paws::CloudHSMv2::RestoreBackup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSMv2::Types qw//;
  has BackupId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreBackup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudHSMv2::RestoreBackupResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BackupId' => 1
                  },
  'types' => {
               'BackupId' => {
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

Paws::CloudHSMv2::RestoreBackup - Arguments for method RestoreBackup on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreBackup on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method RestoreBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreBackup.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $RestoreBackupResponse = $cloudhsmv2->RestoreBackup(
      BackupId => 'MyBackupId',

    );

    # Results:
    my $Backup = $RestoreBackupResponse->Backup;

    # Returns a L<Paws::CloudHSMv2::RestoreBackupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/RestoreBackup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

The ID of the backup to be restored. To find the ID of a backup, use
the DescribeBackups operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreBackup in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

