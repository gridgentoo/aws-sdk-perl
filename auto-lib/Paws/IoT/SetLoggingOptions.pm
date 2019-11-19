
package Paws::IoT::SetLoggingOptions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_LoggingOptionsPayload/;
  has LoggingOptionsPayload => (is => 'ro', isa => IoT_LoggingOptionsPayload, required => 1, predicate => 1);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'LoggingOptionsPayload');
  class_has _api_call => (isa => Str, is => 'ro', default => 'SetLoggingOptions');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/loggingOptions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'LoggingOptionsPayload' => 1
                  },
  'NameInRequest' => {
                       'LoggingOptionsPayload' => 'loggingOptionsPayload'
                     },
  'types' => {
               'LoggingOptionsPayload' => {
                                            'class' => 'Paws::IoT::LoggingOptionsPayload',
                                            'type' => 'IoT_LoggingOptionsPayload'
                                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SetLoggingOptions - Arguments for method SetLoggingOptions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetLoggingOptions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method SetLoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetLoggingOptions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->SetLoggingOptions(
      LoggingOptionsPayload => {
        RoleArn => 'MyAwsArn',
        LogLevel =>
          'DEBUG',    # values: DEBUG, INFO, ERROR, WARN, DISABLED; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/SetLoggingOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingOptionsPayload => IoT_LoggingOptionsPayload

The logging options payload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetLoggingOptions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

