unit AWS.SSM.Model.FailedCreateAssociation;

interface

uses
  AWS.SSM.Model.CreateAssociationBatchRequestEntry, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TFailedCreateAssociation = class;
  
  IFailedCreateAssociation = interface
    function GetEntry: TCreateAssociationBatchRequestEntry;
    procedure SetEntry(const Value: TCreateAssociationBatchRequestEntry);
    function GetKeepEntry: Boolean;
    procedure SetKeepEntry(const Value: Boolean);
    function GetFault: TFault;
    procedure SetFault(const Value: TFault);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function Obj: TFailedCreateAssociation;
    function IsSetEntry: Boolean;
    function IsSetFault: Boolean;
    function IsSetMessage: Boolean;
    property Entry: TCreateAssociationBatchRequestEntry read GetEntry write SetEntry;
    property KeepEntry: Boolean read GetKeepEntry write SetKeepEntry;
    property Fault: TFault read GetFault write SetFault;
    property Message: string read GetMessage write SetMessage;
  end;
  
  TFailedCreateAssociation = class
  strict private
    FEntry: TCreateAssociationBatchRequestEntry;
    FKeepEntry: Boolean;
    FFault: Nullable<TFault>;
    FMessage: Nullable<string>;
    function GetEntry: TCreateAssociationBatchRequestEntry;
    procedure SetEntry(const Value: TCreateAssociationBatchRequestEntry);
    function GetKeepEntry: Boolean;
    procedure SetKeepEntry(const Value: Boolean);
    function GetFault: TFault;
    procedure SetFault(const Value: TFault);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  strict protected
    function Obj: TFailedCreateAssociation;
  public
    destructor Destroy; override;
    function IsSetEntry: Boolean;
    function IsSetFault: Boolean;
    function IsSetMessage: Boolean;
    property Entry: TCreateAssociationBatchRequestEntry read GetEntry write SetEntry;
    property KeepEntry: Boolean read GetKeepEntry write SetKeepEntry;
    property Fault: TFault read GetFault write SetFault;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ TFailedCreateAssociation }

destructor TFailedCreateAssociation.Destroy;
begin
  Entry := nil;
  inherited;
end;

function TFailedCreateAssociation.Obj: TFailedCreateAssociation;
begin
  Result := Self;
end;

function TFailedCreateAssociation.GetEntry: TCreateAssociationBatchRequestEntry;
begin
  Result := FEntry;
end;

procedure TFailedCreateAssociation.SetEntry(const Value: TCreateAssociationBatchRequestEntry);
begin
  if FEntry <> Value then
  begin
    if not KeepEntry then
      FEntry.Free;
    FEntry := Value;
  end;
end;

function TFailedCreateAssociation.GetKeepEntry: Boolean;
begin
  Result := FKeepEntry;
end;

procedure TFailedCreateAssociation.SetKeepEntry(const Value: Boolean);
begin
  FKeepEntry := Value;
end;

function TFailedCreateAssociation.IsSetEntry: Boolean;
begin
  Result := FEntry <> nil;
end;

function TFailedCreateAssociation.GetFault: TFault;
begin
  Result := FFault.ValueOrDefault;
end;

procedure TFailedCreateAssociation.SetFault(const Value: TFault);
begin
  FFault := Value;
end;

function TFailedCreateAssociation.IsSetFault: Boolean;
begin
  Result := FFault.HasValue;
end;

function TFailedCreateAssociation.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TFailedCreateAssociation.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TFailedCreateAssociation.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
