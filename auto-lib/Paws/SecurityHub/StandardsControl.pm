package Paws::SecurityHub::StandardsControl;
  use Moose;
  has ControlId => (is => 'ro', isa => 'Str');
  has ControlStatus => (is => 'ro', isa => 'Str');
  has ControlStatusUpdatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisabledReason => (is => 'ro', isa => 'Str');
  has RelatedRequirements => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RemediationUrl => (is => 'ro', isa => 'Str');
  has SeverityRating => (is => 'ro', isa => 'Str');
  has StandardsControlArn => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StandardsControl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::StandardsControl object:

  $service_obj->Method(Att1 => { ControlId => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::StandardsControl object:

  $result = $service_obj->Method(...);
  $result->Att1->ControlId

=head1 DESCRIPTION

Details for an individual compliance standard control.

=head1 ATTRIBUTES


=head2 ControlId => Str

  The identifier of the compliance standard control.


=head2 ControlStatus => Str

  The current status of the compliance standard control. Indicates
whether the control is enabled or disabled. Security Hub does not check
against disabled controls.


=head2 ControlStatusUpdatedAt => Str

  The date and time that the status of the compliance standard control
was most recently updated.


=head2 Description => Str

  The longer description of the compliance standard control. Provides
information about what the control is checking for.


=head2 DisabledReason => Str

  The reason provided for the most recent change in status for the
control.


=head2 RelatedRequirements => ArrayRef[Str|Undef]

  The list of requirements that are related to this control.


=head2 RemediationUrl => Str

  A link to remediation information for the control in the Security Hub
user documentation.


=head2 SeverityRating => Str

  The severity of findings generated from this compliance standard
control.

The finding severity is based on an assessment of how easy it would be
to compromise AWS resources if the compliance issue is detected.


=head2 StandardsControlArn => Str

  The ARN of the compliance standard control.


=head2 Title => Str

  The title of the compliance standard control.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

