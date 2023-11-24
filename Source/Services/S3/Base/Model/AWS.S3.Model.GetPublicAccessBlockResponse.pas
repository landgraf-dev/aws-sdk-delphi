unit AWS.S3.Model.GetPublicAccessBlockResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.PublicAccessBlockConfiguration;

type
  TGetPublicAccessBlockResponse = class;
  
  IGetPublicAccessBlockResponse = interface(IAmazonWebServiceResponse)
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
    function Obj: TGetPublicAccessBlockResponse;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
  end;
  
  TGetPublicAccessBlockResponse = class(TAmazonWebServiceResponse, IGetPublicAccessBlockResponse)
  strict private
    FPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    FKeepPublicAccessBlockConfiguration: Boolean;
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetPublicAccessBlockResponse;
  public
    destructor Destroy; override;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
  end;
  
implementation

{ TGetPublicAccessBlockResponse }

destructor TGetPublicAccessBlockResponse.Destroy;
begin
  PublicAccessBlockConfiguration := nil;
  inherited;
end;

function TGetPublicAccessBlockResponse.Obj: TGetPublicAccessBlockResponse;
begin
  Result := Self;
end;

function TGetPublicAccessBlockResponse.GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
begin
  Result := FPublicAccessBlockConfiguration;
end;

procedure TGetPublicAccessBlockResponse.SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
begin
  if FPublicAccessBlockConfiguration <> Value then
  begin
    if not KeepPublicAccessBlockConfiguration then
      FPublicAccessBlockConfiguration.Free;
    FPublicAccessBlockConfiguration := Value;
  end;
end;

function TGetPublicAccessBlockResponse.GetKeepPublicAccessBlockConfiguration: Boolean;
begin
  Result := FKeepPublicAccessBlockConfiguration;
end;

procedure TGetPublicAccessBlockResponse.SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
begin
  FKeepPublicAccessBlockConfiguration := Value;
end;

function TGetPublicAccessBlockResponse.IsSetPublicAccessBlockConfiguration: Boolean;
begin
  Result := FPublicAccessBlockConfiguration <> nil;
end;

end.
