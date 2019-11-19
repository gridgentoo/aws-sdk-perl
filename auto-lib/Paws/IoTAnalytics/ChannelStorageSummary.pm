# Generated from default/object.tt
package Paws::IoTAnalytics::ChannelStorageSummary;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_CustomerManagedChannelS3StorageSummary IoTAnalytics_ServiceManagedChannelS3StorageSummary/;
  has CustomerManagedS3 => (is => 'ro', isa => IoTAnalytics_CustomerManagedChannelS3StorageSummary);
  has ServiceManagedS3 => (is => 'ro', isa => IoTAnalytics_ServiceManagedChannelS3StorageSummary);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomerManagedS3' => {
                                        'class' => 'Paws::IoTAnalytics::CustomerManagedChannelS3StorageSummary',
                                        'type' => 'IoTAnalytics_CustomerManagedChannelS3StorageSummary'
                                      },
               'ServiceManagedS3' => {
                                       'class' => 'Paws::IoTAnalytics::ServiceManagedChannelS3StorageSummary',
                                       'type' => 'IoTAnalytics_ServiceManagedChannelS3StorageSummary'
                                     }
             },
  'NameInRequest' => {
                       'CustomerManagedS3' => 'customerManagedS3',
                       'ServiceManagedS3' => 'serviceManagedS3'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ChannelStorageSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::ChannelStorageSummary object:

  $service_obj->Method(Att1 => { CustomerManagedS3 => $value, ..., ServiceManagedS3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::ChannelStorageSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerManagedS3

=head1 DESCRIPTION

Where channel data is stored.

=head1 ATTRIBUTES


=head2 CustomerManagedS3 => IoTAnalytics_CustomerManagedChannelS3StorageSummary

  Used to store channel data in an S3 bucket that you manage.


=head2 ServiceManagedS3 => IoTAnalytics_ServiceManagedChannelS3StorageSummary

  Used to store channel data in an S3 bucket managed by the AWS IoT
Analytics service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

