unit AWS.SESv2.Model.PutAccountSuppressionAttributesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request;

type
  TPutAccountSuppressionAttributesRequest = class;
  
  IPutAccountSuppressionAttributesRequest = interface
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
    function Obj: TPutAccountSuppressionAttributesRequest;
    function IsSetSuppressedReasons: Boolean;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
  TPutAccountSuppressionAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutAccountSuppressionAttributesRequest)
  strict private
    FSuppressedReasons: TList<string>;
    FKeepSuppressedReasons: Boolean;
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
  strict protected
    function Obj: TPutAccountSuppressionAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetSuppressedReasons: Boolean;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
implementation

{ TPutAccountSuppressionAttributesRequest }

constructor TPutAccountSuppressionAttributesRequest.Create;
begin
  inherited;
  FSuppressedReasons := TList<string>.Create;
end;

destructor TPutAccountSuppressionAttributesRequest.Destroy;
begin
  SuppressedReasons := nil;
  inherited;
end;

function TPutAccountSuppressionAttributesRequest.Obj: TPutAccountSuppressionAttributesRequest;
begin
  Result := Self;
end;

function TPutAccountSuppressionAttributesRequest.GetSuppressedReasons: TList<string>;
begin
  Result := FSuppressedReasons;
end;

procedure TPutAccountSuppressionAttributesRequest.SetSuppressedReasons(const Value: TList<string>);
begin
  if FSuppressedReasons <> Value then
  begin
    if not KeepSuppressedReasons then
      FSuppressedReasons.Free;
    FSuppressedReasons := Value;
  end;
end;

function TPutAccountSuppressionAttributesRequest.GetKeepSuppressedReasons: Boolean;
begin
  Result := FKeepSuppressedReasons;
end;

procedure TPutAccountSuppressionAttributesRequest.SetKeepSuppressedReasons(const Value: Boolean);
begin
  FKeepSuppressedReasons := Value;
end;

function TPutAccountSuppressionAttributesRequest.IsSetSuppressedReasons: Boolean;
begin
  Result := (FSuppressedReasons <> nil) and (FSuppressedReasons.Count > 0);
end;

end.
