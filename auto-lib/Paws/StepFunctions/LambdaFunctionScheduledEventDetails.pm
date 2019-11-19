# Generated from default/object.tt
package Paws::StepFunctions::LambdaFunctionScheduledEventDetails;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::StepFunctions::Types qw//;
  has Input => (is => 'ro', isa => Str);
  has Resource => (is => 'ro', isa => Str, required => 1);
  has TimeoutInSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Input' => {
                            'type' => 'Str'
                          },
               'TimeoutInSeconds' => {
                                       'type' => 'Int'
                                     },
               'Resource' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'Resource' => 1
                  },
  'NameInRequest' => {
                       'Input' => 'input',
                       'Resource' => 'resource',
                       'TimeoutInSeconds' => 'timeoutInSeconds'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::LambdaFunctionScheduledEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::LambdaFunctionScheduledEventDetails object:

  $service_obj->Method(Att1 => { Input => $value, ..., TimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::LambdaFunctionScheduledEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

Contains details about a lambda function scheduled during an execution.

=head1 ATTRIBUTES


=head2 Input => Str

  The JSON data input to the lambda function.


=head2 B<REQUIRED> Resource => Str

  The Amazon Resource Name (ARN) of the scheduled lambda function.


=head2 TimeoutInSeconds => Int

  The maximum allowed duration of the lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

