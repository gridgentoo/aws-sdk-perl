# Generated from json/callargs_class.tt

package Paws::Lightsail::UnpeerVpc;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UnpeerVpc');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::UnpeerVpcResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UnpeerVpc - Arguments for method UnpeerVpc on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnpeerVpc on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UnpeerVpc.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnpeerVpc.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UnpeerVpcResult = $lightsail->UnpeerVpc();

    # Results:
    my $Operation = $UnpeerVpcResult->Operation;

    # Returns a L<Paws::Lightsail::UnpeerVpcResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UnpeerVpc>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnpeerVpc in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

