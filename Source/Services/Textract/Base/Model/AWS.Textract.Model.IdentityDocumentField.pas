unit AWS.Textract.Model.IdentityDocumentField;

interface

uses
  AWS.Textract.Model.AnalyzeIDDetections;

type
  TIdentityDocumentField = class;
  
  IIdentityDocumentField = interface
    function GetType: TAnalyzeIDDetections;
    procedure SetType(const Value: TAnalyzeIDDetections);
    function GetKeepType: Boolean;
    procedure SetKeepType(const Value: Boolean);
    function GetValueDetection: TAnalyzeIDDetections;
    procedure SetValueDetection(const Value: TAnalyzeIDDetections);
    function GetKeepValueDetection: Boolean;
    procedure SetKeepValueDetection(const Value: Boolean);
    function Obj: TIdentityDocumentField;
    function IsSetType: Boolean;
    function IsSetValueDetection: Boolean;
    property &Type: TAnalyzeIDDetections read GetType write SetType;
    property KeepType: Boolean read GetKeepType write SetKeepType;
    property ValueDetection: TAnalyzeIDDetections read GetValueDetection write SetValueDetection;
    property KeepValueDetection: Boolean read GetKeepValueDetection write SetKeepValueDetection;
  end;
  
  TIdentityDocumentField = class
  strict private
    FType: TAnalyzeIDDetections;
    FKeepType: Boolean;
    FValueDetection: TAnalyzeIDDetections;
    FKeepValueDetection: Boolean;
    function GetType: TAnalyzeIDDetections;
    procedure SetType(const Value: TAnalyzeIDDetections);
    function GetKeepType: Boolean;
    procedure SetKeepType(const Value: Boolean);
    function GetValueDetection: TAnalyzeIDDetections;
    procedure SetValueDetection(const Value: TAnalyzeIDDetections);
    function GetKeepValueDetection: Boolean;
    procedure SetKeepValueDetection(const Value: Boolean);
  strict protected
    function Obj: TIdentityDocumentField;
  public
    destructor Destroy; override;
    function IsSetType: Boolean;
    function IsSetValueDetection: Boolean;
    property &Type: TAnalyzeIDDetections read GetType write SetType;
    property KeepType: Boolean read GetKeepType write SetKeepType;
    property ValueDetection: TAnalyzeIDDetections read GetValueDetection write SetValueDetection;
    property KeepValueDetection: Boolean read GetKeepValueDetection write SetKeepValueDetection;
  end;
  
implementation

{ TIdentityDocumentField }

destructor TIdentityDocumentField.Destroy;
begin
  ValueDetection := nil;
  &Type := nil;
  inherited;
end;

function TIdentityDocumentField.Obj: TIdentityDocumentField;
begin
  Result := Self;
end;

function TIdentityDocumentField.GetType: TAnalyzeIDDetections;
begin
  Result := FType;
end;

procedure TIdentityDocumentField.SetType(const Value: TAnalyzeIDDetections);
begin
  if FType <> Value then
  begin
    if not KeepType then
      FType.Free;
    FType := Value;
  end;
end;

function TIdentityDocumentField.GetKeepType: Boolean;
begin
  Result := FKeepType;
end;

procedure TIdentityDocumentField.SetKeepType(const Value: Boolean);
begin
  FKeepType := Value;
end;

function TIdentityDocumentField.IsSetType: Boolean;
begin
  Result := FType <> nil;
end;

function TIdentityDocumentField.GetValueDetection: TAnalyzeIDDetections;
begin
  Result := FValueDetection;
end;

procedure TIdentityDocumentField.SetValueDetection(const Value: TAnalyzeIDDetections);
begin
  if FValueDetection <> Value then
  begin
    if not KeepValueDetection then
      FValueDetection.Free;
    FValueDetection := Value;
  end;
end;

function TIdentityDocumentField.GetKeepValueDetection: Boolean;
begin
  Result := FKeepValueDetection;
end;

procedure TIdentityDocumentField.SetKeepValueDetection(const Value: Boolean);
begin
  FKeepValueDetection := Value;
end;

function TIdentityDocumentField.IsSetValueDetection: Boolean;
begin
  Result := FValueDetection <> nil;
end;

end.
