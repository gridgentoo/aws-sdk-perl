package Paws::ManagedBlockchain::MemberSummary;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IsOwned => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::MemberSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::MemberSummary object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::MemberSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

A summary of configuration properties for a member.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date and time that the member was created.


=head2 Description => Str

  An optional description of the member.


=head2 Id => Str

  The unique identifier of the member.


=head2 IsOwned => Bool

  An indicator of whether the member is owned by your AWS account or a
different AWS account.


=head2 Name => Str

  The name of the member.


=head2 Status => Str

  The status of the member.

=over

=item *

C<CREATING> - The AWS account is in the process of creating a member.

=item *

C<AVAILABLE> - The member has been created and can participate in the
network.

=item *

C<CREATE_FAILED> - The AWS account attempted to create a member and
creation failed.

=item *

C<DELETING> - The member and all associated resources are in the
process of being deleted. Either the AWS account that owns the member
deleted it, or the member is being deleted as the result of an
C<APPROVED> C<PROPOSAL> to remove the member.

=item *

C<DELETED> - The member can no longer participate on the network and
all associated resources are deleted. Either the AWS account that owns
the member deleted it, or the member is being deleted as the result of
an C<APPROVED> C<PROPOSAL> to remove the member.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

