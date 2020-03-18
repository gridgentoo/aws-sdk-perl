package Paws::ImageBuilder::LaunchPermissionConfiguration;
  use Moose;
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'userGroups', traits => ['NameInRequest']);
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'userIds', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::LaunchPermissionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::LaunchPermissionConfiguration object:

  $service_obj->Method(Att1 => { UserGroups => $value, ..., UserIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::LaunchPermissionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->UserGroups

=head1 DESCRIPTION

Describes the configuration for a launch permission. The launch
permission modification request is sent to the EC2 ModifyImageAttribute
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html)
API on behalf of the user for each Region they have selected to
distribute the AMI.

=head1 ATTRIBUTES


=head2 UserGroups => ArrayRef[Str|Undef]

  The name of the group.


=head2 UserIds => ArrayRef[Str|Undef]

  The AWS account ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

