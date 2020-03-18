package Paws::SageMaker::UserContext;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str');
  has UserProfileArn => (is => 'ro', isa => 'Str');
  has UserProfileName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UserContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::UserContext object:

  $service_obj->Method(Att1 => { DomainId => $value, ..., UserProfileName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::UserContext object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainId

=head1 DESCRIPTION

Information about the user who created or modified an experiment,
trial, or trial component.

=head1 ATTRIBUTES


=head2 DomainId => Str

  The domain associated with the user.


=head2 UserProfileArn => Str

  The Amazon Resource Name (ARN) of the user's profile.


=head2 UserProfileName => Str

  The name of the user's profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

