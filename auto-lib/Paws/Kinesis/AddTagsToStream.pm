# Generated from json/callargs_class.tt

package Paws::Kinesis::AddTagsToStream;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw/Kinesis_TagMap/;
  has StreamName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => Kinesis_TagMap, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AddTagsToStream');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StreamName' => 1,
                    'Tags' => 1
                  },
  'types' => {
               'Tags' => {
                           'type' => 'Kinesis_TagMap',
                           'class' => 'Paws::Kinesis::TagMap'
                         },
               'StreamName' => {
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

Paws::Kinesis::AddTagsToStream - Arguments for method AddTagsToStream on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToStream on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method AddTagsToStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToStream.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    $kinesis->AddTagsToStream(
      StreamName => 'MyStreamName',
      Tags       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/AddTagsToStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamName => Str

The name of the stream.



=head2 B<REQUIRED> Tags => Kinesis_TagMap

A set of up to 10 key-value pairs to use to create the tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToStream in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

