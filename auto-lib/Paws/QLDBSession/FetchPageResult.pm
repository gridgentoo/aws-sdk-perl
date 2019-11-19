# Generated from default/object.tt
package Paws::QLDBSession::FetchPageResult;
  use Moo;
  use Types::Standard qw//;
  use Paws::QLDBSession::Types qw/QLDBSession_Page/;
  has Page => (is => 'ro', isa => QLDBSession_Page);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Page' => {
                           'type' => 'QLDBSession_Page',
                           'class' => 'Paws::QLDBSession::Page'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::FetchPageResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::FetchPageResult object:

  $service_obj->Method(Att1 => { Page => $value, ..., Page => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::FetchPageResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Page

=head1 DESCRIPTION

Contains the page that was fetched.

=head1 ATTRIBUTES


=head2 Page => QLDBSession_Page

  Contains details of the fetched page.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

