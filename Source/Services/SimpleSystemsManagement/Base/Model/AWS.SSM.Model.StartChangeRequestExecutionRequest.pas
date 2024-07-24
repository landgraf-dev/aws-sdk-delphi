unit AWS.SSM.Model.StartChangeRequestExecutionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.Runbook, 
  AWS.SSM.Model.Tag;

type
  TStartChangeRequestExecutionRequest = class;
  
  IStartChangeRequestExecutionRequest = interface
    function GetAutoApprove: Boolean;
    procedure SetAutoApprove(const Value: Boolean);
    function GetChangeDetails: string;
    procedure SetChangeDetails(const Value: string);
    function GetChangeRequestName: string;
    procedure SetChangeRequestName(const Value: string);
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetRunbooks: TObjectList<TRunbook>;
    procedure SetRunbooks(const Value: TObjectList<TRunbook>);
    function GetKeepRunbooks: Boolean;
    procedure SetKeepRunbooks(const Value: Boolean);
    function GetScheduledEndTime: TDateTime;
    procedure SetScheduledEndTime(const Value: TDateTime);
    function GetScheduledTime: TDateTime;
    procedure SetScheduledTime(const Value: TDateTime);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TStartChangeRequestExecutionRequest;
    function IsSetAutoApprove: Boolean;
    function IsSetChangeDetails: Boolean;
    function IsSetChangeRequestName: Boolean;
    function IsSetClientToken: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetParameters: Boolean;
    function IsSetRunbooks: Boolean;
    function IsSetScheduledEndTime: Boolean;
    function IsSetScheduledTime: Boolean;
    function IsSetTags: Boolean;
    property AutoApprove: Boolean read GetAutoApprove write SetAutoApprove;
    property ChangeDetails: string read GetChangeDetails write SetChangeDetails;
    property ChangeRequestName: string read GetChangeRequestName write SetChangeRequestName;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property Runbooks: TObjectList<TRunbook> read GetRunbooks write SetRunbooks;
    property KeepRunbooks: Boolean read GetKeepRunbooks write SetKeepRunbooks;
    property ScheduledEndTime: TDateTime read GetScheduledEndTime write SetScheduledEndTime;
    property ScheduledTime: TDateTime read GetScheduledTime write SetScheduledTime;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TStartChangeRequestExecutionRequest = class(TAmazonSimpleSystemsManagementRequest, IStartChangeRequestExecutionRequest)
  strict private
    FAutoApprove: Nullable<Boolean>;
    FChangeDetails: Nullable<string>;
    FChangeRequestName: Nullable<string>;
    FClientToken: Nullable<string>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FRunbooks: TObjectList<TRunbook>;
    FKeepRunbooks: Boolean;
    FScheduledEndTime: Nullable<TDateTime>;
    FScheduledTime: Nullable<TDateTime>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetAutoApprove: Boolean;
    procedure SetAutoApprove(const Value: Boolean);
    function GetChangeDetails: string;
    procedure SetChangeDetails(const Value: string);
    function GetChangeRequestName: string;
    procedure SetChangeRequestName(const Value: string);
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetRunbooks: TObjectList<TRunbook>;
    procedure SetRunbooks(const Value: TObjectList<TRunbook>);
    function GetKeepRunbooks: Boolean;
    procedure SetKeepRunbooks(const Value: Boolean);
    function GetScheduledEndTime: TDateTime;
    procedure SetScheduledEndTime(const Value: TDateTime);
    function GetScheduledTime: TDateTime;
    procedure SetScheduledTime(const Value: TDateTime);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TStartChangeRequestExecutionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAutoApprove: Boolean;
    function IsSetChangeDetails: Boolean;
    function IsSetChangeRequestName: Boolean;
    function IsSetClientToken: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetParameters: Boolean;
    function IsSetRunbooks: Boolean;
    function IsSetScheduledEndTime: Boolean;
    function IsSetScheduledTime: Boolean;
    function IsSetTags: Boolean;
    property AutoApprove: Boolean read GetAutoApprove write SetAutoApprove;
    property ChangeDetails: string read GetChangeDetails write SetChangeDetails;
    property ChangeRequestName: string read GetChangeRequestName write SetChangeRequestName;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property Runbooks: TObjectList<TRunbook> read GetRunbooks write SetRunbooks;
    property KeepRunbooks: Boolean read GetKeepRunbooks write SetKeepRunbooks;
    property ScheduledEndTime: TDateTime read GetScheduledEndTime write SetScheduledEndTime;
    property ScheduledTime: TDateTime read GetScheduledTime write SetScheduledTime;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TStartChangeRequestExecutionRequest }

constructor TStartChangeRequestExecutionRequest.Create;
begin
  inherited;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FRunbooks := TObjectList<TRunbook>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TStartChangeRequestExecutionRequest.Destroy;
begin
  Tags := nil;
  Runbooks := nil;
  Parameters := nil;
  inherited;
end;

function TStartChangeRequestExecutionRequest.Obj: TStartChangeRequestExecutionRequest;
begin
  Result := Self;
end;

function TStartChangeRequestExecutionRequest.GetAutoApprove: Boolean;
begin
  Result := FAutoApprove.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetAutoApprove(const Value: Boolean);
begin
  FAutoApprove := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetAutoApprove: Boolean;
begin
  Result := FAutoApprove.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetChangeDetails: string;
begin
  Result := FChangeDetails.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetChangeDetails(const Value: string);
begin
  FChangeDetails := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetChangeDetails: Boolean;
begin
  Result := FChangeDetails.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetChangeRequestName: string;
begin
  Result := FChangeRequestName.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetChangeRequestName(const Value: string);
begin
  FChangeRequestName := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetChangeRequestName: Boolean;
begin
  Result := FChangeRequestName.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TStartChangeRequestExecutionRequest.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TStartChangeRequestExecutionRequest.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TStartChangeRequestExecutionRequest.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TStartChangeRequestExecutionRequest.GetRunbooks: TObjectList<TRunbook>;
begin
  Result := FRunbooks;
end;

procedure TStartChangeRequestExecutionRequest.SetRunbooks(const Value: TObjectList<TRunbook>);
begin
  if FRunbooks <> Value then
  begin
    if not KeepRunbooks then
      FRunbooks.Free;
    FRunbooks := Value;
  end;
end;

function TStartChangeRequestExecutionRequest.GetKeepRunbooks: Boolean;
begin
  Result := FKeepRunbooks;
end;

procedure TStartChangeRequestExecutionRequest.SetKeepRunbooks(const Value: Boolean);
begin
  FKeepRunbooks := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetRunbooks: Boolean;
begin
  Result := (FRunbooks <> nil) and (FRunbooks.Count > 0);
end;

function TStartChangeRequestExecutionRequest.GetScheduledEndTime: TDateTime;
begin
  Result := FScheduledEndTime.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetScheduledEndTime(const Value: TDateTime);
begin
  FScheduledEndTime := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetScheduledEndTime: Boolean;
begin
  Result := FScheduledEndTime.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetScheduledTime: TDateTime;
begin
  Result := FScheduledTime.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionRequest.SetScheduledTime(const Value: TDateTime);
begin
  FScheduledTime := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetScheduledTime: Boolean;
begin
  Result := FScheduledTime.HasValue;
end;

function TStartChangeRequestExecutionRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TStartChangeRequestExecutionRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TStartChangeRequestExecutionRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TStartChangeRequestExecutionRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TStartChangeRequestExecutionRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
