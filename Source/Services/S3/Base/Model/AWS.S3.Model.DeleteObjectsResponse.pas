unit AWS.S3.Model.DeleteObjectsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeletedObject, 
  AWS.S3.Model.Error, 
  AWS.S3.Enums;

type
  TDeleteObjectsResponse = class;
  
  IDeleteObjectsResponse = interface(IAmazonWebServiceResponse)
    function GetDeleted: TObjectList<TDeletedObject>;
    procedure SetDeleted(const Value: TObjectList<TDeletedObject>);
    function GetKeepDeleted: Boolean;
    procedure SetKeepDeleted(const Value: Boolean);
    function GetErrors: TObjectList<TError>;
    procedure SetErrors(const Value: TObjectList<TError>);
    function GetKeepErrors: Boolean;
    procedure SetKeepErrors(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function Obj: TDeleteObjectsResponse;
    function IsSetDeleted: Boolean;
    function IsSetErrors: Boolean;
    function IsSetRequestCharged: Boolean;
    property Deleted: TObjectList<TDeletedObject> read GetDeleted write SetDeleted;
    property KeepDeleted: Boolean read GetKeepDeleted write SetKeepDeleted;
    property Errors: TObjectList<TError> read GetErrors write SetErrors;
    property KeepErrors: Boolean read GetKeepErrors write SetKeepErrors;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
  TDeleteObjectsResponse = class(TAmazonWebServiceResponse, IDeleteObjectsResponse)
  strict private
    FDeleted: TObjectList<TDeletedObject>;
    FKeepDeleted: Boolean;
    FErrors: TObjectList<TError>;
    FKeepErrors: Boolean;
    FRequestCharged: Nullable<TRequestCharged>;
    function GetDeleted: TObjectList<TDeletedObject>;
    procedure SetDeleted(const Value: TObjectList<TDeletedObject>);
    function GetKeepDeleted: Boolean;
    procedure SetKeepDeleted(const Value: Boolean);
    function GetErrors: TObjectList<TError>;
    procedure SetErrors(const Value: TObjectList<TError>);
    function GetKeepErrors: Boolean;
    procedure SetKeepErrors(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
  strict protected
    function Obj: TDeleteObjectsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDeleted: Boolean;
    function IsSetErrors: Boolean;
    function IsSetRequestCharged: Boolean;
    property Deleted: TObjectList<TDeletedObject> read GetDeleted write SetDeleted;
    property KeepDeleted: Boolean read GetKeepDeleted write SetKeepDeleted;
    property Errors: TObjectList<TError> read GetErrors write SetErrors;
    property KeepErrors: Boolean read GetKeepErrors write SetKeepErrors;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
implementation

{ TDeleteObjectsResponse }

constructor TDeleteObjectsResponse.Create;
begin
  inherited;
  FDeleted := TObjectList<TDeletedObject>.Create;
  FErrors := TObjectList<TError>.Create;
end;

destructor TDeleteObjectsResponse.Destroy;
begin
  Errors := nil;
  Deleted := nil;
  inherited;
end;

function TDeleteObjectsResponse.Obj: TDeleteObjectsResponse;
begin
  Result := Self;
end;

function TDeleteObjectsResponse.GetDeleted: TObjectList<TDeletedObject>;
begin
  Result := FDeleted;
end;

procedure TDeleteObjectsResponse.SetDeleted(const Value: TObjectList<TDeletedObject>);
begin
  if FDeleted <> Value then
  begin
    if not KeepDeleted then
      FDeleted.Free;
    FDeleted := Value;
  end;
end;

function TDeleteObjectsResponse.GetKeepDeleted: Boolean;
begin
  Result := FKeepDeleted;
end;

procedure TDeleteObjectsResponse.SetKeepDeleted(const Value: Boolean);
begin
  FKeepDeleted := Value;
end;

function TDeleteObjectsResponse.IsSetDeleted: Boolean;
begin
  Result := (FDeleted <> nil) and (FDeleted.Count > 0);
end;

function TDeleteObjectsResponse.GetErrors: TObjectList<TError>;
begin
  Result := FErrors;
end;

procedure TDeleteObjectsResponse.SetErrors(const Value: TObjectList<TError>);
begin
  if FErrors <> Value then
  begin
    if not KeepErrors then
      FErrors.Free;
    FErrors := Value;
  end;
end;

function TDeleteObjectsResponse.GetKeepErrors: Boolean;
begin
  Result := FKeepErrors;
end;

procedure TDeleteObjectsResponse.SetKeepErrors(const Value: Boolean);
begin
  FKeepErrors := Value;
end;

function TDeleteObjectsResponse.IsSetErrors: Boolean;
begin
  Result := (FErrors <> nil) and (FErrors.Count > 0);
end;

function TDeleteObjectsResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TDeleteObjectsResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TDeleteObjectsResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

end.
