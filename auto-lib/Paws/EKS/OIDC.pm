# Generated from default/object.tt
package Paws::EKS::OIDC;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw//;
  has Issuer => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Issuer' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Issuer' => 'issuer'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::OIDC

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::OIDC object:

  $service_obj->Method(Att1 => { Issuer => $value, ..., Issuer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::OIDC object:

  $result = $service_obj->Method(...);
  $result->Att1->Issuer

=head1 DESCRIPTION

An object representing the OpenID Connect (https://openid.net/connect/)
identity provider information for the cluster.

=head1 ATTRIBUTES


=head2 Issuer => Str

  The issuer URL for the OpenID Connect identity provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

