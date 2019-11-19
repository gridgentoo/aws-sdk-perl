
package Paws::Greengrass::CreateSubscriptionDefinition;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_SubscriptionDefinitionVersion Greengrass_Tags/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has InitialVersion => (is => 'ro', isa => Greengrass_SubscriptionDefinitionVersion, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Greengrass_Tags, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSubscriptionDefinition');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/subscriptions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateSubscriptionDefinitionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'types' => {
               'InitialVersion' => {
                                     'class' => 'Paws::Greengrass::SubscriptionDefinitionVersion',
                                     'type' => 'Greengrass_SubscriptionDefinitionVersion'
                                   },
               'Tags' => {
                           'type' => 'Greengrass_Tags',
                           'class' => 'Paws::Greengrass::Tags'
                         },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateSubscriptionDefinition - Arguments for method CreateSubscriptionDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriptionDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateSubscriptionDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriptionDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateSubscriptionDefinitionResponse =
      $greengrass->CreateSubscriptionDefinition(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        Subscriptions => [
          {
            Id      => 'My__string',
            Source  => 'My__string',
            Subject => 'My__string',
            Target  => 'My__string',

          },
          ...
        ],                                # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',                         # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateSubscriptionDefinitionResponse->Arn;
    my $CreationTimestamp =
      $CreateSubscriptionDefinitionResponse->CreationTimestamp;
    my $Id = $CreateSubscriptionDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateSubscriptionDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion = $CreateSubscriptionDefinitionResponse->LatestVersion;
    my $LatestVersionArn =
      $CreateSubscriptionDefinitionResponse->LatestVersionArn;
    my $Name = $CreateSubscriptionDefinitionResponse->Name;

   # Returns a L<Paws::Greengrass::CreateSubscriptionDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateSubscriptionDefinition>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => Greengrass_SubscriptionDefinitionVersion

Information about the initial version of the subscription definition.



=head2 Name => Str

The name of the subscription definition.



=head2 Tags => Greengrass_Tags

Tag(s) to add to the new resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriptionDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

