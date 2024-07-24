unit AWS.SSM.Model.CreateAssociationBatchResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.FailedCreateAssociation, 
  AWS.SSM.Model.AssociationDescription;

type
  TCreateAssociationBatchResponse = class;
  
  ICreateAssociationBatchResponse = interface(IAmazonWebServiceResponse)
    function GetFailed: TObjectList<TFailedCreateAssociation>;
    procedure SetFailed(const Value: TObjectList<TFailedCreateAssociation>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TAssociationDescription>;
    procedure SetSuccessful(const Value: TObjectList<TAssociationDescription>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
    function Obj: TCreateAssociationBatchResponse;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TFailedCreateAssociation> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TAssociationDescription> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
  TCreateAssociationBatchResponse = class(TAmazonWebServiceResponse, ICreateAssociationBatchResponse)
  strict private
    FFailed: TObjectList<TFailedCreateAssociation>;
    FKeepFailed: Boolean;
    FSuccessful: TObjectList<TAssociationDescription>;
    FKeepSuccessful: Boolean;
    function GetFailed: TObjectList<TFailedCreateAssociation>;
    procedure SetFailed(const Value: TObjectList<TFailedCreateAssociation>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TAssociationDescription>;
    procedure SetSuccessful(const Value: TObjectList<TAssociationDescription>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
  strict protected
    function Obj: TCreateAssociationBatchResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TFailedCreateAssociation> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TAssociationDescription> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
implementation

{ TCreateAssociationBatchResponse }

constructor TCreateAssociationBatchResponse.Create;
begin
  inherited;
  FFailed := TObjectList<TFailedCreateAssociation>.Create;
  FSuccessful := TObjectList<TAssociationDescription>.Create;
end;

destructor TCreateAssociationBatchResponse.Destroy;
begin
  Successful := nil;
  Failed := nil;
  inherited;
end;

function TCreateAssociationBatchResponse.Obj: TCreateAssociationBatchResponse;
begin
  Result := Self;
end;

function TCreateAssociationBatchResponse.GetFailed: TObjectList<TFailedCreateAssociation>;
begin
  Result := FFailed;
end;

procedure TCreateAssociationBatchResponse.SetFailed(const Value: TObjectList<TFailedCreateAssociation>);
begin
  if FFailed <> Value then
  begin
    if not KeepFailed then
      FFailed.Free;
    FFailed := Value;
  end;
end;

function TCreateAssociationBatchResponse.GetKeepFailed: Boolean;
begin
  Result := FKeepFailed;
end;

procedure TCreateAssociationBatchResponse.SetKeepFailed(const Value: Boolean);
begin
  FKeepFailed := Value;
end;

function TCreateAssociationBatchResponse.IsSetFailed: Boolean;
begin
  Result := (FFailed <> nil) and (FFailed.Count > 0);
end;

function TCreateAssociationBatchResponse.GetSuccessful: TObjectList<TAssociationDescription>;
begin
  Result := FSuccessful;
end;

procedure TCreateAssociationBatchResponse.SetSuccessful(const Value: TObjectList<TAssociationDescription>);
begin
  if FSuccessful <> Value then
  begin
    if not KeepSuccessful then
      FSuccessful.Free;
    FSuccessful := Value;
  end;
end;

function TCreateAssociationBatchResponse.GetKeepSuccessful: Boolean;
begin
  Result := FKeepSuccessful;
end;

procedure TCreateAssociationBatchResponse.SetKeepSuccessful(const Value: Boolean);
begin
  FKeepSuccessful := Value;
end;

function TCreateAssociationBatchResponse.IsSetSuccessful: Boolean;
begin
  Result := (FSuccessful <> nil) and (FSuccessful.Count > 0);
end;

end.
