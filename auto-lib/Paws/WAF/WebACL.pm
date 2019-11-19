# Generated from default/object.tt
package Paws::WAF::WebACL;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_ActivatedRule WAF_WafAction/;
  has DefaultAction => (is => 'ro', isa => WAF_WafAction, required => 1);
  has MetricName => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Rules => (is => 'ro', isa => ArrayRef[WAF_ActivatedRule], required => 1);
  has WebACLArn => (is => 'ro', isa => Str);
  has WebACLId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DefaultAction' => {
                                    'class' => 'Paws::WAF::WafAction',
                                    'type' => 'WAF_WafAction'
                                  },
               'WebACLId' => {
                               'type' => 'Str'
                             },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'WebACLArn' => {
                                'type' => 'Str'
                              },
               'Rules' => {
                            'type' => 'ArrayRef[WAF_ActivatedRule]',
                            'class' => 'Paws::WAF::ActivatedRule'
                          }
             },
  'IsRequired' => {
                    'DefaultAction' => 1,
                    'WebACLId' => 1,
                    'Rules' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::WebACL

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::WebACL object:

  $service_obj->Method(Att1 => { DefaultAction => $value, ..., WebACLId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::WebACL object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultAction

=head1 DESCRIPTION

Contains the C<Rules> that identify the requests that you want to
allow, block, or count. In a C<WebACL>, you also specify a default
action (C<ALLOW> or C<BLOCK>), and the action for each C<Rule> that you
add to a C<WebACL>, for example, block requests from specified IP
addresses or block requests from specified referrers. You also
associate the C<WebACL> with a CloudFront distribution to identify the
requests that you want AWS WAF to filter. If you add more than one
C<Rule> to a C<WebACL>, a request needs to match only one of the
specifications to be allowed, blocked, or counted. For more
information, see UpdateWebACL.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultAction => WAF_WafAction

  The action to perform if none of the C<Rules> contained in the
C<WebACL> match. The action is specified by the WafAction object.


=head2 MetricName => Str

  A friendly name or description for the metrics for this C<WebACL>. The
name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
maximum length 128 and minimum length one. It can't contain whitespace
or metric names reserved for AWS WAF, including "All" and
"Default_Action." You can't change C<MetricName> after you create the
C<WebACL>.


=head2 Name => Str

  A friendly name or description of the C<WebACL>. You can't change the
name of a C<WebACL> after you create it.


=head2 B<REQUIRED> Rules => ArrayRef[WAF_ActivatedRule]

  An array that contains the action for each C<Rule> in a C<WebACL>, the
priority of the C<Rule>, and the ID of the C<Rule>.


=head2 WebACLArn => Str

  Tha Amazon Resource Name (ARN) of the web ACL.


=head2 B<REQUIRED> WebACLId => Str

  A unique identifier for a C<WebACL>. You use C<WebACLId> to get
information about a C<WebACL> (see GetWebACL), update a C<WebACL> (see
UpdateWebACL), and delete a C<WebACL> from AWS WAF (see DeleteWebACL).

C<WebACLId> is returned by CreateWebACL and by ListWebACLs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

