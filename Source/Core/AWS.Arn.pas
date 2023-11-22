unit AWS.Arn;

interface

uses
  System.SysUtils, System.Character,
  AWS.Runtime.Exceptions;

type
  TArn = class
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
   /// <param name="arn"></param>
   /// <returns></returns>
   class function IsArn(const Arn: string): Boolean;

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

end.
