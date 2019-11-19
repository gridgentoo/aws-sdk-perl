# Generated from default/object.tt
package Paws::S3::SSES3;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw//;

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SSES3

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SSES3 object:

  $service_obj->Method(Att1 => {  => $value, ...,  => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SSES3 object:

  $result = $service_obj->Method(...);
  $result->Att1->

=head1 DESCRIPTION

Specifies the use of SSE-S3 to encrypt delivered Inventory reports.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

