# Generated from json/callargs_class.tt

package Paws::WAF::DeleteRuleGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw//;
  has ChangeToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RuleGroupId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteRuleGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAF::DeleteRuleGroupResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'RuleGroupId' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ChangeToken' => 1,
                    'RuleGroupId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::DeleteRuleGroup - Arguments for method DeleteRuleGroup on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRuleGroup on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method DeleteRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRuleGroup.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $DeleteRuleGroupResponse = $waf->DeleteRuleGroup(
      ChangeToken => 'MyChangeToken',
      RuleGroupId => 'MyResourceId',

    );

    # Results:
    my $ChangeToken = $DeleteRuleGroupResponse->ChangeToken;

    # Returns a L<Paws::WAF::DeleteRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/DeleteRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RuleGroupId => Str

The C<RuleGroupId> of the RuleGroup that you want to delete.
C<RuleGroupId> is returned by CreateRuleGroup and by ListRuleGroups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRuleGroup in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

