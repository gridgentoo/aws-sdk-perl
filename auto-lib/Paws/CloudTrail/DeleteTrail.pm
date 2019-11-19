# Generated from json/callargs_class.tt

package Paws::CloudTrail::DeleteTrail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudTrail::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteTrail');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudTrail::DeleteTrailResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
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

Paws::CloudTrail::DeleteTrail - Arguments for method DeleteTrail on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTrail on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method DeleteTrail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTrail.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $DeleteTrailResponse = $cloudtrail->DeleteTrail(
      Name => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/DeleteTrail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Specifies the name or the CloudTrail ARN of the trail to be deleted.
The format of a trail ARN is:
C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTrail in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

