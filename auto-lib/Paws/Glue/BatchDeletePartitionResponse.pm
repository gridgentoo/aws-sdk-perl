# Generated from json/callresult_class.tt

package Paws::Glue::BatchDeletePartitionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_PartitionError/;
  has Errors => (is => 'ro', isa => ArrayRef[Glue_PartitionError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Errors' => {
                             'type' => 'ArrayRef[Glue_PartitionError]',
                             'class' => 'Paws::Glue::PartitionError'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeletePartitionResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[Glue_PartitionError]

The errors encountered when trying to delete the requested partitions.


=head2 _request_id => Str


=cut

1;