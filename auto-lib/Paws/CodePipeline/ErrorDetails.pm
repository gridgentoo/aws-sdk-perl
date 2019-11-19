# Generated from default/object.tt
package Paws::CodePipeline::ErrorDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has Code => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Code' => {
                           'type' => 'Str'
                         },
               'Message' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Code' => 'code',
                       'Message' => 'message'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ErrorDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ErrorDetails object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ErrorDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Represents information about an error in AWS CodePipeline.

=head1 ATTRIBUTES


=head2 Code => Str

  The system ID or number code of the error.


=head2 Message => Str

  The text of the error message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

