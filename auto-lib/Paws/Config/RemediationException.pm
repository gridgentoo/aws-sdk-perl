package Paws::Config::RemediationException;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RemediationException

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RemediationException object:

  $service_obj->Method(Att1 => { ConfigRuleName => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RemediationException object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigRuleName

=head1 DESCRIPTION

An object that represents the details about the remediation exception.
The details include the rule name, an explanation of an exception, the
time when the exception will be deleted, the resource ID, and resource
type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

  The name of the AWS Config rule.


=head2 ExpirationTime => Str

  The time when the remediation exception will be deleted.


=head2 Message => Str

  An explanation of an remediation exception.


=head2 B<REQUIRED> ResourceId => Str

  The ID of the resource (for example., sg-xxxxxx).


=head2 B<REQUIRED> ResourceType => Str

  The type of a resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

