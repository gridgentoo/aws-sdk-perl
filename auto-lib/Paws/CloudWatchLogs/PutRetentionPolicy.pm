# Generated from json/callargs_class.tt

package Paws::CloudWatchLogs::PutRetentionPolicy;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudWatchLogs::Types qw//;
  has LogGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RetentionInDays => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutRetentionPolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LogGroupName' => 'logGroupName',
                       'RetentionInDays' => 'retentionInDays'
                     },
  'IsRequired' => {
                    'RetentionInDays' => 1,
                    'LogGroupName' => 1
                  },
  'types' => {
               'RetentionInDays' => {
                                      'type' => 'Int'
                                    },
               'LogGroupName' => {
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

Paws::CloudWatchLogs::PutRetentionPolicy - Arguments for method PutRetentionPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRetentionPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutRetentionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRetentionPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->PutRetentionPolicy(
      LogGroupName    => 'MyLogGroupName',
      RetentionInDays => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutRetentionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 B<REQUIRED> RetentionInDays => Int






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRetentionPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

