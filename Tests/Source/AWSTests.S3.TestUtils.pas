unit AWSTests.S3.TestUtils;

interface

uses
  System.Generics.Collections, System.SysUtils, System.DateUtils, TestFramework,
  AWS.Internal.DefaultRetryPolicy,
  AWS.S3,
  AWS.S3.Model.DeleteObjectsException,
  AWSTests.UtilityMethods;

type
  TS3DeleteBucketWithObjectsOptions = record
  private
    FContinueOnError: Boolean;
    FQuietMode: Boolean;
  public
    constructor Create(AContinueOnError, AQuietMode: Boolean);
    property ContinueOnError: Boolean read FContinueOnError write FContinueOnError;
    property QuietMode: Boolean read FQuietMode write FQuietMode;
  end;

  TS3TestUtils = class
  private const
    MAX_SPIN_LOOPS = 100;
  public
    class function CreateBucket(S3Client: IAmazonS3; const TestName: string = ''; SetPublicAcls: Boolean = False): string; static;
    class function CreateBucketWithWait(S3Client: IAmazonS3): string; static;
    class procedure WaitForBucket(S3Client: IAmazonS3; const BucketName: string); overload; static;
    class procedure WaitForBucket(S3Client: IAmazonS3; const BucketName: string; MaxSeconds: Integer); overload; static;
    class function WaitForConsistency<T>(LoadFunction: TFunc<T>): T; static;
    class procedure WaitForObject(S3Client: IAmazonS3; const BucketName, Key: string; MaxSeconds: Integer); overload; static;
  public
    class function DoesS3BucketExistV2(S3Client: IAmazonS3; const BucketName: string): Boolean; static;
    class procedure DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string); overload; static;
    class procedure DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string;
      const DeleteOptions: TS3DeleteBucketWithObjectsOptions); overload; static;

    class procedure SetPublicBucketACLs(S3Client: IAmazonS3; const BucketName: string); static;
  end;

implementation

{ TS3TestUtils }

class function TS3TestUtils.CreateBucket(S3Client: IAmazonS3; const TestName: string = ''; SetPublicAcls: Boolean = False): string;
begin
  Result := TUtilityMethods.SDK_TEST_PREFIX;
  if TestName <> '' then
    Result := Result + '-' + TestName;
  Result := Result + '-' + IntToStr(DateTimeToMilliseconds(Now));
  Result := LowerCase(Result);
  S3Client.PutBucket(Result);
  if SetPublicAcls then
    SetPublicBucketACLs(S3Client, Result);
end;

class function TS3TestUtils.CreateBucketWithWait(S3Client: IAmazonS3): string;
begin
  Result := CreateBucket(S3Client);
  WaitForBucket(S3Client, Result);
end;

class procedure TS3TestUtils.DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string);
begin
  DeleteS3BucketWithObjects(S3Client, BucketName, TS3DeleteBucketWithObjectsOptions.Create(False, True));
end;

class procedure TS3TestUtils.DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string;
  const DeleteOptions: TS3DeleteBucketWithObjectsOptions);
begin
  var listVersionsRequest: IListVersionsRequest := TListVersionsRequest.Create;
  listVersionsRequest.BucketName := BucketName;
  var listVersionsResponse: IListVersionsResponse;
  repeat
    // List all the versions of all the objects in the bucket.
    listVersionsResponse := S3Client.ListVersions(listVersionsRequest);

    if listVersionsResponse.Versions.Count = 0 then
      Break;

    var keyVersionList := TObjectList<TKeyVersion>.Create;
    try
      for var index := 0 to listVersionsResponse.Versions.Count - 1 do
      begin
        var keyVersion := TKeyVersion.Create;
        keyVersionList.Add(keyVersion);
        keyVersion.Key := listVersionsResponse.Versions[index].Key;
        keyVersion.VersionId := listVersionsResponse.Versions[index].VersionId;
      end;
      try
        // Delete the current set of objects.
        var deleteObjectsRequest: IDeleteObjectsRequest := TDeleteObjectsRequest.Create;
        deleteObjectsRequest.BucketName := BucketName;
        deleteObjectsRequest.Objects := keyVersionList;
        deleteObjectsRequest.KeepObjects := True;
        deleteObjectsRequest.Quiet := DeleteOptions.QuietMode;
        var deleteObjectsResponse := S3Client.DeleteObjects(deleteObjectsRequest);

//        if not deleteOptions.QuietMode then
//        begin
//           If quiet mode is not set, update the client with list of deleted objects.
//          InvokeS3DeleteBucketWithObjectsUpdateCallback(UpdateCallback,
//            TS3DeleteBucketWithObjectsUpdate.Create(deleteObjectsResponse.DeletedObjects));
//        end;
      except
        on DeleteObjectsException: EDeleteObjectsException do
        begin
          if DeleteOptions.ContinueOnError then
          begin
            // Continue the delete operation if an error was encountered.
            // Update the client with the list of objects that were deleted and the
            // list of objects on which the delete failed.
//            InvokeS3DeleteBucketWithObjectsUpdateCallback(UpdateCallback,
//              TS3DeleteBucketWithObjectsUpdate.Create(
//                DeleteObjectsException.Response.DeletedObjects,
//                DeleteObjectsException.Response.DeleteError);
          end
          else
            // Re-throw the exception if an error was encountered.
            raise;
        end;
      end;
    finally
      keyVersionList.Free;
    end;

    // Set the markers to get next set of objects from the bucket.
    listVersionsRequest.KeyMarker := listVersionsResponse.NextKeyMarker;
    listVersionsRequest.VersionIdMarker := listVersionsResponse.NextVersionIdMarker;
  until listVersionsResponse.IsTruncated;

  var maxRetries := 10;
  for var retries := 1 to maxRetries do
  begin
    try
      // Bucket is empty, delete the bucket.
      S3Client.DeleteBucket(BucketName);
      Break;
    except
      on E: EAmazonS3Exception do
        if (E.StatusCode <> 409) or (retries = maxRetries) then
          raise
        else
          TDefaultRetryPolicy.DoWaitBeforeRetry(retries, 5000);
    end;
  end;
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

class procedure TS3TestUtils.SetPublicBucketACLs(S3Client: IAmazonS3; const BucketName: string);
begin
  begin
    var request: IPutBucketOwnershipControlsRequest := TPutBucketOwnershipControlsRequest.Create;
    request.BucketName := BucketName;
    request.OwnershipControls := TOwnershipControls.Create;
    request.OwnershipControls.Rules := TObjectList<TOwnershipControlsRule>.Create;
    var Rule := TOwnershipControlsRule.Create;
    Rule.ObjectOwnership := TObjectOwnership.BucketOwnerPreferred;
    request.OwnershipControls.Rules.Add(Rule);
    S3Client.PutBucketOwnershipControls(request);
  end;

  begin
    var request: IPutPublicAccessBlockRequest := TPutPublicAccessBlockRequest.Create;
    request.BucketName := BucketName;
    request.PublicAccessBlockConfiguration := TPublicAccessBlockConfiguration.Create;
    request.PublicAccessBlockConfiguration.BlockPublicAcls := False;
    S3Client.PutPublicAccessBlock(request);
  end;
end;

class procedure TS3TestUtils.WaitForBucket(S3Client: IAmazonS3; const BucketName: string; MaxSeconds: Integer);
begin
  TUtilityMethods.WaitUntilSuccess<Boolean>(
    function: Boolean
    begin
      //Check if a bucket exists by trying to put an object in it
      var key := Copy(TGuid.NewGuid.ToString, 2, 36) + '_existskey';

      var Request: IPutObjectRequest := TPutObjectRequest.Create;
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

class procedure TS3TestUtils.WaitForObject(S3Client: IAmazonS3; const BucketName, Key: string; MaxSeconds: Integer);
begin
  var Sleeper: IListSleeper := TListSleeper.Create;
  TUtilityMethods.WaitUntilSuccess(
    procedure
    begin
      S3Client.GetObject(BucketName, Key)
    end, Sleeper, maxSeconds);
end;

class procedure TS3TestUtils.WaitForBucket(S3Client: IAmazonS3; const BucketName: string);
begin
  WaitForBucket(S3Client, BucketName, 30);
end;

{ TS3DeleteBucketWithObjectsOptions }

constructor TS3DeleteBucketWithObjectsOptions.Create(AContinueOnError, AQuietMode: Boolean);
begin
  FContinueOnError := AContinueOnError;
  FQuietMode := AQuietMode;
end;

end.
