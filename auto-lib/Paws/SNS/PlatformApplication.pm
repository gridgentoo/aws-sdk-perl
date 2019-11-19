# Generated from default/object.tt
package Paws::SNS::PlatformApplication;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw/SNS_MapStringToString/;
  has Attributes => (is => 'ro', isa => SNS_MapStringToString);
  has PlatformApplicationArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SNS::MapStringToString',
                                 'type' => 'SNS_MapStringToString'
                               },
               'PlatformApplicationArn' => {
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

Paws::SNS::PlatformApplication

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SNS::PlatformApplication object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., PlatformApplicationArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SNS::PlatformApplication object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Platform application object.

=head1 ATTRIBUTES


=head2 Attributes => SNS_MapStringToString

  Attributes for platform application object.


=head2 PlatformApplicationArn => Str

  PlatformApplicationArn for platform application object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

