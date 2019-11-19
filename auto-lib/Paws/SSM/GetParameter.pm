# Generated from json/callargs_class.tt

package Paws::SSM::GetParameter;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SSM::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has WithDecryption => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetParameter');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::GetParameterResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'WithDecryption' => {
                                     'type' => 'Bool'
                                   },
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

Paws::SSM::GetParameter - Arguments for method GetParameter on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParameter on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParameter.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetParameterResult = $ssm->GetParameter(
      Name           => 'MyPSParameterName',
      WithDecryption => 1,                     # OPTIONAL
    );

    # Results:
    my $Parameter = $GetParameterResult->Parameter;

    # Returns a L<Paws::SSM::GetParameterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetParameter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the parameter you want to query.



=head2 WithDecryption => Bool

Return decrypted values for secure string parameters. This flag is
ignored for String and StringList parameter types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParameter in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

