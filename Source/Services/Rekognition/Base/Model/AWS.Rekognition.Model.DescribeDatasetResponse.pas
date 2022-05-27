unit AWS.Rekognition.Model.DescribeDatasetResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DatasetDescription;

type
  TDescribeDatasetResponse = class;
  
  IDescribeDatasetResponse = interface(IAmazonWebServiceResponse)
    function GetDatasetDescription: TDatasetDescription;
    procedure SetDatasetDescription(const Value: TDatasetDescription);
    function GetKeepDatasetDescription: Boolean;
    procedure SetKeepDatasetDescription(const Value: Boolean);
    function Obj: TDescribeDatasetResponse;
    function IsSetDatasetDescription: Boolean;
    property DatasetDescription: TDatasetDescription read GetDatasetDescription write SetDatasetDescription;
    property KeepDatasetDescription: Boolean read GetKeepDatasetDescription write SetKeepDatasetDescription;
  end;
  
  TDescribeDatasetResponse = class(TAmazonWebServiceResponse, IDescribeDatasetResponse)
  strict private
    FDatasetDescription: TDatasetDescription;
    FKeepDatasetDescription: Boolean;
    function GetDatasetDescription: TDatasetDescription;
    procedure SetDatasetDescription(const Value: TDatasetDescription);
    function GetKeepDatasetDescription: Boolean;
    procedure SetKeepDatasetDescription(const Value: Boolean);
  strict protected
    function Obj: TDescribeDatasetResponse;
  public
    destructor Destroy; override;
    function IsSetDatasetDescription: Boolean;
    property DatasetDescription: TDatasetDescription read GetDatasetDescription write SetDatasetDescription;
    property KeepDatasetDescription: Boolean read GetKeepDatasetDescription write SetKeepDatasetDescription;
  end;
  
implementation

{ TDescribeDatasetResponse }

destructor TDescribeDatasetResponse.Destroy;
begin
  DatasetDescription := nil;
  inherited;
end;

function TDescribeDatasetResponse.Obj: TDescribeDatasetResponse;
begin
  Result := Self;
end;

function TDescribeDatasetResponse.GetDatasetDescription: TDatasetDescription;
begin
  Result := FDatasetDescription;
end;

procedure TDescribeDatasetResponse.SetDatasetDescription(const Value: TDatasetDescription);
begin
  if FDatasetDescription <> Value then
  begin
    if not KeepDatasetDescription then
      FDatasetDescription.Free;
    FDatasetDescription := Value;
  end;
end;

function TDescribeDatasetResponse.GetKeepDatasetDescription: Boolean;
begin
  Result := FKeepDatasetDescription;
end;

procedure TDescribeDatasetResponse.SetKeepDatasetDescription(const Value: Boolean);
begin
  FKeepDatasetDescription := Value;
end;

function TDescribeDatasetResponse.IsSetDatasetDescription: Boolean;
begin
  Result := FDatasetDescription <> nil;
end;

end.
