unit AWS.S3.S3OutpostResource;

interface

uses
  System.SysUtils, System.Character,
  AWS.Arn,
  AWS.Runtime.Exceptions;

type
  TS3OutpostResource = record
  strict private
    FArn: TArn;
    FOutpostId: string;
  private
    FAccessPointName: string;
    FKey: string;
    procedure SetOutpostId(const Value: string);
  public
    constructor Create(const AArn: TArn);
    function FullAccessPointName: string;
    property OutpostId: string read FOutpostId write SetOutpostId;
    property AccessPointName: string read FAccessPointName write FAccessPointName;
    property Key: string read FKey write FKey;
  end;

implementation

{ TS3OutpostResource }

constructor TS3OutpostResource.Create(const AArn: TArn);
begin
  FArn := AArn;
end;

function TS3OutpostResource.FullAccessPointName: string;
begin
  Result := Format('arn:%s:%s:%s:%s:outpost:%s:accesspoint:%s',
    [FArn.Partition, FArn.Service, FArn.Region, FArn.AccountId, OutpostId, AccessPointName]);
end;

procedure TS3OutpostResource.SetOutpostId(const Value: string);
begin
  if Value = '' then
    FOutpostId := ''
  else
  begin
    if (Value.Length > 63) or (Value.Length < 1) then ;
      raise EAmazonClientException.CreateFmt('Invalid outpost ID: %s. ID must contain only alphanumeric characters and dashes', [Value]);
    for var C in Value do
      if not C.IsLetterOrDigit and (C <> '-') then
        raise EAmazonClientException.CreateFmt('Invalid outpost ID: %s. ID must contain only alphanumeric characters and dashes', [Value]);

    FOutpostId := Value;
  end;
end;

end.
