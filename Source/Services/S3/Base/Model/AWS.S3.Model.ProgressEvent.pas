unit AWS.S3.Model.ProgressEvent;

interface

uses
  AWS.S3.Model.Progress;

type
  TProgressEvent = class;
  
  IProgressEvent = interface
    function GetDetails: TProgress;
    procedure SetDetails(const Value: TProgress);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function Obj: TProgressEvent;
    function IsSetDetails: Boolean;
    property Details: TProgress read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
  end;
  
  TProgressEvent = class
  strict private
    FDetails: TProgress;
    FKeepDetails: Boolean;
    function GetDetails: TProgress;
    procedure SetDetails(const Value: TProgress);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
  strict protected
    function Obj: TProgressEvent;
  public
    destructor Destroy; override;
    function IsSetDetails: Boolean;
    property Details: TProgress read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
  end;
  
implementation

{ TProgressEvent }

destructor TProgressEvent.Destroy;
begin
  Details := nil;
  inherited;
end;

function TProgressEvent.Obj: TProgressEvent;
begin
  Result := Self;
end;

function TProgressEvent.GetDetails: TProgress;
begin
  Result := FDetails;
end;

procedure TProgressEvent.SetDetails(const Value: TProgress);
begin
  if FDetails <> Value then
  begin
    if not KeepDetails then
      FDetails.Free;
    FDetails := Value;
  end;
end;

function TProgressEvent.GetKeepDetails: Boolean;
begin
  Result := FKeepDetails;
end;

procedure TProgressEvent.SetKeepDetails(const Value: Boolean);
begin
  FKeepDetails := Value;
end;

function TProgressEvent.IsSetDetails: Boolean;
begin
  Result := FDetails <> nil;
end;

end.
