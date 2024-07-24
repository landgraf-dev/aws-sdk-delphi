unit AWS.SSM.Model.CreateAssociationBatchRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.CreateAssociationBatchRequestEntry;

type
  TCreateAssociationBatchRequest = class;
  
  ICreateAssociationBatchRequest = interface
    function GetEntries: TObjectList<TCreateAssociationBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TCreateAssociationBatchRequestEntry>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
    function Obj: TCreateAssociationBatchRequest;
    function IsSetEntries: Boolean;
    property Entries: TObjectList<TCreateAssociationBatchRequestEntry> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
  end;
  
  TCreateAssociationBatchRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateAssociationBatchRequest)
  strict private
    FEntries: TObjectList<TCreateAssociationBatchRequestEntry>;
    FKeepEntries: Boolean;
    function GetEntries: TObjectList<TCreateAssociationBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TCreateAssociationBatchRequestEntry>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
  strict protected
    function Obj: TCreateAssociationBatchRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AEntries: TObjectList<TCreateAssociationBatchRequestEntry>); overload;
    function IsSetEntries: Boolean;
    property Entries: TObjectList<TCreateAssociationBatchRequestEntry> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
  end;
  
implementation

{ TCreateAssociationBatchRequest }

constructor TCreateAssociationBatchRequest.Create;
begin
  inherited;
  FEntries := TObjectList<TCreateAssociationBatchRequestEntry>.Create;
end;

destructor TCreateAssociationBatchRequest.Destroy;
begin
  Entries := nil;
  inherited;
end;

function TCreateAssociationBatchRequest.Obj: TCreateAssociationBatchRequest;
begin
  Result := Self;
end;

constructor TCreateAssociationBatchRequest.Create(const AEntries: TObjectList<TCreateAssociationBatchRequestEntry>);
begin
  Create;
  Entries := AEntries;
end;

function TCreateAssociationBatchRequest.GetEntries: TObjectList<TCreateAssociationBatchRequestEntry>;
begin
  Result := FEntries;
end;

procedure TCreateAssociationBatchRequest.SetEntries(const Value: TObjectList<TCreateAssociationBatchRequestEntry>);
begin
  if FEntries <> Value then
  begin
    if not KeepEntries then
      FEntries.Free;
    FEntries := Value;
  end;
end;

function TCreateAssociationBatchRequest.GetKeepEntries: Boolean;
begin
  Result := FKeepEntries;
end;

procedure TCreateAssociationBatchRequest.SetKeepEntries(const Value: Boolean);
begin
  FKeepEntries := Value;
end;

function TCreateAssociationBatchRequest.IsSetEntries: Boolean;
begin
  Result := (FEntries <> nil) and (FEntries.Count > 0);
end;

end.
