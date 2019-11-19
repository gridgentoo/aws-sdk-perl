# Generated from json/callargs_class.tt

package Paws::CognitoIdp::StartUserImportJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartUserImportJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::StartUserImportJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'UserPoolId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'UserPoolId' => 1,
                    'JobId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::StartUserImportJob - Arguments for method StartUserImportJob on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartUserImportJob on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method StartUserImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartUserImportJob.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $StartUserImportJobResponse = $cognito -idp->StartUserImportJob(
      JobId      => 'MyUserImportJobIdType',
      UserPoolId => 'MyUserPoolIdType',

    );

    # Results:
    my $UserImportJob = $StartUserImportJobResponse->UserImportJob;

    # Returns a L<Paws::CognitoIdp::StartUserImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/StartUserImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job ID for the user import job.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool that the users are being imported
into.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartUserImportJob in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

