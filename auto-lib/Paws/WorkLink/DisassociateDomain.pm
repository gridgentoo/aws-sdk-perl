
package Paws::WorkLink::DisassociateDomain;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FleetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DisassociateDomain');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/disassociateDomain');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkLink::DisassociateDomainResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'FleetArn' => 1,
                    'DomainName' => 1
                  },
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'FleetArn' => {
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

Paws::WorkLink::DisassociateDomain - Arguments for method DisassociateDomain on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateDomain on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method DisassociateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateDomain.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $DisassociateDomainResponse = $worklink->DisassociateDomain(
      DomainName => 'MyDomainName',
      FleetArn   => 'MyFleetArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/DisassociateDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateDomain in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

