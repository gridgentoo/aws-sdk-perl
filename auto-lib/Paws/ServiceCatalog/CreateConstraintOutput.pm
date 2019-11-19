# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::CreateConstraintOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ConstraintDetail/;
  has ConstraintDetail => (is => 'ro', isa => ServiceCatalog_ConstraintDetail);
  has ConstraintParameters => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConstraintDetail' => {
                                       'class' => 'Paws::ServiceCatalog::ConstraintDetail',
                                       'type' => 'ServiceCatalog_ConstraintDetail'
                                     },
               'ConstraintParameters' => {
                                           'type' => 'Str'
                                         },
               'Status' => {
                             'type' => 'Str'
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

Paws::ServiceCatalog::CreateConstraintOutput

=head1 ATTRIBUTES


=head2 ConstraintDetail => ServiceCatalog_ConstraintDetail

Information about the constraint.


=head2 ConstraintParameters => Str

The constraint parameters.


=head2 Status => Str

The status of the current request.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;