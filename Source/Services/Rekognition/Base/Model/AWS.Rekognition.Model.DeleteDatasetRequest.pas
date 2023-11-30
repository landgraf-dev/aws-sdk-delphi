unit AWS.Rekognition.Model.DeleteDatasetRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TDeleteDatasetRequest = class;
  
  IDeleteDatasetRequest = interface
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function Obj: TDeleteDatasetRequest;
    function IsSetDatasetArn: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
  TDeleteDatasetRequest = class(TAmazonRekognitionRequest, IDeleteDatasetRequest)
  strict private
    FDatasetArn: Nullable<string>;
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
  strict protected
    function Obj: TDeleteDatasetRequest;
  public
    function IsSetDatasetArn: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
implementation

{ TDeleteDatasetRequest }

function TDeleteDatasetRequest.Obj: TDeleteDatasetRequest;
begin
  Result := Self;
end;

function TDeleteDatasetRequest.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TDeleteDatasetRequest.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TDeleteDatasetRequest.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

end.
