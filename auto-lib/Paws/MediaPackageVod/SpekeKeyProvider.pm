package Paws::MediaPackageVod::SpekeKeyProvider;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has SystemIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'systemIds', traits => ['NameInRequest'], required => 1);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::SpekeKeyProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::SpekeKeyProvider object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::SpekeKeyProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

A configuration for accessing an external Secure Packager and Encoder
Key Exchange (SPEKE) service that will provide encryption keys.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

  An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
MediaPackage will assume when accessing the key provider service.


=head2 B<REQUIRED> SystemIds => ArrayRef[Str|Undef]

  The system IDs to include in key requests.


=head2 B<REQUIRED> Url => Str

  The URL of the external key provider service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

