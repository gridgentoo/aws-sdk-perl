# Generated from default/object.tt
package Paws::MediaConvert::OutputGroupDetail;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_OutputDetail/;
  has OutputDetails => (is => 'ro', isa => ArrayRef[MediaConvert_OutputDetail]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutputDetails' => {
                                    'class' => 'Paws::MediaConvert::OutputDetail',
                                    'type' => 'ArrayRef[MediaConvert_OutputDetail]'
                                  }
             },
  'NameInRequest' => {
                       'OutputDetails' => 'outputDetails'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::OutputGroupDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::OutputGroupDetail object:

  $service_obj->Method(Att1 => { OutputDetails => $value, ..., OutputDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::OutputGroupDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputDetails

=head1 DESCRIPTION

Contains details about the output groups specified in the job settings.

=head1 ATTRIBUTES


=head2 OutputDetails => ArrayRef[MediaConvert_OutputDetail]

  Details about the output



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

