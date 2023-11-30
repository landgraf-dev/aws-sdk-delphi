unit AWSTests.S3.TestUtils;

interface

uses
  System.SysUtils, System.DateUtils, TestFramework,
  AWS.S3,
  AWSTests.UtilityMethods;

type
  TS3TestUtils = class
  private const
    MAX_SPIN_LOOPS = 100;
  public
    class function CreateBucket(S3Client: IAmazonS3): string; static;
    class function CreateBucketWithWait(S3Client: IAmazonS3): string; static;
    class procedure DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string); static;
    class procedure WaitForBucket(S3Client: IAmazonS3; const BucketName: string); overload; static;
    class procedure WaitForBucket(S3Client: IAmazonS3; const BucketName: string; MaxSeconds: Integer); overload; static;
    class function WaitForConsistency<T>(LoadFunction: TFunc<T>): T; static;
  public
    class function DoesS3BucketExistV2(S3Client: IAmazonS3; const BucketName: string): Boolean; static;
  end;

implementation

{ TS3TestUtils }

class function TS3TestUtils.CreateBucket(S3Client: IAmazonS3): string;
begin
  Result := TUtilityMethods.SDK_TEST_PREFIX + IntToStr(DateTimeToMilliseconds(Now));
  S3Client.PutBucket(Result);
end;

class function TS3TestUtils.CreateBucketWithWait(S3Client: IAmazonS3): string;
begin
  Result := CreateBucket(S3Client);
  WaitForBucket(S3Client, Result);
end;

class procedure TS3TestUtils.DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string);
begin
  raise Exception.Create('Implement');
end;

class function TS3TestUtils.DoesS3BucketExistV2(S3Client: IAmazonS3; const BucketName: string): Boolean;
begin
  try
    S3Client.GetACL(BucketName);
  except 
    on E: EAmazonS3Exception do
    begin
      if (E.ErrorCode = 'AccessDenied') or (E.ErrorCode = 'PermanentRedirect') then
        Exit(True)
      else
      if E.ErrorCode = 'NoSuchBucket' then
        Exit(False)
      else
        raise;
    end;
  end;
  Result := True;
end;

class procedure TS3TestUtils.WaitForBucket(S3Client: IAmazonS3; const BucketName: string; MaxSeconds: Integer);
begin
  TUtilityMethods.WaitUntilSuccess<Boolean>(
    function: Boolean
    begin
      //Check if a bucket exists by trying to put an object in it
      var key := Copy(TGuid.NewGuid.ToString, 2, 36) + '_existskey';

      var Request := TPutObjectRequest.Create;
      Request.BucketName := BucketName;
      Request.Key := Key;
      Request.ContentBody := 'exists...';
      var res := S3Client.PutObject(Request);
//      try
        S3Client.DeleteObject(BucketName, key);
//      except
//        OutputDebugString(Format('Eventual consistency error: failed to delete key %s from bucket %s', [Key, BucketName]);
//      end;

      Result := True;
    end);

  //Double check the bucket still exists using the DoesBucketExistV2 method
  {var exists := }TS3TestUtils.WaitForConsistency<Boolean>(
    function: Boolean
    begin
      Result := TS3TestUtils.DoesS3BucketExistV2(S3Client, BucketName);
    end);
end;

class function TS3TestUtils.WaitForConsistency<T>(LoadFunction: TFunc<T>): T;
begin
  //First try waiting up to 60 seconds.    
  var firstWaitSeconds := 60;
  try
    Exit(TUtilityMethods.WaitUntilSuccess<T>(LoadFunction, 10, firstWaitSeconds));
  except
//    OutputDebugString(Format('Eventual consistency wait: could not resolve eventual consistency after %d seconds. Attempting to resolve...', [firstWaitSeconds]));
  end;
  
  //Spin through request to try to get the expected result. As soon as we get a non null result use it.
  for var spinCounter := 0 to MAX_SPIN_LOOPS - 1 do
  begin
    try
      var Value := LoadFunction();
//      if (result.IsNotNull) then
      begin
        if spinCounter <> 0 then
        begin
          //Only log that a wait happened if it didn't do it on the first time.
//          OutputDebugString(Format('Eventual consistency wait successful on attempt %d.', [spinCounter + 1]));
        end;
        Exit(Value);
      end;
    except
    end;

    Sleep(0);
  end;

  //If we don't have an ok result then spend the normal wait period to wait for eventual consistency.
//  OutputDebugString(Format('Eventual consistency wait: could not resolve eventual consistency after %d. Waiting normally...', [MAX_SPIN_LOOPS]));
  var lastWaitSeconds := 240; //4 minute wait.
  Result := TUtilityMethods.WaitUntilSuccess<T>(loadFunction, 5, lastWaitSeconds);                        
end;

class procedure TS3TestUtils.WaitForBucket(S3Client: IAmazonS3; const BucketName: string);
begin
  WaitForBucket(S3Client, BucketName, 30);
end;

end.
