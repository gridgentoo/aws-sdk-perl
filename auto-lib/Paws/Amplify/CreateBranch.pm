
package Paws::Amplify::CreateBranch;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Amplify::Types qw/Amplify_EnvironmentVariables Amplify_TagMap/;
  has AppId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BackendEnvironmentArn => (is => 'ro', isa => Str, predicate => 1);
  has BasicAuthCredentials => (is => 'ro', isa => Str, predicate => 1);
  has BranchName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BuildSpec => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DisplayName => (is => 'ro', isa => Str, predicate => 1);
  has EnableAutoBuild => (is => 'ro', isa => Bool, predicate => 1);
  has EnableBasicAuth => (is => 'ro', isa => Bool, predicate => 1);
  has EnableNotification => (is => 'ro', isa => Bool, predicate => 1);
  has EnablePullRequestPreview => (is => 'ro', isa => Bool, predicate => 1);
  has EnvironmentVariables => (is => 'ro', isa => Amplify_EnvironmentVariables, predicate => 1);
  has Framework => (is => 'ro', isa => Str, predicate => 1);
  has PullRequestEnvironmentName => (is => 'ro', isa => Str, predicate => 1);
  has Stage => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Amplify_TagMap, predicate => 1);
  has Ttl => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateBranch');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apps/{appId}/branches');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Amplify::CreateBranchResult');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'AppId' => 'appId'
                  },
  'types' => {
               'Ttl' => {
                          'type' => 'Str'
                        },
               'EnvironmentVariables' => {
                                           'class' => 'Paws::Amplify::EnvironmentVariables',
                                           'type' => 'Amplify_EnvironmentVariables'
                                         },
               'EnableNotification' => {
                                         'type' => 'Bool'
                                       },
               'BackendEnvironmentArn' => {
                                            'type' => 'Str'
                                          },
               'PullRequestEnvironmentName' => {
                                                 'type' => 'Str'
                                               },
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'EnableBasicAuth' => {
                                      'type' => 'Bool'
                                    },
               'AppId' => {
                            'type' => 'Str'
                          },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'BasicAuthCredentials' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'type' => 'Amplify_TagMap',
                           'class' => 'Paws::Amplify::TagMap'
                         },
               'Framework' => {
                                'type' => 'Str'
                              },
               'BuildSpec' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'EnablePullRequestPreview' => {
                                               'type' => 'Bool'
                                             },
               'EnableAutoBuild' => {
                                      'type' => 'Bool'
                                    },
               'Stage' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'DisplayName' => 'displayName',
                       'BasicAuthCredentials' => 'basicAuthCredentials',
                       'EnableBasicAuth' => 'enableBasicAuth',
                       'BranchName' => 'branchName',
                       'PullRequestEnvironmentName' => 'pullRequestEnvironmentName',
                       'BackendEnvironmentArn' => 'backendEnvironmentArn',
                       'EnableNotification' => 'enableNotification',
                       'EnvironmentVariables' => 'environmentVariables',
                       'Ttl' => 'ttl',
                       'Stage' => 'stage',
                       'EnableAutoBuild' => 'enableAutoBuild',
                       'EnablePullRequestPreview' => 'enablePullRequestPreview',
                       'Description' => 'description',
                       'BuildSpec' => 'buildSpec',
                       'Framework' => 'framework',
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'AppId' => 1,
                    'BranchName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateBranch - Arguments for method CreateBranch on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBranch on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method CreateBranch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBranch.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $CreateBranchResult = $amplify->CreateBranch(
      AppId                    => 'MyAppId',
      BranchName               => 'MyBranchName',
      BackendEnvironmentArn    => 'MyBackendEnvironmentArn',    # OPTIONAL
      BasicAuthCredentials     => 'MyBasicAuthCredentials',     # OPTIONAL
      BuildSpec                => 'MyBuildSpec',                # OPTIONAL
      Description              => 'MyDescription',              # OPTIONAL
      DisplayName              => 'MyDisplayName',              # OPTIONAL
      EnableAutoBuild          => 1,                            # OPTIONAL
      EnableBasicAuth          => 1,                            # OPTIONAL
      EnableNotification       => 1,                            # OPTIONAL
      EnablePullRequestPreview => 1,                            # OPTIONAL
      EnvironmentVariables     => {
        'MyEnvKey' => 'MyEnvValue',    # key: max: 255, value: max: 1000
      },    # OPTIONAL
      Framework                  => 'MyFramework',                    # OPTIONAL
      PullRequestEnvironmentName => 'MyPullRequestEnvironmentName',   # OPTIONAL
      Stage                      => 'PRODUCTION',                     # OPTIONAL
      Tags                       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Ttl => 'MyTTL',    # OPTIONAL
    );

    # Results:
    my $Branch = $CreateBranchResult->Branch;

    # Returns a L<Paws::Amplify::CreateBranchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateBranch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 BackendEnvironmentArn => Str

ARN for a Backend Environment, part of an Amplify App.



=head2 BasicAuthCredentials => Str

Basic Authorization credentials for the branch.



=head2 B<REQUIRED> BranchName => Str

Name for the branch.



=head2 BuildSpec => Str

BuildSpec for the branch.



=head2 Description => Str

Description for the branch.



=head2 DisplayName => Str

Display name for a branch, will use as the default domain prefix.



=head2 EnableAutoBuild => Bool

Enables auto building for the branch.



=head2 EnableBasicAuth => Bool

Enables Basic Auth for the branch.



=head2 EnableNotification => Bool

Enables notifications for the branch.



=head2 EnablePullRequestPreview => Bool

Enables Pull Request Preview for this branch.



=head2 EnvironmentVariables => Amplify_EnvironmentVariables

Environment Variables for the branch.



=head2 Framework => Str

Framework for the branch.



=head2 PullRequestEnvironmentName => Str

The Amplify Environment name for the pull request.



=head2 Stage => Str

Stage for the branch.

Valid values are: C<"PRODUCTION">, C<"BETA">, C<"DEVELOPMENT">, C<"EXPERIMENTAL">, C<"PULL_REQUEST">

=head2 Tags => Amplify_TagMap

Tag for the branch.



=head2 Ttl => Str

The content TTL for the website in seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBranch in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

