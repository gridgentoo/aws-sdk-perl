
package Paws::IoTAnalytics::UpdateDatastore;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_RetentionPeriod IoTAnalytics_DatastoreStorage/;
  has DatastoreName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DatastoreStorage => (is => 'ro', isa => IoTAnalytics_DatastoreStorage, predicate => 1);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDatastore');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/datastores/{datastoreName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DatastoreName' => 'datastoreName'
                  },
  'types' => {
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'DatastoreName' => {
                                    'type' => 'Str'
                                  },
               'DatastoreStorage' => {
                                       'type' => 'IoTAnalytics_DatastoreStorage',
                                       'class' => 'Paws::IoTAnalytics::DatastoreStorage'
                                     }
             },
  'IsRequired' => {
                    'DatastoreName' => 1
                  },
  'NameInRequest' => {
                       'RetentionPeriod' => 'retentionPeriod',
                       'DatastoreStorage' => 'datastoreStorage'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::UpdateDatastore - Arguments for method UpdateDatastore on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDatastore on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method UpdateDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDatastore.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    $iotanalytics->UpdateDatastore(
      DatastoreName    => 'MyDatastoreName',
      DatastoreStorage => {
        CustomerManagedS3 => {
          Bucket    => 'MyBucketName',     # min: 3, max: 255
          RoleArn   => 'MyRoleArn',        # min: 20, max: 2048
          KeyPrefix => 'MyS3KeyPrefix',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        ServiceManagedS3 => {

        },    # OPTIONAL
      },    # OPTIONAL
      RetentionPeriod => {
        NumberOfDays => 1,    # min: 1; OPTIONAL
        Unlimited    => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/UpdateDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreName => Str

The name of the data store to be updated.



=head2 DatastoreStorage => IoTAnalytics_DatastoreStorage

Where data store data is stored. You may choose one of
"serviceManagedS3" or "customerManagedS3" storage. If not specified,
the default is "serviceManagedS3". This cannot be changed after the
data store is created.



=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

How long, in days, message data is kept for the data store. The
retention period cannot be updated if the data store's S3 storage is
customer-managed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDatastore in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

