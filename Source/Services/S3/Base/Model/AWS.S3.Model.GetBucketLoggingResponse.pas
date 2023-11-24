unit AWS.S3.Model.GetBucketLoggingResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.LoggingEnabled;

type
  TGetBucketLoggingResponse = class;
  
  IGetBucketLoggingResponse = interface(IAmazonWebServiceResponse)
    function GetLoggingEnabled: TLoggingEnabled;
    procedure SetLoggingEnabled(const Value: TLoggingEnabled);
    function GetKeepLoggingEnabled: Boolean;
    procedure SetKeepLoggingEnabled(const Value: Boolean);
    function Obj: TGetBucketLoggingResponse;
    function IsSetLoggingEnabled: Boolean;
    property LoggingEnabled: TLoggingEnabled read GetLoggingEnabled write SetLoggingEnabled;
    property KeepLoggingEnabled: Boolean read GetKeepLoggingEnabled write SetKeepLoggingEnabled;
  end;
  
  TGetBucketLoggingResponse = class(TAmazonWebServiceResponse, IGetBucketLoggingResponse)
  strict private
    FLoggingEnabled: TLoggingEnabled;
    FKeepLoggingEnabled: Boolean;
    function GetLoggingEnabled: TLoggingEnabled;
    procedure SetLoggingEnabled(const Value: TLoggingEnabled);
    function GetKeepLoggingEnabled: Boolean;
    procedure SetKeepLoggingEnabled(const Value: Boolean);
  strict protected
    function Obj: TGetBucketLoggingResponse;
  public
    destructor Destroy; override;
    function IsSetLoggingEnabled: Boolean;
    property LoggingEnabled: TLoggingEnabled read GetLoggingEnabled write SetLoggingEnabled;
    property KeepLoggingEnabled: Boolean read GetKeepLoggingEnabled write SetKeepLoggingEnabled;
  end;
  
implementation

{ TGetBucketLoggingResponse }

destructor TGetBucketLoggingResponse.Destroy;
begin
  LoggingEnabled := nil;
  inherited;
end;

function TGetBucketLoggingResponse.Obj: TGetBucketLoggingResponse;
begin
  Result := Self;
end;

function TGetBucketLoggingResponse.GetLoggingEnabled: TLoggingEnabled;
begin
  Result := FLoggingEnabled;
end;

procedure TGetBucketLoggingResponse.SetLoggingEnabled(const Value: TLoggingEnabled);
begin
  if FLoggingEnabled <> Value then
  begin
    if not KeepLoggingEnabled then
      FLoggingEnabled.Free;
    FLoggingEnabled := Value;
  end;
end;

function TGetBucketLoggingResponse.GetKeepLoggingEnabled: Boolean;
begin
  Result := FKeepLoggingEnabled;
end;

procedure TGetBucketLoggingResponse.SetKeepLoggingEnabled(const Value: Boolean);
begin
  FKeepLoggingEnabled := Value;
end;

function TGetBucketLoggingResponse.IsSetLoggingEnabled: Boolean;
begin
  Result := FLoggingEnabled <> nil;
end;

end.
