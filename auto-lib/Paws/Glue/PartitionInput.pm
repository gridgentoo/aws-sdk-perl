# Generated from default/object.tt
package Paws::Glue::PartitionInput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Glue::Types qw/Glue_ParametersMap Glue_StorageDescriptor/;
  has LastAccessTime => (is => 'ro', isa => Str);
  has LastAnalyzedTime => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => Glue_ParametersMap);
  has StorageDescriptor => (is => 'ro', isa => Glue_StorageDescriptor);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastAccessTime' => {
                                     'type' => 'Str'
                                   },
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'LastAnalyzedTime' => {
                                       'type' => 'Str'
                                     },
               'StorageDescriptor' => {
                                        'class' => 'Paws::Glue::StorageDescriptor',
                                        'type' => 'Glue_StorageDescriptor'
                                      },
               'Parameters' => {
                                 'class' => 'Paws::Glue::ParametersMap',
                                 'type' => 'Glue_ParametersMap'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PartitionInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::PartitionInput object:

  $service_obj->Method(Att1 => { LastAccessTime => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::PartitionInput object:

  $result = $service_obj->Method(...);
  $result->Att1->LastAccessTime

=head1 DESCRIPTION

The structure used to create and update a partition.

=head1 ATTRIBUTES


=head2 LastAccessTime => Str

  The last time at which the partition was accessed.


=head2 LastAnalyzedTime => Str

  The last time at which column statistics were computed for this
partition.


=head2 Parameters => Glue_ParametersMap

  These key-value pairs define partition parameters.


=head2 StorageDescriptor => Glue_StorageDescriptor

  Provides information about the physical location where the partition is
stored.


=head2 Values => ArrayRef[Str|Undef]

  The values of the partition. Although this parameter is not required by
the SDK, you must specify this parameter for a valid input.

The values for the keys for the new partition must be passed as an
array of String objects that must be ordered in the same order as the
partition keys appearing in the Amazon S3 prefix. Otherwise AWS Glue
will add the values to the wrong keys.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

