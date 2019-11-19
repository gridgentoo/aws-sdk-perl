# Generated from callresult_class.tt

package Paws::ELBv2::ModifyListenerOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_Listener/;
  has Listeners => (is => 'ro', isa => ArrayRef[ELBv2_Listener]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Listeners' => {
                                'class' => 'Paws::ELBv2::Listener',
                                'type' => 'ArrayRef[ELBv2_Listener]'
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

Paws::ELBv2::ModifyListenerOutput

=head1 ATTRIBUTES


=head2 Listeners => ArrayRef[ELBv2_Listener]

Information about the modified listener.


=head2 _request_id => Str


=cut

