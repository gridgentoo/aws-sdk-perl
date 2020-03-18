package Paws::Quicksight::DashboardSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DashboardId => (is => 'ro', isa => 'Str');
  has LastPublishedTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PublishedVersionNumber => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DashboardSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::DashboardSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., PublishedVersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::DashboardSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Dashboard summary.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 CreatedTime => Str

  The time that this dashboard was created.


=head2 DashboardId => Str

  Dashboard ID.


=head2 LastPublishedTime => Str

  The last time that this dashboard was published.


=head2 LastUpdatedTime => Str

  The last time that this dashboard was updated.


=head2 Name => Str

  A display name for the dashboard.


=head2 PublishedVersionNumber => Int

  Published version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

