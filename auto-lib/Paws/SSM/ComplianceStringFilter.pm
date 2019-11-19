# Generated from default/object.tt
package Paws::SSM::ComplianceStringFilter;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::SSM::Types qw//;
  has Key => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Key' => {
                          'type' => 'Str'
                        },
               'Type' => {
                           'type' => 'Str'
                         },
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ComplianceStringFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ComplianceStringFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ComplianceStringFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

One or more filters. Use a filter to return a more specific list of
results.

=head1 ATTRIBUTES


=head2 Key => Str

  The name of the filter.


=head2 Type => Str

  The type of comparison that should be performed for the value: Equal,
NotEqual, BeginWith, LessThan, or GreaterThan.


=head2 Values => ArrayRef[Str|Undef]

  The value for which to search.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

