# Generated from json/callargs_class.tt

package Paws::Route53Resolver::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Route53Resolver_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Route53Resolver::TagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1,
                    'ResourceArn' => 1
                  },
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[Route53Resolver_Tag]',
                           'class' => 'Paws::Route53Resolver::Tag'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::TagResource - Arguments for method TagResource on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $TagResourceResponse = $route53resolver->TagResource(
      ResourceArn => 'MyArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) for the resource that you want to add
tags to. To get the ARN for a resource, use the applicable C<Get> or
C<List> command:

=over

=item *

GetResolverEndpoint

=item *

GetResolverRule

=item *

GetResolverRuleAssociation

=item *

ListResolverEndpoints

=item *

ListResolverRuleAssociations

=item *

ListResolverRules

=back




=head2 B<REQUIRED> Tags => ArrayRef[Route53Resolver_Tag]

The tags that you want to add to the specified resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

