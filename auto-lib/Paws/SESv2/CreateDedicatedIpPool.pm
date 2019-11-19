
package Paws::SESv2::CreateDedicatedIpPool;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_Tag/;
  has PoolName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SESv2_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDedicatedIpPool');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/dedicated-ip-pools');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::CreateDedicatedIpPoolResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PoolName' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'type' => 'ArrayRef[SESv2_Tag]',
                           'class' => 'Paws::SESv2::Tag'
                         }
             },
  'IsRequired' => {
                    'PoolName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateDedicatedIpPool - Arguments for method CreateDedicatedIpPool on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDedicatedIpPool on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateDedicatedIpPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDedicatedIpPool.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateDedicatedIpPoolResponse = $email->CreateDedicatedIpPool(
      PoolName => 'MyPoolName',
      Tags     => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateDedicatedIpPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PoolName => Str

The name of the dedicated IP pool.



=head2 Tags => ArrayRef[SESv2_Tag]

An object that defines the tags (keys and values) that you want to
associate with the pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDedicatedIpPool in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

