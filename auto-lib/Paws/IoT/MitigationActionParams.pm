package Paws::IoT::MitigationActionParams;
  use Moose;
  has AddThingsToThingGroupParams => (is => 'ro', isa => 'Paws::IoT::AddThingsToThingGroupParams', request_name => 'addThingsToThingGroupParams', traits => ['NameInRequest']);
  has EnableIoTLoggingParams => (is => 'ro', isa => 'Paws::IoT::EnableIoTLoggingParams', request_name => 'enableIoTLoggingParams', traits => ['NameInRequest']);
  has PublishFindingToSnsParams => (is => 'ro', isa => 'Paws::IoT::PublishFindingToSnsParams', request_name => 'publishFindingToSnsParams', traits => ['NameInRequest']);
  has ReplaceDefaultPolicyVersionParams => (is => 'ro', isa => 'Paws::IoT::ReplaceDefaultPolicyVersionParams', request_name => 'replaceDefaultPolicyVersionParams', traits => ['NameInRequest']);
  has UpdateCACertificateParams => (is => 'ro', isa => 'Paws::IoT::UpdateCACertificateParams', request_name => 'updateCACertificateParams', traits => ['NameInRequest']);
  has UpdateDeviceCertificateParams => (is => 'ro', isa => 'Paws::IoT::UpdateDeviceCertificateParams', request_name => 'updateDeviceCertificateParams', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::MitigationActionParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::MitigationActionParams object:

  $service_obj->Method(Att1 => { AddThingsToThingGroupParams => $value, ..., UpdateDeviceCertificateParams => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::MitigationActionParams object:

  $result = $service_obj->Method(...);
  $result->Att1->AddThingsToThingGroupParams

=head1 DESCRIPTION

The set of parameters for this mitigation action. You can specify only
one type of parameter (in other words, you can apply only one action
for each defined mitigation action).

=head1 ATTRIBUTES


=head2 AddThingsToThingGroupParams => L<Paws::IoT::AddThingsToThingGroupParams>

  Parameters to define a mitigation action that moves devices associated
with a certificate to one or more specified thing groups, typically for
quarantine.


=head2 EnableIoTLoggingParams => L<Paws::IoT::EnableIoTLoggingParams>

  Parameters to define a mitigation action that enables AWS IoT logging
at a specified level of detail.


=head2 PublishFindingToSnsParams => L<Paws::IoT::PublishFindingToSnsParams>

  Parameters to define a mitigation action that publishes findings to
Amazon SNS. You can implement your own custom actions in response to
the Amazon SNS messages.


=head2 ReplaceDefaultPolicyVersionParams => L<Paws::IoT::ReplaceDefaultPolicyVersionParams>

  Parameters to define a mitigation action that adds a blank policy to
restrict permissions.


=head2 UpdateCACertificateParams => L<Paws::IoT::UpdateCACertificateParams>

  Parameters to define a mitigation action that changes the state of the
CA certificate to inactive.


=head2 UpdateDeviceCertificateParams => L<Paws::IoT::UpdateDeviceCertificateParams>

  Parameters to define a mitigation action that changes the state of the
device certificate to inactive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

