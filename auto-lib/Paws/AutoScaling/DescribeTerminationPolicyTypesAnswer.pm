# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::AutoScaling::Types qw//;
  has TerminationPolicyTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TerminationPolicyTypes' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           },
               '_request_id' => {
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

Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer

=head1 ATTRIBUTES


=head2 TerminationPolicyTypes => ArrayRef[Str|Undef]

The termination policies supported by Amazon EC2 Auto Scaling:
C<OldestInstance>, C<OldestLaunchConfiguration>, C<NewestInstance>,
C<ClosestToNextInstanceHour>, C<Default>, C<OldestLaunchTemplate>, and
C<AllocationStrategy>.


=head2 _request_id => Str


=cut

