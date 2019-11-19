# Generated from json/callargs_class.tt

package Paws::Glue::GetMapping;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Location Glue_CatalogEntry/;
  has Location => (is => 'ro', isa => Glue_Location, predicate => 1);
  has Sinks => (is => 'ro', isa => ArrayRef[Glue_CatalogEntry], predicate => 1);
  has Source => (is => 'ro', isa => Glue_CatalogEntry, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetMapping');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetMappingResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Sinks' => {
                            'type' => 'ArrayRef[Glue_CatalogEntry]',
                            'class' => 'Paws::Glue::CatalogEntry'
                          },
               'Location' => {
                               'class' => 'Paws::Glue::Location',
                               'type' => 'Glue_Location'
                             },
               'Source' => {
                             'type' => 'Glue_CatalogEntry',
                             'class' => 'Paws::Glue::CatalogEntry'
                           }
             },
  'IsRequired' => {
                    'Source' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMapping - Arguments for method GetMapping on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMapping on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMapping.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetMappingResponse = $glue->GetMapping(
      Source => {
        DatabaseName => 'MyNameString',    # min: 1, max: 255
        TableName    => 'MyNameString',    # min: 1, max: 255

      },
      Location => {
        DynamoDB => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                     # OPTIONAL
          },
          ...
        ],                                  # max: 50; OPTIONAL
        Jdbc => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                     # OPTIONAL
          },
          ...
        ],                                  # max: 50; OPTIONAL
        S3 => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                     # OPTIONAL
          },
          ...
        ],                                  # max: 50; OPTIONAL
      },    # OPTIONAL
      Sinks => [
        {
          DatabaseName => 'MyNameString',    # min: 1, max: 255
          TableName    => 'MyNameString',    # min: 1, max: 255

        },
        ...
      ],                                     # OPTIONAL
    );

    # Results:
    my $Mapping = $GetMappingResponse->Mapping;

    # Returns a L<Paws::Glue::GetMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetMapping>

=head1 ATTRIBUTES


=head2 Location => Glue_Location

Parameters for the mapping.



=head2 Sinks => ArrayRef[Glue_CatalogEntry]

A list of target tables.



=head2 B<REQUIRED> Source => Glue_CatalogEntry

Specifies the source table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMapping in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

