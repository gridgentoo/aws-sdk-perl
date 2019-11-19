package Paws::EC2::IamInstanceProfileAssociation;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_IamInstanceProfile/;
  has AssociationId => (is => 'ro', isa => Str);
  has IamInstanceProfile => (is => 'ro', isa => EC2_IamInstanceProfile);
  has InstanceId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Timestamp => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'State' => 'state',
                       'Timestamp' => 'timestamp',
                       'InstanceId' => 'instanceId',
                       'AssociationId' => 'associationId',
                       'IamInstanceProfile' => 'iamInstanceProfile'
                     },
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'AssociationId' => {
                                    'type' => 'Str'
                                  },
               'State' => {
                            'type' => 'Str'
                          },
               'IamInstanceProfile' => {
                                         'type' => 'EC2_IamInstanceProfile',
                                         'class' => 'Paws::EC2::IamInstanceProfile'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IamInstanceProfileAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IamInstanceProfileAssociation object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IamInstanceProfileAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The ID of the association.


=head2 IamInstanceProfile => EC2_IamInstanceProfile

  The IAM instance profile.


=head2 InstanceId => Str

  The ID of the instance.


=head2 State => Str

  The state of the association.


=head2 Timestamp => Str

  The time the IAM instance profile was associated with the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
