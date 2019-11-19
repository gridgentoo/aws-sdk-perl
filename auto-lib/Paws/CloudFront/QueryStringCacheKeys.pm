# Generated from default/object.tt
package Paws::CloudFront::QueryStringCacheKeys;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::CloudFront::Types qw//;
  has Items => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Quantity => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Quantity' => {
                               'type' => 'Int'
                             },
               'Items' => {
                            'type' => 'ArrayRef[Str|Undef]'
                          }
             },
  'IsRequired' => {
                    'Quantity' => 1
                  },
  'NameInRequest' => {
                       'Items' => 'Name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::QueryStringCacheKeys

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::QueryStringCacheKeys object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::QueryStringCacheKeys object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that contains information about the query string
parameters that you want CloudFront to use for caching for a cache
behavior.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[Str|Undef]

  A list that contains the query string parameters that you want
CloudFront to use as a basis for caching for a cache behavior. If
C<Quantity> is 0, you can omit C<Items>.


=head2 B<REQUIRED> Quantity => Int

  The number of C<whitelisted> query string parameters for a cache
behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

