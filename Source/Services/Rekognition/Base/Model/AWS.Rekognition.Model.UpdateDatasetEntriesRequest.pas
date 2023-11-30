unit AWS.Rekognition.Model.UpdateDatasetEntriesRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.DatasetChanges, 
  AWS.Nullable;

type
  TUpdateDatasetEntriesRequest = class;
  
  IUpdateDatasetEntriesRequest = interface
    function GetChanges: TDatasetChanges;
    procedure SetChanges(const Value: TDatasetChanges);
    function GetKeepChanges: Boolean;
    procedure SetKeepChanges(const Value: Boolean);
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function Obj: TUpdateDatasetEntriesRequest;
    function IsSetChanges: Boolean;
    function IsSetDatasetArn: Boolean;
    property Changes: TDatasetChanges read GetChanges write SetChanges;
    property KeepChanges: Boolean read GetKeepChanges write SetKeepChanges;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
  TUpdateDatasetEntriesRequest = class(TAmazonRekognitionRequest, IUpdateDatasetEntriesRequest)
  strict private
    FChanges: TDatasetChanges;
    FKeepChanges: Boolean;
    FDatasetArn: Nullable<string>;
    function GetChanges: TDatasetChanges;
    procedure SetChanges(const Value: TDatasetChanges);
    function GetKeepChanges: Boolean;
    procedure SetKeepChanges(const Value: Boolean);
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
  strict protected
    function Obj: TUpdateDatasetEntriesRequest;
  public
    destructor Destroy; override;
    function IsSetChanges: Boolean;
    function IsSetDatasetArn: Boolean;
    property Changes: TDatasetChanges read GetChanges write SetChanges;
    property KeepChanges: Boolean read GetKeepChanges write SetKeepChanges;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
implementation

{ TUpdateDatasetEntriesRequest }

destructor TUpdateDatasetEntriesRequest.Destroy;
begin
  Changes := nil;
  inherited;
end;

function TUpdateDatasetEntriesRequest.Obj: TUpdateDatasetEntriesRequest;
begin
  Result := Self;
end;

function TUpdateDatasetEntriesRequest.GetChanges: TDatasetChanges;
begin
  Result := FChanges;
end;

procedure TUpdateDatasetEntriesRequest.SetChanges(const Value: TDatasetChanges);
begin
  if FChanges <> Value then
  begin
    if not KeepChanges then
      FChanges.Free;
    FChanges := Value;
  end;
end;

function TUpdateDatasetEntriesRequest.GetKeepChanges: Boolean;
begin
  Result := FKeepChanges;
end;

procedure TUpdateDatasetEntriesRequest.SetKeepChanges(const Value: Boolean);
begin
  FKeepChanges := Value;
end;

function TUpdateDatasetEntriesRequest.IsSetChanges: Boolean;
begin
  Result := FChanges <> nil;
end;

function TUpdateDatasetEntriesRequest.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TUpdateDatasetEntriesRequest.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TUpdateDatasetEntriesRequest.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

end.
