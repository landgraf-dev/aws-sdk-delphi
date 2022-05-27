unit AWS.Rekognition.Model.CreateDatasetResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateDatasetResponse = class;
  
  ICreateDatasetResponse = interface(IAmazonWebServiceResponse)
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function Obj: TCreateDatasetResponse;
    function IsSetDatasetArn: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
  TCreateDatasetResponse = class(TAmazonWebServiceResponse, ICreateDatasetResponse)
  strict private
    FDatasetArn: Nullable<string>;
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
  strict protected
    function Obj: TCreateDatasetResponse;
  public
    function IsSetDatasetArn: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
  end;
  
implementation

{ TCreateDatasetResponse }

function TCreateDatasetResponse.Obj: TCreateDatasetResponse;
begin
  Result := Self;
end;

function TCreateDatasetResponse.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TCreateDatasetResponse.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TCreateDatasetResponse.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

end.
