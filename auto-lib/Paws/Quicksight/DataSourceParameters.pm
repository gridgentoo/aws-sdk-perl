package Paws::Quicksight::DataSourceParameters;
  use Moose;
  has AmazonElasticsearchParameters => (is => 'ro', isa => 'Paws::Quicksight::AmazonElasticsearchParameters');
  has AthenaParameters => (is => 'ro', isa => 'Paws::Quicksight::AthenaParameters');
  has AuroraParameters => (is => 'ro', isa => 'Paws::Quicksight::AuroraParameters');
  has AuroraPostgreSqlParameters => (is => 'ro', isa => 'Paws::Quicksight::AuroraPostgreSqlParameters');
  has AwsIotAnalyticsParameters => (is => 'ro', isa => 'Paws::Quicksight::AwsIotAnalyticsParameters');
  has JiraParameters => (is => 'ro', isa => 'Paws::Quicksight::JiraParameters');
  has MariaDbParameters => (is => 'ro', isa => 'Paws::Quicksight::MariaDbParameters');
  has MySqlParameters => (is => 'ro', isa => 'Paws::Quicksight::MySqlParameters');
  has PostgreSqlParameters => (is => 'ro', isa => 'Paws::Quicksight::PostgreSqlParameters');
  has PrestoParameters => (is => 'ro', isa => 'Paws::Quicksight::PrestoParameters');
  has RdsParameters => (is => 'ro', isa => 'Paws::Quicksight::RdsParameters');
  has RedshiftParameters => (is => 'ro', isa => 'Paws::Quicksight::RedshiftParameters');
  has S3Parameters => (is => 'ro', isa => 'Paws::Quicksight::S3Parameters');
  has ServiceNowParameters => (is => 'ro', isa => 'Paws::Quicksight::ServiceNowParameters');
  has SnowflakeParameters => (is => 'ro', isa => 'Paws::Quicksight::SnowflakeParameters');
  has SparkParameters => (is => 'ro', isa => 'Paws::Quicksight::SparkParameters');
  has SqlServerParameters => (is => 'ro', isa => 'Paws::Quicksight::SqlServerParameters');
  has TeradataParameters => (is => 'ro', isa => 'Paws::Quicksight::TeradataParameters');
  has TwitterParameters => (is => 'ro', isa => 'Paws::Quicksight::TwitterParameters');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DataSourceParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::DataSourceParameters object:

  $service_obj->Method(Att1 => { AmazonElasticsearchParameters => $value, ..., TwitterParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::DataSourceParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonElasticsearchParameters

=head1 DESCRIPTION

The parameters that Amazon QuickSight uses to connect to your
underlying data source. This is a variant type structure. For this
structure to be valid, only one of the attributes can be non-null.

=head1 ATTRIBUTES


=head2 AmazonElasticsearchParameters => L<Paws::Quicksight::AmazonElasticsearchParameters>

  Amazon Elasticsearch Service parameters.


=head2 AthenaParameters => L<Paws::Quicksight::AthenaParameters>

  Amazon Athena parameters.


=head2 AuroraParameters => L<Paws::Quicksight::AuroraParameters>

  Amazon Aurora MySQL parameters.


=head2 AuroraPostgreSqlParameters => L<Paws::Quicksight::AuroraPostgreSqlParameters>

  Aurora PostgreSQL parameters.


=head2 AwsIotAnalyticsParameters => L<Paws::Quicksight::AwsIotAnalyticsParameters>

  AWS IoT Analytics parameters.


=head2 JiraParameters => L<Paws::Quicksight::JiraParameters>

  Jira parameters.


=head2 MariaDbParameters => L<Paws::Quicksight::MariaDbParameters>

  MariaDB parameters.


=head2 MySqlParameters => L<Paws::Quicksight::MySqlParameters>

  MySQL parameters.


=head2 PostgreSqlParameters => L<Paws::Quicksight::PostgreSqlParameters>

  PostgreSQL parameters.


=head2 PrestoParameters => L<Paws::Quicksight::PrestoParameters>

  Presto parameters.


=head2 RdsParameters => L<Paws::Quicksight::RdsParameters>

  Amazon RDS parameters.


=head2 RedshiftParameters => L<Paws::Quicksight::RedshiftParameters>

  Amazon Redshift parameters.


=head2 S3Parameters => L<Paws::Quicksight::S3Parameters>

  S3 parameters.


=head2 ServiceNowParameters => L<Paws::Quicksight::ServiceNowParameters>

  ServiceNow parameters.


=head2 SnowflakeParameters => L<Paws::Quicksight::SnowflakeParameters>

  Snowflake parameters.


=head2 SparkParameters => L<Paws::Quicksight::SparkParameters>

  Spark parameters.


=head2 SqlServerParameters => L<Paws::Quicksight::SqlServerParameters>

  SQL Server parameters.


=head2 TeradataParameters => L<Paws::Quicksight::TeradataParameters>

  Teradata parameters.


=head2 TwitterParameters => L<Paws::Quicksight::TwitterParameters>

  Twitter parameters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

