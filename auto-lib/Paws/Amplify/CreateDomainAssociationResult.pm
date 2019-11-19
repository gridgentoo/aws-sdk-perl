
package Paws::Amplify::CreateDomainAssociationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_DomainAssociation/;
  has DomainAssociation => (is => 'ro', isa => Amplify_DomainAssociation, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DomainAssociation' => 'domainAssociation'
                     },
  'IsRequired' => {
                    'DomainAssociation' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainAssociation' => {
                                        'type' => 'Amplify_DomainAssociation',
                                        'class' => 'Paws::Amplify::DomainAssociation'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateDomainAssociationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainAssociation => Amplify_DomainAssociation

Domain Association structure.


=head2 _request_id => Str


=cut

