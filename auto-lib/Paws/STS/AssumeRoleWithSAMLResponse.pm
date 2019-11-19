# Generated from callresult_class.tt

package Paws::STS::AssumeRoleWithSAMLResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::STS::Types qw/STS_AssumedRoleUser STS_Credentials/;
  has AssumedRoleUser => (is => 'ro', isa => STS_AssumedRoleUser);
  has Audience => (is => 'ro', isa => Str);
  has Credentials => (is => 'ro', isa => STS_Credentials);
  has Issuer => (is => 'ro', isa => Str);
  has NameQualifier => (is => 'ro', isa => Str);
  has PackedPolicySize => (is => 'ro', isa => Int);
  has Subject => (is => 'ro', isa => Str);
  has SubjectType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubjectType' => {
                                  'type' => 'Str'
                                },
               'Audience' => {
                               'type' => 'Str'
                             },
               'Issuer' => {
                             'type' => 'Str'
                           },
               'Credentials' => {
                                  'type' => 'STS_Credentials',
                                  'class' => 'Paws::STS::Credentials'
                                },
               'Subject' => {
                              'type' => 'Str'
                            },
               'AssumedRoleUser' => {
                                      'type' => 'STS_AssumedRoleUser',
                                      'class' => 'Paws::STS::AssumedRoleUser'
                                    },
               'NameQualifier' => {
                                    'type' => 'Str'
                                  },
               'PackedPolicySize' => {
                                       'type' => 'Int'
                                     }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRoleWithSAMLResponse

=head1 ATTRIBUTES


=head2 AssumedRoleUser => STS_AssumedRoleUser

The identifiers for the temporary security credentials that the
operation returns.


=head2 Audience => Str

The value of the C<Recipient> attribute of the
C<SubjectConfirmationData> element of the SAML assertion.


=head2 Credentials => STS_Credentials

The temporary security credentials, which include an access key ID, a
secret access key, and a security (or session) token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 Issuer => Str

The value of the C<Issuer> element of the SAML assertion.


=head2 NameQualifier => Str

A hash value based on the concatenation of the C<Issuer> response
value, the AWS account ID, and the friendly name (the last part of the
ARN) of the SAML provider in IAM. The combination of C<NameQualifier>
and C<Subject> can be used to uniquely identify a federated user.

The following pseudocode shows how the hash value is calculated:

C<BASE64 ( SHA1 ( "https://example.com/saml" + "123456789012" +
"/MySAMLIdP" ) )>


=head2 PackedPolicySize => Int

A percentage value that indicates the size of the policy in packed
form. The service rejects any policy with a packed size greater than
100 percent, which means the policy exceeded the allowed space.


=head2 Subject => Str

The value of the C<NameID> element in the C<Subject> element of the
SAML assertion.


=head2 SubjectType => Str

The format of the name ID, as defined by the C<Format> attribute in the
C<NameID> element of the SAML assertion. Typical examples of the format
are C<transient> or C<persistent>.

If the format includes the prefix
C<urn:oasis:names:tc:SAML:2.0:nameid-format>, that prefix is removed.
For example, C<urn:oasis:names:tc:SAML:2.0:nameid-format:transient> is
returned as C<transient>. If the format includes any other prefix, the
format is returned with no modifications.


=head2 _request_id => Str


=cut

