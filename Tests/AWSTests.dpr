program AWSTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  AWSTests.Cases.Common in 'Source\Common\AWSTests.Cases.Common.pas',
  AWSTests.Cases.Utils in 'Source\Common\AWSTests.Cases.Utils.pas',
  AWSTests.SQS in 'Source\AWSTests.SQS.pas',
  AWSTests.TestBase in 'Source\AWSTests.TestBase.pas',
  AWSTests.SES in 'Source\AWSTests.SES.pas',
  AWSTests.SNS in 'Source\AWSTests.SNS.pas',
  AWSTests.Utils in 'Source\AWSTests.Utils.pas',
  AWSTests.Polly in 'Source\AWSTests.Polly.pas',
  AWSTests.UtilityMethods in 'Source\AWSTests.UtilityMethods.pas',
  AWSTests.S3.GetObjectTests in 'Source\AWSTests.S3.GetObjectTests.pas',
  AWSTests.S3.TestUtils in 'Source\AWSTests.S3.TestUtils.pas',
  AWSTests.S3.Simple.PutObjectTests in 'Source\AWSTests.S3.Simple.PutObjectTests.pas',
  AWSTests.S3.Simple.ServiceClientTests in 'Source\AWSTests.S3.Simple.ServiceClientTests.pas',
  AWSTests.S3.GeneratePresignedUrlTests in 'Source\AWSTests.S3.GeneratePresignedUrlTests.pas',
  AWSTests.S3.BucketRegionTests in 'Source\AWSTests.S3.BucketRegionTests.pas',
  AWSTests.S3.BucketRegionTestRunner in 'Source\AWSTests.S3.BucketRegionTestRunner.pas',
  AWSTests.LruCacheTest in 'Source\AWSTests.LruCacheTest.pas',
  AWSTests.S3.CopyObjectTests in 'Source\AWSTests.S3.CopyObjectTests.pas';

{$R *.RES}

begin
  ReportMemoryLeaksOnShutdown := True;
  DUnitTestRunner.RunRegisteredTests;
end.

