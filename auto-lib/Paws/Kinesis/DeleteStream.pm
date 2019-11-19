# Generated from json/callargs_class.tt

package Paws::Kinesis::DeleteStream;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Kinesis::Types qw//;
  has EnforceConsumerDeletion => (is => 'ro', isa => Bool, predicate => 1);
  has StreamName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteStream');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StreamName' => 1
                  },
  'types' => {
               'StreamName' => {
                                 'type' => 'Str'
                               },
               'EnforceConsumerDeletion' => {
                                              'type' => 'Bool'
                                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DeleteStream - Arguments for method DeleteStream on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStream on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method DeleteStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStream.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    $kinesis->DeleteStream(
      StreamName              => 'MyStreamName',
      EnforceConsumerDeletion => 1,                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/DeleteStream>

=head1 ATTRIBUTES


=head2 EnforceConsumerDeletion => Bool

If this parameter is unset (C<null>) or if you set it to C<false>, and
the stream has registered consumers, the call to C<DeleteStream> fails
with a C<ResourceInUseException>.



=head2 B<REQUIRED> StreamName => Str

The name of the stream to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStream in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

