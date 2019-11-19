
package Paws::ApiGateway::Model;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has ContentType => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Schema => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Schema' => {
                             'type' => 'Str'
                           },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'Id' => {
                         'type' => 'Str'
                       },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'Id' => 'id',
                       'ContentType' => 'contentType',
                       'Schema' => 'schema',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Model

=head1 ATTRIBUTES


=head2 ContentType => Str

The content-type for the model.


=head2 Description => Str

The description of the model.


=head2 Id => Str

The identifier for the model resource.


=head2 Name => Str

The name of the model. Must be an alphanumeric string.


=head2 Schema => Str

The schema for the model. For C<application/json> models, this should
be JSON schema draft 4
(https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Do not
include "\*/" characters in the description of any properties because
such "\*/" characters may be interpreted as the closing marker for
comments in some languages, such as Java or JavaScript, causing the
installation of your API's SDK generated by API Gateway to fail.


=head2 _request_id => Str


=cut

