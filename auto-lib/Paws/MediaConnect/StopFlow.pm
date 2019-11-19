
package Paws::MediaConnect::StopFlow;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw//;
  has FlowArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopFlow');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/flows/stop/{flowArn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConnect::StopFlowResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'FlowArn' => 1
                  },
  'ParamInURI' => {
                    'FlowArn' => 'flowArn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::StopFlow - Arguments for method StopFlow on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopFlow on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method StopFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopFlow.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $StopFlowResponse = $mediaconnect->StopFlow(
      FlowArn => 'My__string',

    );

    # Results:
    my $FlowArn = $StopFlowResponse->FlowArn;
    my $Status  = $StopFlowResponse->Status;

    # Returns a L<Paws::MediaConnect::StopFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/StopFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The ARN of the flow that you want to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

