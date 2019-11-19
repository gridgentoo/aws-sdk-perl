# Generated from callargs_class.tt

package Paws::ElasticBeanstalk::DeleteEnvironmentConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw//;
  has ApplicationName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EnvironmentName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteEnvironmentConfiguration');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EnvironmentName' => 1,
                    'ApplicationName' => 1
                  },
  'types' => {
               'EnvironmentName' => {
                                      'type' => 'Str'
                                    },
               'ApplicationName' => {
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

Paws::ElasticBeanstalk::DeleteEnvironmentConfiguration - Arguments for method DeleteEnvironmentConfiguration on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEnvironmentConfiguration on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DeleteEnvironmentConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEnvironmentConfiguration.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To delete a draft configuration
    # The following operation deletes a draft configuration for an environment
    # named my-env:
    $elasticbeanstalk->DeleteEnvironmentConfiguration(
      'ApplicationName' => 'my-app',
      'EnvironmentName' => 'my-env'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DeleteEnvironmentConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application the environment is associated with.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the environment to delete the draft configuration from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEnvironmentConfiguration in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

