# Generated from default/object.tt
package Paws::SageMaker::DataSource;
  use Moo;
  use Types::Standard qw//;
  use Paws::SageMaker::Types qw/SageMaker_FileSystemDataSource SageMaker_S3DataSource/;
  has FileSystemDataSource => (is => 'ro', isa => SageMaker_FileSystemDataSource);
  has S3DataSource => (is => 'ro', isa => SageMaker_S3DataSource);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileSystemDataSource' => {
                                           'type' => 'SageMaker_FileSystemDataSource',
                                           'class' => 'Paws::SageMaker::FileSystemDataSource'
                                         },
               'S3DataSource' => {
                                   'class' => 'Paws::SageMaker::S3DataSource',
                                   'type' => 'SageMaker_S3DataSource'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DataSource object:

  $service_obj->Method(Att1 => { FileSystemDataSource => $value, ..., S3DataSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->FileSystemDataSource

=head1 DESCRIPTION

Describes the location of the channel data.

=head1 ATTRIBUTES


=head2 FileSystemDataSource => SageMaker_FileSystemDataSource

  The file system that is associated with a channel.


=head2 S3DataSource => SageMaker_S3DataSource

  The S3 location of the data source that is associated with a channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

