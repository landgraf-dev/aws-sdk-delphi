unit AWS.Rekognition.Model.CreateProjectVersionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateProjectVersionResponse = class;
  
  ICreateProjectVersionResponse = interface(IAmazonWebServiceResponse)
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
    function Obj: TCreateProjectVersionResponse;
    function IsSetProjectVersionArn: Boolean;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
  TCreateProjectVersionResponse = class(TAmazonWebServiceResponse, ICreateProjectVersionResponse)
  strict private
    FProjectVersionArn: Nullable<string>;
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
  strict protected
    function Obj: TCreateProjectVersionResponse;
  public
    function IsSetProjectVersionArn: Boolean;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
implementation

{ TCreateProjectVersionResponse }

function TCreateProjectVersionResponse.Obj: TCreateProjectVersionResponse;
begin
  Result := Self;
end;

function TCreateProjectVersionResponse.GetProjectVersionArn: string;
begin
  Result := FProjectVersionArn.ValueOrDefault;
end;

procedure TCreateProjectVersionResponse.SetProjectVersionArn(const Value: string);
begin
  FProjectVersionArn := Value;
end;

function TCreateProjectVersionResponse.IsSetProjectVersionArn: Boolean;
begin
  Result := FProjectVersionArn.HasValue;
end;

end.
