# Generated from default/object.tt
package Paws::IoT1ClickProjects::PlacementSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw//;
  has CreatedDate => (is => 'ro', isa => Str, required => 1);
  has PlacementName => (is => 'ro', isa => Str, required => 1);
  has ProjectName => (is => 'ro', isa => Str, required => 1);
  has UpdatedDate => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlacementName' => {
                                    'type' => 'Str'
                                  },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'UpdatedDate' => {
                                  'type' => 'Str'
                                },
               'ProjectName' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ProjectName' => 1,
                    'UpdatedDate' => 1,
                    'CreatedDate' => 1,
                    'PlacementName' => 1
                  },
  'NameInRequest' => {
                       'ProjectName' => 'projectName',
                       'PlacementName' => 'placementName',
                       'CreatedDate' => 'createdDate',
                       'UpdatedDate' => 'updatedDate'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::PlacementSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickProjects::PlacementSummary object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., UpdatedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickProjects::PlacementSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

An object providing summary information for a particular placement.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedDate => Str

  The date when the placement was originally created, in UNIX epoch time
format.


=head2 B<REQUIRED> PlacementName => Str

  The name of the placement being summarized.


=head2 B<REQUIRED> ProjectName => Str

  The name of the project containing the placement.


=head2 B<REQUIRED> UpdatedDate => Str

  The date when the placement was last updated, in UNIX epoch time
format. If the placement was not updated, then C<createdDate> and
C<updatedDate> are the same.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

