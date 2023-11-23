unit AWS.Arn;

interface

uses
  System.SysUtils, System.Character,
  AWS.Runtime.Exceptions;

type
  TArn = record
  private
    FAccountId: string;
    FService: string;
    FRegion: string;
    FPartition: string;
    FResource: string;
    procedure SetAccountId(const Value: string);
  public
   /// <summary>
   /// Returns true if the string appears to be an ARN by seeing if the string starts with "arn:". This method
   /// doesn't guarantee the string is a valid ARN. To validate the string call TryParse.
   /// </summary>
   /// <param name="Arn"></param>
   /// <returns></returns>
   class function IsArn(const Arn: string): Boolean; static;

    /// <summary>
    /// Parses the string into an ARN object.
    /// </summary>
    /// <param name="ArnString">String to parse into an Arn.</param>
    /// <returns>The Arn object created from the passed in string.</returns>
   class function Parse(const ArnString: string): TArn; static;

    /// <summary>
    /// Parses the string into an ARN object.
    /// </summary>
    /// <param name="ArnString">String to parse into an ARN.</param>
    /// <param name="Arn">The out parameter for the ARN object created by TryParse.</param>
    /// <returns>True if the string was parsed into an ARN object.</returns>
   class function TryParse(const ArnString: string; var Arn: TArn): Boolean; static;

    /// <summary>
    /// Gets and sets the partition associated with the ARN (e.g.: 'aws').
    /// </summary>
    property Partition: string read FPartition write FPartition;

    /// <summary>
    /// Gets and sets the AWS service associated with the ARN (e.g.: 's3').
    /// </summary>
    property Service: string read FService write FService;

    /// <summary>
    /// Gets and sets the region associated with the ARN (e.g.: 'us-east-1').
    /// </summary>
    property Region: string read FRegion write FRegion;

    /// <summary>
    /// Gets and sets the account ID associated with the ARN.
    /// </summary>
    property AccountId: string read FAccountId write SetAccountId;

    /// <summary>
    /// Gets and sets the resource associated with the ARN (e.g.: 'mybucket/myobject').
    /// </summary>
    property Resource: string read FResource write FResource;
  end;

implementation

{ TArn }

class function TArn.IsArn(const Arn: string): Boolean;
begin
  Result := (Arn <> '') and Arn.StartsWith('arn:');
end;

class function TArn.Parse(const ArnString: string): TArn;
begin
  if ArnString = '' then
    raise EArgumentNilException.Create('ArnString');


  var malformedErrorMessage := 'ARN is in incorrect format. ARN format is: arn:<partition>:<service>:<region>:<account-id>:<resource>';

  var tokens := ArnString.Split([':'], 6);
  if Length(tokens) <> 6 then
    raise EArgumentException.Create(malformedErrorMessage);

  if tokens[0] <> 'arn' then
    raise EArgumentException.Create(malformedErrorMessage);

  var partition := tokens[1];
  if string.IsNullOrEmpty(partition) then
    raise EArgumentException.Create('Malformed ARN - no partition specified');

  var service := tokens[2];
  if string.IsNullOrEmpty(service) then
    raise EArgumentException.Create('Malformed ARN - no service specified');

  var region := tokens[3];
  var accountId := tokens[4];
  var resource := tokens[5];
  if string.IsNullOrEmpty(resource) then
    raise EArgumentException.Create('Malformed ARN - no resource specified');

  Result.Partition := partition;
  Result.Service := service;
  Result.Region := region;
  Result.AccountId := accountId;
  Result.Resource := resource;
end;

procedure TArn.SetAccountId(const Value: string);
begin
  if Value = '' then
    FAccountId := ''
  else
  begin
    if (Value <> '*') then
    begin
      for var C in Value do
        if not C.IsLetterOrDigit and (C <> '-') then
          raise EAmazonClientException.Create('AccountId is invalid. The AccountId should be ''*'' or must only contain alphanumeric characters and dashes.');
    end;
    FAccountId := Value;
  end;
end;

class function TArn.TryParse(const ArnString: string; var Arn: TArn): Boolean;
begin
  try
    if IsArn(ArnString) then
      Arn := Parse(ArnString);
    Exit(True);
  except
  end;
  Arn := Default(TArn);
  Result := False;
end;

end.
