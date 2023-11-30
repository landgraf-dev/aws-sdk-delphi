unit AWS.S3Control.Model.GetAccessPointForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3Control.Model.PublicAccessBlockConfiguration;

type
  TGetAccessPointForObjectLambdaResponse = class;
  
  IGetAccessPointForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
    function Obj: TGetAccessPointForObjectLambdaResponse;
    function IsSetCreationDate: Boolean;
    function IsSetName: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property Name: string read GetName write SetName;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
  end;
  
  TGetAccessPointForObjectLambdaResponse = class(TAmazonWebServiceResponse, IGetAccessPointForObjectLambdaResponse)
  strict private
    FCreationDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    FPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    FKeepPublicAccessBlockConfiguration: Boolean;
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetAccessPointForObjectLambdaResponse;
  public
    destructor Destroy; override;
    function IsSetCreationDate: Boolean;
    function IsSetName: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property Name: string read GetName write SetName;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
  end;
  
implementation

{ TGetAccessPointForObjectLambdaResponse }

destructor TGetAccessPointForObjectLambdaResponse.Destroy;
begin
  PublicAccessBlockConfiguration := nil;
  inherited;
end;

function TGetAccessPointForObjectLambdaResponse.Obj: TGetAccessPointForObjectLambdaResponse;
begin
  Result := Self;
end;

function TGetAccessPointForObjectLambdaResponse.GetCreationDate: TDateTime;
begin
  Result := FCreationDate.ValueOrDefault;
end;

procedure TGetAccessPointForObjectLambdaResponse.SetCreationDate(const Value: TDateTime);
begin
  FCreationDate := Value;
end;

function TGetAccessPointForObjectLambdaResponse.IsSetCreationDate: Boolean;
begin
  Result := FCreationDate.HasValue;
end;

function TGetAccessPointForObjectLambdaResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointForObjectLambdaResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointForObjectLambdaResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetAccessPointForObjectLambdaResponse.GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
begin
  Result := FPublicAccessBlockConfiguration;
end;

procedure TGetAccessPointForObjectLambdaResponse.SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
begin
  if FPublicAccessBlockConfiguration <> Value then
  begin
    if not KeepPublicAccessBlockConfiguration then
      FPublicAccessBlockConfiguration.Free;
    FPublicAccessBlockConfiguration := Value;
  end;
end;

function TGetAccessPointForObjectLambdaResponse.GetKeepPublicAccessBlockConfiguration: Boolean;
begin
  Result := FKeepPublicAccessBlockConfiguration;
end;

procedure TGetAccessPointForObjectLambdaResponse.SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
begin
  FKeepPublicAccessBlockConfiguration := Value;
end;

function TGetAccessPointForObjectLambdaResponse.IsSetPublicAccessBlockConfiguration: Boolean;
begin
  Result := FPublicAccessBlockConfiguration <> nil;
end;

end.
