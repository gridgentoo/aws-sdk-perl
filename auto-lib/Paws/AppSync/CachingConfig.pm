package Paws::AppSync::CachingConfig;
  use Moose;
  has CachingKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'cachingKeys', traits => ['NameInRequest']);
  has Ttl => (is => 'ro', isa => 'Int', request_name => 'ttl', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CachingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::CachingConfig object:

  $service_obj->Method(Att1 => { CachingKeys => $value, ..., Ttl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::CachingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CachingKeys

=head1 DESCRIPTION

The caching configuration for a resolver that has caching enabled.

=head1 ATTRIBUTES


=head2 CachingKeys => ArrayRef[Str|Undef]

  The caching keys for a resolver that has caching enabled.

Valid values are entries from the C<$context.identity> and
C<$context.arguments> maps.


=head2 Ttl => Int

  The TTL in seconds for a resolver that has caching enabled.

Valid values are between 1 and 3600 seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

