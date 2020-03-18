package Paws::Schemas::SchemaSummary;
  use Moose;
  has LastModified => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has VersionCount => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::SchemaSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Schemas::SchemaSummary object:

  $service_obj->Method(Att1 => { LastModified => $value, ..., VersionCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Schemas::SchemaSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->LastModified

=head1 DESCRIPTION

A summary of schema details.

=head1 ATTRIBUTES


=head2 LastModified => Str

  The date and time that schema was modified.


=head2 SchemaArn => Str

  The ARN of the schema.


=head2 SchemaName => Str

  The name of the schema.


=head2 Tags => L<Paws::Schemas::Tags>

  Tags associated with the schema.


=head2 VersionCount => Int

  The number of versions available for the schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

