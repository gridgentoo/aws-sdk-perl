# Generated from default/object.tt
package Paws::CodeCommit::RepositoryTrigger;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::CodeCommit::Types qw//;
  has Branches => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CustomData => (is => 'ro', isa => Str);
  has DestinationArn => (is => 'ro', isa => Str, required => 1);
  has Events => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Branches' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'Events' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'CustomData' => {
                                 'type' => 'Str'
                               },
               'DestinationArn' => {
                                     'type' => 'Str'
                                   },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Branches' => 'branches',
                       'Events' => 'events',
                       'CustomData' => 'customData',
                       'Name' => 'name',
                       'DestinationArn' => 'destinationArn'
                     },
  'IsRequired' => {
                    'Events' => 1,
                    'Name' => 1,
                    'DestinationArn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::RepositoryTrigger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::RepositoryTrigger object:

  $service_obj->Method(Att1 => { Branches => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::RepositoryTrigger object:

  $result = $service_obj->Method(...);
  $result->Att1->Branches

=head1 DESCRIPTION

Information about a trigger for a repository.

=head1 ATTRIBUTES


=head2 Branches => ArrayRef[Str|Undef]

  The branches that will be included in the trigger configuration. If you
specify an empty array, the trigger will apply to all branches.

Although no content is required in the array, you must include the
array itself.


=head2 CustomData => Str

  Any custom data associated with the trigger that will be included in
the information sent to the target of the trigger.


=head2 B<REQUIRED> DestinationArn => Str

  The ARN of the resource that is the target for a trigger. For example,
the ARN of a topic in Amazon SNS.


=head2 B<REQUIRED> Events => ArrayRef[Str|Undef]

  The repository events that will cause the trigger to run actions in
another service, such as sending a notification through Amazon SNS.

The valid value "all" cannot be used with any other values.


=head2 B<REQUIRED> Name => Str

  The name of the trigger.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

