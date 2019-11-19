# Generated from json/callargs_class.tt

package Paws::WorkSpaces::AuthorizeIpRules;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_IpRuleItem/;
  has GroupId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserRules => (is => 'ro', isa => ArrayRef[WorkSpaces_IpRuleItem], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AuthorizeIpRules');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::AuthorizeIpRulesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'UserRules' => 1,
                    'GroupId' => 1
                  },
  'types' => {
               'GroupId' => {
                              'type' => 'Str'
                            },
               'UserRules' => {
                                'class' => 'Paws::WorkSpaces::IpRuleItem',
                                'type' => 'ArrayRef[WorkSpaces_IpRuleItem]'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::AuthorizeIpRules - Arguments for method AuthorizeIpRules on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeIpRules on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method AuthorizeIpRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeIpRules.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $AuthorizeIpRulesResult = $workspaces->AuthorizeIpRules(
      GroupId   => 'MyIpGroupId',
      UserRules => [
        {
          IpRule   => 'MyIpRule',        # OPTIONAL
          RuleDesc => 'MyIpRuleDesc',    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/AuthorizeIpRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The identifier of the group.



=head2 B<REQUIRED> UserRules => ArrayRef[WorkSpaces_IpRuleItem]

The rules to add to the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeIpRules in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

