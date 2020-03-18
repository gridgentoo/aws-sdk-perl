package Paws::AccessAnalyzer::ArchiveRuleSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Filter => (is => 'ro', isa => 'Paws::AccessAnalyzer::FilterCriteriaMap', request_name => 'filter', traits => ['NameInRequest'], required => 1);
  has RuleName => (is => 'ro', isa => 'Str', request_name => 'ruleName', traits => ['NameInRequest'], required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ArchiveRuleSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::ArchiveRuleSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::ArchiveRuleSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Contains information about an archive rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

  The time at which the archive rule was created.


=head2 B<REQUIRED> Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>

  A filter used to define the archive rule.


=head2 B<REQUIRED> RuleName => Str

  The name of the archive rule.


=head2 B<REQUIRED> UpdatedAt => Str

  The time at which the archive rule was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

