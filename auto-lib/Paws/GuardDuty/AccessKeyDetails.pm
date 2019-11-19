# Generated from default/object.tt
package Paws::GuardDuty::AccessKeyDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has AccessKeyId => (is => 'ro', isa => Str);
  has PrincipalId => (is => 'ro', isa => Str);
  has UserName => (is => 'ro', isa => Str);
  has UserType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessKeyId' => {
                                  'type' => 'Str'
                                },
               'UserName' => {
                               'type' => 'Str'
                             },
               'UserType' => {
                               'type' => 'Str'
                             },
               'PrincipalId' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AccessKeyId' => 'accessKeyId',
                       'PrincipalId' => 'principalId',
                       'UserType' => 'userType',
                       'UserName' => 'userName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::AccessKeyDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::AccessKeyDetails object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., UserType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::AccessKeyDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

Contains information about the access keys.

=head1 ATTRIBUTES


=head2 AccessKeyId => Str

  Access key ID of the user.


=head2 PrincipalId => Str

  The principal ID of the user.


=head2 UserName => Str

  The name of the user.


=head2 UserType => Str

  The type of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

