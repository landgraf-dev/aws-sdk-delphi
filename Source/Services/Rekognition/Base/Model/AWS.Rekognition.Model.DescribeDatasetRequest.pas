unit AWS.Rekognition.Model.DescribeDatasetRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TDescribeDatasetRequest = class;
  
  IDescribeDatasetRequest = interface
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function Obj: TDescribeDatasetRequest;
    function IsSetDatasetArn: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
  TDescribeDatasetRequest = class(TAmazonRekognitionRequest, IDescribeDatasetRequest)
  strict private
    FDatasetArn: Nullable<string>;
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
  strict protected
    function Obj: TDescribeDatasetRequest;
  public
    function IsSetDatasetArn: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
implementation

{ TDescribeDatasetRequest }

function TDescribeDatasetRequest.Obj: TDescribeDatasetRequest;
begin
  Result := Self;
end;

function TDescribeDatasetRequest.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TDescribeDatasetRequest.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TDescribeDatasetRequest.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

end.
