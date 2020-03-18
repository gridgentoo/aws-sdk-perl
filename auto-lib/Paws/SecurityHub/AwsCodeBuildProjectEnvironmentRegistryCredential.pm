package Paws::SecurityHub::AwsCodeBuildProjectEnvironmentRegistryCredential;
  use Moose;
  has Credential => (is => 'ro', isa => 'Str');
  has CredentialProvider => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCodeBuildProjectEnvironmentRegistryCredential

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCodeBuildProjectEnvironmentRegistryCredential object:

  $service_obj->Method(Att1 => { Credential => $value, ..., CredentialProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCodeBuildProjectEnvironmentRegistryCredential object:

  $result = $service_obj->Method(...);
  $result->Att1->Credential

=head1 DESCRIPTION

The credentials for access to a private registry.

=head1 ATTRIBUTES


=head2 Credential => Str

  The Amazon Resource Name (ARN) or name of credentials created using AWS
Secrets Manager.

The credential can use the name of the credentials only if they exist
in your current AWS Region.


=head2 CredentialProvider => Str

  The service that created the credentials to access a private Docker
registry.

The valid value,C< SECRETS_MANAGER>, is for AWS Secrets Manager.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

