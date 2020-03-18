package Paws::CodeDeploy::LambdaFunctionInfo;
  use Moose;
  has CurrentVersion => (is => 'ro', isa => 'Str', request_name => 'currentVersion', traits => ['NameInRequest']);
  has FunctionAlias => (is => 'ro', isa => 'Str', request_name => 'functionAlias', traits => ['NameInRequest']);
  has FunctionName => (is => 'ro', isa => 'Str', request_name => 'functionName', traits => ['NameInRequest']);
  has TargetVersion => (is => 'ro', isa => 'Str', request_name => 'targetVersion', traits => ['NameInRequest']);
  has TargetVersionWeight => (is => 'ro', isa => 'Num', request_name => 'targetVersionWeight', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::LambdaFunctionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::LambdaFunctionInfo object:

  $service_obj->Method(Att1 => { CurrentVersion => $value, ..., TargetVersionWeight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::LambdaFunctionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentVersion

=head1 DESCRIPTION

Information about a Lambda function specified in a deployment.

=head1 ATTRIBUTES


=head2 CurrentVersion => Str

  The version of a Lambda function that production traffic points to.


=head2 FunctionAlias => Str

  The alias of a Lambda function. For more information, see Introduction
to AWS Lambda Aliases
(https://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).


=head2 FunctionName => Str

  The name of a Lambda function.


=head2 TargetVersion => Str

  The version of a Lambda function that production traffic points to
after the Lambda function is deployed.


=head2 TargetVersionWeight => Num

  The percentage of production traffic that the target version of a
Lambda function receives.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

