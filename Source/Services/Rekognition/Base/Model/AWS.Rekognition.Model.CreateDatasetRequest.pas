unit AWS.Rekognition.Model.CreateDatasetRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.DatasetSource, 
  AWS.Rekognition.Enums;

type
  TCreateDatasetRequest = class;
  
  ICreateDatasetRequest = interface
    function GetDatasetSource: TDatasetSource;
    procedure SetDatasetSource(const Value: TDatasetSource);
    function GetKeepDatasetSource: Boolean;
    procedure SetKeepDatasetSource(const Value: Boolean);
    function GetDatasetType: TDatasetType;
    procedure SetDatasetType(const Value: TDatasetType);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function Obj: TCreateDatasetRequest;
    function IsSetDatasetSource: Boolean;
    function IsSetDatasetType: Boolean;
    function IsSetProjectArn: Boolean;
    property DatasetSource: TDatasetSource read GetDatasetSource write SetDatasetSource;
    property KeepDatasetSource: Boolean read GetKeepDatasetSource write SetKeepDatasetSource;
    property DatasetType: TDatasetType read GetDatasetType write SetDatasetType;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
  end;
  
  TCreateDatasetRequest = class(TAmazonRekognitionRequest, ICreateDatasetRequest)
  strict private
    FDatasetSource: TDatasetSource;
    FKeepDatasetSource: Boolean;
    FDatasetType: Nullable<TDatasetType>;
    FProjectArn: Nullable<string>;
    function GetDatasetSource: TDatasetSource;
    procedure SetDatasetSource(const Value: TDatasetSource);
    function GetKeepDatasetSource: Boolean;
    procedure SetKeepDatasetSource(const Value: Boolean);
    function GetDatasetType: TDatasetType;
    procedure SetDatasetType(const Value: TDatasetType);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
  strict protected
    function Obj: TCreateDatasetRequest;
  public
    destructor Destroy; override;
    function IsSetDatasetSource: Boolean;
    function IsSetDatasetType: Boolean;
    function IsSetProjectArn: Boolean;
    property DatasetSource: TDatasetSource read GetDatasetSource write SetDatasetSource;
    property KeepDatasetSource: Boolean read GetKeepDatasetSource write SetKeepDatasetSource;
    property DatasetType: TDatasetType read GetDatasetType write SetDatasetType;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
  end;
  
implementation

{ TCreateDatasetRequest }

destructor TCreateDatasetRequest.Destroy;
begin
  DatasetSource := nil;
  inherited;
end;

function TCreateDatasetRequest.Obj: TCreateDatasetRequest;
begin
  Result := Self;
end;

function TCreateDatasetRequest.GetDatasetSource: TDatasetSource;
begin
  Result := FDatasetSource;
end;

procedure TCreateDatasetRequest.SetDatasetSource(const Value: TDatasetSource);
begin
  if FDatasetSource <> Value then
  begin
    if not KeepDatasetSource then
      FDatasetSource.Free;
    FDatasetSource := Value;
  end;
end;

function TCreateDatasetRequest.GetKeepDatasetSource: Boolean;
begin
  Result := FKeepDatasetSource;
end;

procedure TCreateDatasetRequest.SetKeepDatasetSource(const Value: Boolean);
begin
  FKeepDatasetSource := Value;
end;

function TCreateDatasetRequest.IsSetDatasetSource: Boolean;
begin
  Result := FDatasetSource <> nil;
end;

function TCreateDatasetRequest.GetDatasetType: TDatasetType;
begin
  Result := FDatasetType.ValueOrDefault;
end;

procedure TCreateDatasetRequest.SetDatasetType(const Value: TDatasetType);
begin
  FDatasetType := Value;
end;

function TCreateDatasetRequest.IsSetDatasetType: Boolean;
begin
  Result := FDatasetType.HasValue;
end;

function TCreateDatasetRequest.GetProjectArn: string;
begin
  Result := FProjectArn.ValueOrDefault;
end;

procedure TCreateDatasetRequest.SetProjectArn(const Value: string);
begin
  FProjectArn := Value;
end;

function TCreateDatasetRequest.IsSetProjectArn: Boolean;
begin
  Result := FProjectArn.HasValue;
end;

end.
