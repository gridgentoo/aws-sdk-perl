package Paws::AccessAnalyzer::AnalyzedResourceSummary;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', request_name => 'resourceArn', traits => ['NameInRequest'], required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::AnalyzedResourceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::AnalyzedResourceSummary object:

  $service_obj->Method(Att1 => { ResourceArn => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::AnalyzedResourceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceArn

=head1 DESCRIPTION

Contains the ARN of the analyzed resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

  The ARN of the analyzed resource.


=head2 B<REQUIRED> ResourceType => Str

  The type of resource that was analyzed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

