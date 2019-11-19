# Generated from default/object.tt
package Paws::Personalize::DatasetGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has DatasetGroupArn => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has KmsKeyArn => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'Status' => {
                             'type' => 'Str'
                           },
               'KmsKeyArn' => {
                                'type' => 'Str'
                              },
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'CreationDateTime' => 'creationDateTime',
                       'Status' => 'status',
                       'KmsKeyArn' => 'kmsKeyArn',
                       'DatasetGroupArn' => 'datasetGroupArn',
                       'FailureReason' => 'failureReason',
                       'RoleArn' => 'roleArn',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DatasetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DatasetGroup object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DatasetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

A dataset group is a collection of related datasets (Interactions,
User, and Item). You create a dataset group by calling
CreateDatasetGroup. You then create a dataset and add it to a dataset
group by calling CreateDataset. The dataset group is used to create and
train a solution by calling CreateSolution. A dataset group can contain
only one of each type of dataset.

You can specify an AWS Key Management Service (KMS) key to encrypt the
datasets in the group.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation date and time (in Unix time) of the dataset group.


=head2 DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group.


=head2 FailureReason => Str

  If creating a dataset group fails, provides the reason why.


=head2 KmsKeyArn => Str

  The Amazon Resource Name (ARN) of the KMS key used to encrypt the
datasets.


=head2 LastUpdatedDateTime => Str

  The last update date and time (in Unix time) of the dataset group.


=head2 Name => Str

  The name of the dataset group.


=head2 RoleArn => Str

  The ARN of the IAM role that has permissions to create the dataset
group.


=head2 Status => Str

  The current status of the dataset group.

A dataset group can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

