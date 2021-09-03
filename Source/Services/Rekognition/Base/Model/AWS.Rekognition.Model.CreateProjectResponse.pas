unit AWS.Rekognition.Model.CreateProjectResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateProjectResponse = class;
  
  ICreateProjectResponse = interface(IAmazonWebServiceResponse)
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function Obj: TCreateProjectResponse;
    function IsSetProjectArn: Boolean;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
  end;
  
  TCreateProjectResponse = class(TAmazonWebServiceResponse, ICreateProjectResponse)
  strict private
    FProjectArn: Nullable<string>;
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
  strict protected
    function Obj: TCreateProjectResponse;
  public
    function IsSetProjectArn: Boolean;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
  end;
  
implementation

{ TCreateProjectResponse }

function TCreateProjectResponse.Obj: TCreateProjectResponse;
begin
  Result := Self;
end;

function TCreateProjectResponse.GetProjectArn: string;
begin
  Result := FProjectArn.ValueOrDefault;
end;

procedure TCreateProjectResponse.SetProjectArn(const Value: string);
begin
  FProjectArn := Value;
end;

function TCreateProjectResponse.IsSetProjectArn: Boolean;
begin
  Result := FProjectArn.HasValue;
end;

end.
