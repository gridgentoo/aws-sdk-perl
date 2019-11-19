# Generated from json/callargs_class.tt

package Paws::Route53Domains::ListTagsForDomain;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Domains::Types qw//;
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForDomain');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Route53Domains::ListTagsForDomainResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListTagsForDomain - Arguments for method ListTagsForDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method ListTagsForDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $ListTagsForDomainResponse = $route53domains->ListTagsForDomain(
      DomainName => 'MyDomainName',

    );

    # Results:
    my $TagList = $ListTagsForDomainResponse->TagList;

    # Returns a L<Paws::Route53Domains::ListTagsForDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/ListTagsForDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain for which you want to get a list of tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

