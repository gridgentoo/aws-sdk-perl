# Generated from default/object.tt
package Paws::ServerlessRepo::ApplicationVersionPage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_VersionSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Versions => (is => 'ro', isa => ArrayRef[ServerlessRepo_VersionSummary], required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Versions' => 1
                  },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Versions' => 'versions'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Versions' => {
                               'class' => 'Paws::ServerlessRepo::VersionSummary',
                               'type' => 'ArrayRef[ServerlessRepo_VersionSummary]'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ApplicationVersionPage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ApplicationVersionPage object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., Versions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ApplicationVersionPage object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

A list of version summaries for the application.

=head1 ATTRIBUTES


=head2 NextToken => Str

  The token to request the next page of results.


=head2 B<REQUIRED> Versions => ArrayRef[ServerlessRepo_VersionSummary]

  An array of version summaries for the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

