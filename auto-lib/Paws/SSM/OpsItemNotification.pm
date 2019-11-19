# Generated from default/object.tt
package Paws::SSM::OpsItemNotification;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has Arn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OpsItemNotification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OpsItemNotification object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Arn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsItemNotification object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A notification about the OpsItem.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of an SNS topic where notifications are
sent when this OpsItem is edited or changed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

