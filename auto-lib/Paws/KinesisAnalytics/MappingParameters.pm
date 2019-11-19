# Generated from default/object.tt
package Paws::KinesisAnalytics::MappingParameters;
  use Moo;
  use Types::Standard qw//;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_JSONMappingParameters KinesisAnalytics_CSVMappingParameters/;
  has CSVMappingParameters => (is => 'ro', isa => KinesisAnalytics_CSVMappingParameters);
  has JSONMappingParameters => (is => 'ro', isa => KinesisAnalytics_JSONMappingParameters);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CSVMappingParameters' => {
                                           'type' => 'KinesisAnalytics_CSVMappingParameters',
                                           'class' => 'Paws::KinesisAnalytics::CSVMappingParameters'
                                         },
               'JSONMappingParameters' => {
                                            'type' => 'KinesisAnalytics_JSONMappingParameters',
                                            'class' => 'Paws::KinesisAnalytics::JSONMappingParameters'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::MappingParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::MappingParameters object:

  $service_obj->Method(Att1 => { CSVMappingParameters => $value, ..., JSONMappingParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::MappingParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->CSVMappingParameters

=head1 DESCRIPTION

When configuring application input at the time of creating or updating
an application, provides additional mapping information specific to the
record format (such as JSON, CSV, or record fields delimited by some
delimiter) on the streaming source.

=head1 ATTRIBUTES


=head2 CSVMappingParameters => KinesisAnalytics_CSVMappingParameters

  Provides additional mapping information when the record format uses
delimiters (for example, CSV).


=head2 JSONMappingParameters => KinesisAnalytics_JSONMappingParameters

  Provides additional mapping information when JSON is the record format
on the streaming source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

