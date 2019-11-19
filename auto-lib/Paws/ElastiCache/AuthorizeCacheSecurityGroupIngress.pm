# Generated from callargs_class.tt

package Paws::ElastiCache::AuthorizeCacheSecurityGroupIngress;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw//;
  has CacheSecurityGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AuthorizeCacheSecurityGroupIngress');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'AuthorizeCacheSecurityGroupIngressResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EC2SecurityGroupOwnerId' => 1,
                    'EC2SecurityGroupName' => 1,
                    'CacheSecurityGroupName' => 1
                  },
  'types' => {
               'CacheSecurityGroupName' => {
                                             'type' => 'Str'
                                           },
               'EC2SecurityGroupName' => {
                                           'type' => 'Str'
                                         },
               'EC2SecurityGroupOwnerId' => {
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

Paws::ElastiCache::AuthorizeCacheSecurityGroupIngress - Arguments for method AuthorizeCacheSecurityGroupIngress on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeCacheSecurityGroupIngress on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method AuthorizeCacheSecurityGroupIngress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeCacheSecurityGroupIngress.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $AuthorizeCacheSecurityGroupIngressResult =
      $elasticache->AuthorizeCacheSecurityGroupIngress(
      CacheSecurityGroupName  => 'MyString',
      EC2SecurityGroupName    => 'MyString',
      EC2SecurityGroupOwnerId => 'MyString',

      );

    # Results:
    my $CacheSecurityGroup =
      $AuthorizeCacheSecurityGroupIngressResult->CacheSecurityGroup;

# Returns a L<Paws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/AuthorizeCacheSecurityGroupIngress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheSecurityGroupName => Str

The cache security group that allows network ingress.



=head2 B<REQUIRED> EC2SecurityGroupName => Str

The Amazon EC2 security group to be authorized for ingress to the cache
security group.



=head2 B<REQUIRED> EC2SecurityGroupOwnerId => Str

The AWS account number of the Amazon EC2 security group owner. Note
that this is not the same thing as an AWS access key ID - you must
provide a valid AWS account number for this parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeCacheSecurityGroupIngress in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

