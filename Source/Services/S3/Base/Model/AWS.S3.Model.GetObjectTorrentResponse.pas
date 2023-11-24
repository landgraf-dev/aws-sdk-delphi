unit AWS.S3.Model.GetObjectTorrentResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  System.Classes, 
  AWS.S3.Enums;

type
  TGetObjectTorrentResponse = class;
  
  IGetObjectTorrentResponse = interface(IAmazonWebServiceResponse)
    function GetBody: TBytesStream;
    procedure SetBody(const Value: TBytesStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function Obj: TGetObjectTorrentResponse;
    function IsSetBody: Boolean;
    function IsSetRequestCharged: Boolean;
    property Body: TBytesStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
  TGetObjectTorrentResponse = class(TAmazonWebServiceResponse, IGetObjectTorrentResponse)
  strict private
    FBody: TBytesStream;
    FKeepBody: Boolean;
    FRequestCharged: Nullable<TRequestCharged>;
    function GetBody: TBytesStream;
    procedure SetBody(const Value: TBytesStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
  strict protected
    function Obj: TGetObjectTorrentResponse;
  public
    destructor Destroy; override;
    function IsSetBody: Boolean;
    function IsSetRequestCharged: Boolean;
    property Body: TBytesStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
implementation

{ TGetObjectTorrentResponse }

destructor TGetObjectTorrentResponse.Destroy;
begin
  Body := nil;
  inherited;
end;

function TGetObjectTorrentResponse.Obj: TGetObjectTorrentResponse;
begin
  Result := Self;
end;

function TGetObjectTorrentResponse.GetBody: TBytesStream;
begin
  Result := FBody;
end;

procedure TGetObjectTorrentResponse.SetBody(const Value: TBytesStream);
begin
  if FBody <> Value then
  begin
    if not KeepBody then
      FBody.Free;
    FBody := Value;
  end;
end;

function TGetObjectTorrentResponse.GetKeepBody: Boolean;
begin
  Result := FKeepBody;
end;

procedure TGetObjectTorrentResponse.SetKeepBody(const Value: Boolean);
begin
  FKeepBody := Value;
end;

function TGetObjectTorrentResponse.IsSetBody: Boolean;
begin
  Result := FBody <> nil;
end;

function TGetObjectTorrentResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TGetObjectTorrentResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TGetObjectTorrentResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

end.
