unit AWS.S3.Model.SelectObjectContentResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.SelectObjectContentEventStream;

type
  TSelectObjectContentResponse = class;
  
  ISelectObjectContentResponse = interface(IAmazonWebServiceResponse)
    function GetPayload: TSelectObjectContentEventStream;
    procedure SetPayload(const Value: TSelectObjectContentEventStream);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
    function Obj: TSelectObjectContentResponse;
    function IsSetPayload: Boolean;
    property Payload: TSelectObjectContentEventStream read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
  end;
  
  TSelectObjectContentResponse = class(TAmazonWebServiceResponse, ISelectObjectContentResponse)
  strict private
    FPayload: TSelectObjectContentEventStream;
    FKeepPayload: Boolean;
    function GetPayload: TSelectObjectContentEventStream;
    procedure SetPayload(const Value: TSelectObjectContentEventStream);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
  strict protected
    function Obj: TSelectObjectContentResponse;
  public
    destructor Destroy; override;
    function IsSetPayload: Boolean;
    property Payload: TSelectObjectContentEventStream read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
  end;
  
implementation

{ TSelectObjectContentResponse }

destructor TSelectObjectContentResponse.Destroy;
begin
  Payload := nil;
  inherited;
end;

function TSelectObjectContentResponse.Obj: TSelectObjectContentResponse;
begin
  Result := Self;
end;

function TSelectObjectContentResponse.GetPayload: TSelectObjectContentEventStream;
begin
  Result := FPayload;
end;

procedure TSelectObjectContentResponse.SetPayload(const Value: TSelectObjectContentEventStream);
begin
  if FPayload <> Value then
  begin
    if not KeepPayload then
      FPayload.Free;
    FPayload := Value;
  end;
end;

function TSelectObjectContentResponse.GetKeepPayload: Boolean;
begin
  Result := FKeepPayload;
end;

procedure TSelectObjectContentResponse.SetKeepPayload(const Value: Boolean);
begin
  FKeepPayload := Value;
end;

function TSelectObjectContentResponse.IsSetPayload: Boolean;
begin
  Result := FPayload <> nil;
end;

end.
