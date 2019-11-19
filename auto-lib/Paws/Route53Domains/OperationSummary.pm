# Generated from default/object.tt
package Paws::Route53Domains::OperationSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Domains::Types qw//;
  has OperationId => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has SubmittedDate => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OperationId' => 1,
                    'Type' => 1,
                    'SubmittedDate' => 1,
                    'Status' => 1
                  },
  'types' => {
               'OperationId' => {
                                  'type' => 'Str'
                                },
               'Type' => {
                           'type' => 'Str'
                         },
               'SubmittedDate' => {
                                    'type' => 'Str'
                                  },
               'Status' => {
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

Paws::Route53Domains::OperationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::OperationSummary object:

  $service_obj->Method(Att1 => { OperationId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::OperationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->OperationId

=head1 DESCRIPTION

OperationSummary includes the following elements.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationId => Str

  Identifier returned to track the requested action.


=head2 B<REQUIRED> Status => Str

  The current status of the requested operation in the system.


=head2 B<REQUIRED> SubmittedDate => Str

  The date when the request was submitted.


=head2 B<REQUIRED> Type => Str

  Type of the action requested.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

