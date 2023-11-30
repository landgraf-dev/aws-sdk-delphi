unit AWS.Rekognition.Model.StartStreamProcessorRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Model.StreamProcessingStartSelector, 
  AWS.Rekognition.Model.StreamProcessingStopSelector;

type
  TStartStreamProcessorRequest = class;
  
  IStartStreamProcessorRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStartSelector: TStreamProcessingStartSelector;
    procedure SetStartSelector(const Value: TStreamProcessingStartSelector);
    function GetKeepStartSelector: Boolean;
    procedure SetKeepStartSelector(const Value: Boolean);
    function GetStopSelector: TStreamProcessingStopSelector;
    procedure SetStopSelector(const Value: TStreamProcessingStopSelector);
    function GetKeepStopSelector: Boolean;
    procedure SetKeepStopSelector(const Value: Boolean);
    function Obj: TStartStreamProcessorRequest;
    function IsSetName: Boolean;
    function IsSetStartSelector: Boolean;
    function IsSetStopSelector: Boolean;
    property Name: string read GetName write SetName;
    property StartSelector: TStreamProcessingStartSelector read GetStartSelector write SetStartSelector;
    property KeepStartSelector: Boolean read GetKeepStartSelector write SetKeepStartSelector;
    property StopSelector: TStreamProcessingStopSelector read GetStopSelector write SetStopSelector;
    property KeepStopSelector: Boolean read GetKeepStopSelector write SetKeepStopSelector;
  end;
  
  TStartStreamProcessorRequest = class(TAmazonRekognitionRequest, IStartStreamProcessorRequest)
  strict private
    FName: Nullable<string>;
    FStartSelector: TStreamProcessingStartSelector;
    FKeepStartSelector: Boolean;
    FStopSelector: TStreamProcessingStopSelector;
    FKeepStopSelector: Boolean;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStartSelector: TStreamProcessingStartSelector;
    procedure SetStartSelector(const Value: TStreamProcessingStartSelector);
    function GetKeepStartSelector: Boolean;
    procedure SetKeepStartSelector(const Value: Boolean);
    function GetStopSelector: TStreamProcessingStopSelector;
    procedure SetStopSelector(const Value: TStreamProcessingStopSelector);
    function GetKeepStopSelector: Boolean;
    procedure SetKeepStopSelector(const Value: Boolean);
  strict protected
    function Obj: TStartStreamProcessorRequest;
  public
    destructor Destroy; override;
    function IsSetName: Boolean;
    function IsSetStartSelector: Boolean;
    function IsSetStopSelector: Boolean;
    property Name: string read GetName write SetName;
    property StartSelector: TStreamProcessingStartSelector read GetStartSelector write SetStartSelector;
    property KeepStartSelector: Boolean read GetKeepStartSelector write SetKeepStartSelector;
    property StopSelector: TStreamProcessingStopSelector read GetStopSelector write SetStopSelector;
    property KeepStopSelector: Boolean read GetKeepStopSelector write SetKeepStopSelector;
  end;
  
implementation

{ TStartStreamProcessorRequest }

destructor TStartStreamProcessorRequest.Destroy;
begin
  StopSelector := nil;
  StartSelector := nil;
  inherited;
end;

function TStartStreamProcessorRequest.Obj: TStartStreamProcessorRequest;
begin
  Result := Self;
end;

function TStartStreamProcessorRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TStartStreamProcessorRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TStartStreamProcessorRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TStartStreamProcessorRequest.GetStartSelector: TStreamProcessingStartSelector;
begin
  Result := FStartSelector;
end;

procedure TStartStreamProcessorRequest.SetStartSelector(const Value: TStreamProcessingStartSelector);
begin
  if FStartSelector <> Value then
  begin
    if not KeepStartSelector then
      FStartSelector.Free;
    FStartSelector := Value;
  end;
end;

function TStartStreamProcessorRequest.GetKeepStartSelector: Boolean;
begin
  Result := FKeepStartSelector;
end;

procedure TStartStreamProcessorRequest.SetKeepStartSelector(const Value: Boolean);
begin
  FKeepStartSelector := Value;
end;

function TStartStreamProcessorRequest.IsSetStartSelector: Boolean;
begin
  Result := FStartSelector <> nil;
end;

function TStartStreamProcessorRequest.GetStopSelector: TStreamProcessingStopSelector;
begin
  Result := FStopSelector;
end;

procedure TStartStreamProcessorRequest.SetStopSelector(const Value: TStreamProcessingStopSelector);
begin
  if FStopSelector <> Value then
  begin
    if not KeepStopSelector then
      FStopSelector.Free;
    FStopSelector := Value;
  end;
end;

function TStartStreamProcessorRequest.GetKeepStopSelector: Boolean;
begin
  Result := FKeepStopSelector;
end;

procedure TStartStreamProcessorRequest.SetKeepStopSelector(const Value: Boolean);
begin
  FKeepStopSelector := Value;
end;

function TStartStreamProcessorRequest.IsSetStopSelector: Boolean;
begin
  Result := FStopSelector <> nil;
end;

end.
