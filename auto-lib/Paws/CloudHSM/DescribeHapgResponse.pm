# Generated from json/callresult_class.tt

package Paws::CloudHSM::DescribeHapgResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudHSM::Types qw//;
  has HapgArn => (is => 'ro', isa => Str);
  has HapgSerial => (is => 'ro', isa => Str);
  has HsmsLastActionFailed => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has HsmsPendingDeletion => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has HsmsPendingRegistration => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Label => (is => 'ro', isa => Str);
  has LastModifiedTimestamp => (is => 'ro', isa => Str);
  has PartitionSerialList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has State => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastModifiedTimestamp' => {
                                            'type' => 'Str'
                                          },
               'Label' => {
                            'type' => 'Str'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HsmsLastActionFailed' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'HapgArn' => {
                              'type' => 'Str'
                            },
               'HapgSerial' => {
                                 'type' => 'Str'
                               },
               'PartitionSerialList' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'HsmsPendingDeletion' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'HsmsPendingRegistration' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               'State' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DescribeHapgResponse

=head1 ATTRIBUTES


=head2 HapgArn => Str

The ARN of the high-availability partition group.


=head2 HapgSerial => Str

The serial number of the high-availability partition group.


=head2 HsmsLastActionFailed => ArrayRef[Str|Undef]




=head2 HsmsPendingDeletion => ArrayRef[Str|Undef]




=head2 HsmsPendingRegistration => ArrayRef[Str|Undef]




=head2 Label => Str

The label for the high-availability partition group.


=head2 LastModifiedTimestamp => Str

The date and time the high-availability partition group was last
modified.


=head2 PartitionSerialList => ArrayRef[Str|Undef]

The list of partition serial numbers that belong to the
high-availability partition group.


=head2 State => Str

The state of the high-availability partition group.

Valid values are: C<"READY">, C<"UPDATING">, C<"DEGRADED">
=head2 _request_id => Str


=cut

1;