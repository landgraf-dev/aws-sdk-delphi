unit AWS.Rekognition.Model.DatasetMetadata;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Enums;

type
  TDatasetMetadata = class;
  
  IDatasetMetadata = interface
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetDatasetType: TDatasetType;
    procedure SetDatasetType(const Value: TDatasetType);
    function GetStatus: TDatasetStatus;
    procedure SetStatus(const Value: TDatasetStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetStatusMessageCode: TDatasetStatusMessageCode;
    procedure SetStatusMessageCode(const Value: TDatasetStatusMessageCode);
    function Obj: TDatasetMetadata;
    function IsSetCreationTimestamp: Boolean;
    function IsSetDatasetArn: Boolean;
    function IsSetDatasetType: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStatusMessageCode: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property DatasetType: TDatasetType read GetDatasetType write SetDatasetType;
    property Status: TDatasetStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property StatusMessageCode: TDatasetStatusMessageCode read GetStatusMessageCode write SetStatusMessageCode;
  end;
  
  TDatasetMetadata = class
  strict private
    FCreationTimestamp: Nullable<TDateTime>;
    FDatasetArn: Nullable<string>;
    FDatasetType: Nullable<TDatasetType>;
    FStatus: Nullable<TDatasetStatus>;
    FStatusMessage: Nullable<string>;
    FStatusMessageCode: Nullable<TDatasetStatusMessageCode>;
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetDatasetType: TDatasetType;
    procedure SetDatasetType(const Value: TDatasetType);
    function GetStatus: TDatasetStatus;
    procedure SetStatus(const Value: TDatasetStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetStatusMessageCode: TDatasetStatusMessageCode;
    procedure SetStatusMessageCode(const Value: TDatasetStatusMessageCode);
  strict protected
    function Obj: TDatasetMetadata;
  public
    function IsSetCreationTimestamp: Boolean;
    function IsSetDatasetArn: Boolean;
    function IsSetDatasetType: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStatusMessageCode: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property DatasetType: TDatasetType read GetDatasetType write SetDatasetType;
    property Status: TDatasetStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property StatusMessageCode: TDatasetStatusMessageCode read GetStatusMessageCode write SetStatusMessageCode;
  end;
  
implementation

{ TDatasetMetadata }

function TDatasetMetadata.Obj: TDatasetMetadata;
begin
  Result := Self;
end;

function TDatasetMetadata.GetCreationTimestamp: TDateTime;
begin
  Result := FCreationTimestamp.ValueOrDefault;
end;

procedure TDatasetMetadata.SetCreationTimestamp(const Value: TDateTime);
begin
  FCreationTimestamp := Value;
end;

function TDatasetMetadata.IsSetCreationTimestamp: Boolean;
begin
  Result := FCreationTimestamp.HasValue;
end;

function TDatasetMetadata.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TDatasetMetadata.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TDatasetMetadata.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

function TDatasetMetadata.GetDatasetType: TDatasetType;
begin
  Result := FDatasetType.ValueOrDefault;
end;

procedure TDatasetMetadata.SetDatasetType(const Value: TDatasetType);
begin
  FDatasetType := Value;
end;

function TDatasetMetadata.IsSetDatasetType: Boolean;
begin
  Result := FDatasetType.HasValue;
end;

function TDatasetMetadata.GetStatus: TDatasetStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDatasetMetadata.SetStatus(const Value: TDatasetStatus);
begin
  FStatus := Value;
end;

function TDatasetMetadata.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TDatasetMetadata.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TDatasetMetadata.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TDatasetMetadata.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TDatasetMetadata.GetStatusMessageCode: TDatasetStatusMessageCode;
begin
  Result := FStatusMessageCode.ValueOrDefault;
end;

procedure TDatasetMetadata.SetStatusMessageCode(const Value: TDatasetStatusMessageCode);
begin
  FStatusMessageCode := Value;
end;

function TDatasetMetadata.IsSetStatusMessageCode: Boolean;
begin
  Result := FStatusMessageCode.HasValue;
end;

end.
