
package Paws::Amplify::GetWebhookResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_Webhook/;
  has Webhook => (is => 'ro', isa => Amplify_Webhook, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Webhook' => {
                              'type' => 'Amplify_Webhook',
                              'class' => 'Paws::Amplify::Webhook'
                            }
             },
  'NameInRequest' => {
                       'Webhook' => 'webhook'
                     },
  'IsRequired' => {
                    'Webhook' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetWebhookResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Webhook => Amplify_Webhook

Webhook structure.


=head2 _request_id => Str


=cut

