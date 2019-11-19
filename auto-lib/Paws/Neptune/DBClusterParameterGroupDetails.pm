# Generated from callresult_class.tt

package Paws::Neptune::DBClusterParameterGroupDetails;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_Parameter/;
  has Marker => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[Neptune_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Parameters' => {
                                 'type' => 'ArrayRef[Neptune_Parameter]',
                                 'class' => 'Paws::Neptune::Parameter'
                               },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Parameters' => 'Parameter'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBClusterParameterGroupDetails

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous
DescribeDBClusterParameters request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords> .


=head2 Parameters => ArrayRef[Neptune_Parameter]

Provides a list of parameters for the DB cluster parameter group.


=head2 _request_id => Str


=cut

