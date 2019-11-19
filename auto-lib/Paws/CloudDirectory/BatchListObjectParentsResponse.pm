# Generated from default/object.tt
package Paws::CloudDirectory::BatchListObjectParentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectIdentifierAndLinkNameTuple/;
  has NextToken => (is => 'ro', isa => Str);
  has ParentLinks => (is => 'ro', isa => ArrayRef[CloudDirectory_ObjectIdentifierAndLinkNameTuple]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParentLinks' => {
                                  'class' => 'Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple',
                                  'type' => 'ArrayRef[CloudDirectory_ObjectIdentifierAndLinkNameTuple]'
                                },
               'NextToken' => {
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

Paws::CloudDirectory::BatchListObjectParentsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListObjectParentsResponse object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., ParentLinks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListObjectParentsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 NextToken => Str

  


=head2 ParentLinks => ArrayRef[CloudDirectory_ObjectIdentifierAndLinkNameTuple]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

