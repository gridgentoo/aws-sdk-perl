package Paws::SSO::AccountInfo;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has AccountName => (is => 'ro', isa => 'Str', request_name => 'accountName', traits => ['NameInRequest']);
  has EmailAddress => (is => 'ro', isa => 'Str', request_name => 'emailAddress', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::AccountInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSO::AccountInfo object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., EmailAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSO::AccountInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Provides information about your AWS account.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The identifier of the AWS account that is assigned to the user.


=head2 AccountName => Str

  The display name of the AWS account that is assigned to the user.


=head2 EmailAddress => Str

  The email address of the AWS account that is assigned to the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSO>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

