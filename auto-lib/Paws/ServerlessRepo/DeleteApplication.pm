
package Paws::ServerlessRepo::DeleteApplication;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServerlessRepo::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteApplication');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApplicationId' => 1
                  },
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  }
             },
  'ParamInURI' => {
                    'ApplicationId' => 'applicationId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::DeleteApplication - Arguments for method DeleteApplication on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplication on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method DeleteApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplication.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    $serverlessrepo->DeleteApplication(
      ApplicationId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/DeleteApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplication in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

