package Paws::Lightsail::AddOnRequest;
  use Moose;
  has AddOnType => (is => 'ro', isa => 'Str', request_name => 'addOnType', traits => ['NameInRequest'], required => 1);
  has AutoSnapshotAddOnRequest => (is => 'ro', isa => 'Paws::Lightsail::AutoSnapshotAddOnRequest', request_name => 'autoSnapshotAddOnRequest', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AddOnRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::AddOnRequest object:

  $service_obj->Method(Att1 => { AddOnType => $value, ..., AutoSnapshotAddOnRequest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::AddOnRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AddOnType

=head1 DESCRIPTION

Describes a request to enable, modify, or disable an add-on for an
Amazon Lightsail resource.

An additional cost may be associated with enabling add-ons. For more
information, see the Lightsail pricing page
(https://aws.amazon.com/lightsail/pricing/).

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddOnType => Str

  The add-on type.


=head2 AutoSnapshotAddOnRequest => L<Paws::Lightsail::AutoSnapshotAddOnRequest>

  An object that represents additional parameters when enabling or
modifying the automatic snapshot add-on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

