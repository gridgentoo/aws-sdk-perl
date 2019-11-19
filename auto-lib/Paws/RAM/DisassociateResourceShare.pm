
package Paws::RAM::DisassociateResourceShare;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::RAM::Types qw//;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Principals => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ResourceArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ResourceShareArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DisassociateResourceShare');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/disassociateresourceshare');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RAM::DisassociateResourceShareResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceShareArn' => {
                                       'type' => 'Str'
                                     },
               'Principals' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ResourceArns' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             },
  'IsRequired' => {
                    'ResourceShareArn' => 1
                  },
  'NameInRequest' => {
                       'Principals' => 'principals',
                       'ClientToken' => 'clientToken',
                       'ResourceShareArn' => 'resourceShareArn',
                       'ResourceArns' => 'resourceArns'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DisassociateResourceShare - Arguments for method DisassociateResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method DisassociateResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $DisassociateResourceShareResponse = $ram->DisassociateResourceShare(
      ResourceShareArn => 'MyString',
      ClientToken      => 'MyString',             # OPTIONAL
      Principals       => [ 'MyString', ... ],    # OPTIONAL
      ResourceArns     => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $ClientToken = $DisassociateResourceShareResponse->ClientToken;
    my $ResourceShareAssociations =
      $DisassociateResourceShareResponse->ResourceShareAssociations;

    # Returns a L<Paws::RAM::DisassociateResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/DisassociateResourceShare>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Principals => ArrayRef[Str|Undef]

The principals.



=head2 ResourceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resources.



=head2 B<REQUIRED> ResourceShareArn => Str

The Amazon Resource Name (ARN) of the resource share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

