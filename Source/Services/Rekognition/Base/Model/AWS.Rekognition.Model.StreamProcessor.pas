unit AWS.Rekognition.Model.StreamProcessor;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Enums;

type
  TStreamProcessor = class;
  
  IStreamProcessor = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TStreamProcessorStatus;
    procedure SetStatus(const Value: TStreamProcessorStatus);
    function Obj: TStreamProcessor;
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property Name: string read GetName write SetName;
    property Status: TStreamProcessorStatus read GetStatus write SetStatus;
  end;
  
  TStreamProcessor = class
  strict private
    FName: Nullable<string>;
    FStatus: Nullable<TStreamProcessorStatus>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TStreamProcessorStatus;
    procedure SetStatus(const Value: TStreamProcessorStatus);
  strict protected
    function Obj: TStreamProcessor;
  public
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property Name: string read GetName write SetName;
    property Status: TStreamProcessorStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TStreamProcessor }

function TStreamProcessor.Obj: TStreamProcessor;
begin
  Result := Self;
end;

function TStreamProcessor.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TStreamProcessor.SetName(const Value: string);
begin
  FName := Value;
end;

function TStreamProcessor.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TStreamProcessor.GetStatus: TStreamProcessorStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TStreamProcessor.SetStatus(const Value: TStreamProcessorStatus);
begin
  FStatus := Value;
end;

function TStreamProcessor.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
