# Generated from default/object.tt
package Paws::LexModels::FulfillmentActivity;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexModels::Types qw/LexModels_CodeHook/;
  has CodeHook => (is => 'ro', isa => LexModels_CodeHook);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CodeHook' => 'codeHook',
                       'Type' => 'type'
                     },
  'IsRequired' => {
                    'Type' => 1
                  },
  'types' => {
               'CodeHook' => {
                               'class' => 'Paws::LexModels::CodeHook',
                               'type' => 'LexModels_CodeHook'
                             },
               'Type' => {
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

Paws::LexModels::FulfillmentActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::FulfillmentActivity object:

  $service_obj->Method(Att1 => { CodeHook => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::FulfillmentActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeHook

=head1 DESCRIPTION

Describes how the intent is fulfilled after the user provides all of
the information required for the intent. You can provide a Lambda
function to process the intent, or you can return the intent
information to the client application. We recommend that you use a
Lambda function so that the relevant logic lives in the Cloud and limit
the client-side code primarily to presentation. If you need to update
the logic, you only update the Lambda function; you don't need to
upgrade your client application.

Consider the following examples:

=over

=item *

In a pizza ordering application, after the user provides all of the
information for placing an order, you use a Lambda function to place an
order with a pizzeria.

=item *

In a gaming application, when a user says "pick up a rock," this
information must go back to the client application so that it can
perform the operation and update the graphics. In this case, you want
Amazon Lex to return the intent data to the client.

=back


=head1 ATTRIBUTES


=head2 CodeHook => LexModels_CodeHook

  A description of the Lambda function that is run to fulfill the intent.


=head2 B<REQUIRED> Type => Str

  How the intent should be fulfilled, either by running a Lambda function
or by returning the slot data to the client application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

