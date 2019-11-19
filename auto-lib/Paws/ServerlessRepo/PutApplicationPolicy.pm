
package Paws::ServerlessRepo::PutApplicationPolicy;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_ApplicationPolicyStatement/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Statements => (is => 'ro', isa => ArrayRef[ServerlessRepo_ApplicationPolicyStatement], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutApplicationPolicy');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/applications/{applicationId}/policy');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServerlessRepo::PutApplicationPolicyResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ApplicationId' => 'applicationId'
                  },
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Statements' => {
                                 'type' => 'ArrayRef[ServerlessRepo_ApplicationPolicyStatement]',
                                 'class' => 'Paws::ServerlessRepo::ApplicationPolicyStatement'
                               }
             },
  'IsRequired' => {
                    'Statements' => 1,
                    'ApplicationId' => 1
                  },
  'NameInRequest' => {
                       'Statements' => 'statements'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::PutApplicationPolicy - Arguments for method PutApplicationPolicy on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutApplicationPolicy on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method PutApplicationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutApplicationPolicy.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $PutApplicationPolicyResponse = $serverlessrepo->PutApplicationPolicy(
      ApplicationId => 'My__string',
      Statements    => [
        {
          Actions     => [ 'My__string', ... ],
          Principals  => [ 'My__string', ... ],
          StatementId => 'My__string',
        },
        ...
      ],

    );

    # Results:
    my $Statements = $PutApplicationPolicyResponse->Statements;

    # Returns a L<Paws::ServerlessRepo::PutApplicationPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/PutApplicationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



=head2 B<REQUIRED> Statements => ArrayRef[ServerlessRepo_ApplicationPolicyStatement]

An array of policy statements applied to the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutApplicationPolicy in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

