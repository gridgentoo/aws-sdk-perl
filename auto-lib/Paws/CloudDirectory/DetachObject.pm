
package Paws::CloudDirectory::DetachObject;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference/;
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LinkName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ParentReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DetachObject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/detach');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::DetachObjectResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'IsRequired' => {
                    'DirectoryArn' => 1,
                    'LinkName' => 1,
                    'ParentReference' => 1
                  },
  'types' => {
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               'ParentReference' => {
                                      'type' => 'CloudDirectory_ObjectReference',
                                      'class' => 'Paws::CloudDirectory::ObjectReference'
                                    },
               'LinkName' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DetachObject - Arguments for method DetachObject on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachObject on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method DetachObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachObject.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $DetachObjectResponse = $clouddirectory->DetachObject(
      DirectoryArn    => 'MyArn',
      LinkName        => 'MyLinkName',
      ParentReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },

    );

    # Results:
    my $DetachedObjectIdentifier =
      $DetachObjectResponse->DetachedObjectIdentifier;

    # Returns a L<Paws::CloudDirectory::DetachObjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/DetachObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where objects reside. For more information, see arns.



=head2 B<REQUIRED> LinkName => Str

The link name associated with the object that needs to be detached.



=head2 B<REQUIRED> ParentReference => CloudDirectory_ObjectReference

The parent reference from which the object with the specified link name
is detached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachObject in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

