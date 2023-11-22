unit AWS.S3Control.Model.PutPublicAccessBlockRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request, 
  AWS.S3Control.Model.PublicAccessBlockConfiguration;

type
  TPutPublicAccessBlockRequest = class;
  
  IPutPublicAccessBlockRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
    function Obj: TPutPublicAccessBlockRequest;
    function IsSetAccountId: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
  end;
  
  TPutPublicAccessBlockRequest = class(TAmazonS3ControlRequest, IPutPublicAccessBlockRequest)
  strict private
    FAccountId: Nullable<string>;
    FPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    FKeepPublicAccessBlockConfiguration: Boolean;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutPublicAccessBlockRequest;
  public
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
  end;
  
implementation

{ TPutPublicAccessBlockRequest }

destructor TPutPublicAccessBlockRequest.Destroy;
begin
  PublicAccessBlockConfiguration := nil;
  inherited;
end;

function TPutPublicAccessBlockRequest.Obj: TPutPublicAccessBlockRequest;
begin
  Result := Self;
end;

function TPutPublicAccessBlockRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutPublicAccessBlockRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutPublicAccessBlockRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutPublicAccessBlockRequest.GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
begin
  Result := FPublicAccessBlockConfiguration;
end;

procedure TPutPublicAccessBlockRequest.SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
begin
  if FPublicAccessBlockConfiguration <> Value then
  begin
    if not KeepPublicAccessBlockConfiguration then
      FPublicAccessBlockConfiguration.Free;
    FPublicAccessBlockConfiguration := Value;
  end;
end;

function TPutPublicAccessBlockRequest.GetKeepPublicAccessBlockConfiguration: Boolean;
begin
  Result := FKeepPublicAccessBlockConfiguration;
end;

procedure TPutPublicAccessBlockRequest.SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
begin
  FKeepPublicAccessBlockConfiguration := Value;
end;

function TPutPublicAccessBlockRequest.IsSetPublicAccessBlockConfiguration: Boolean;
begin
  Result := FPublicAccessBlockConfiguration <> nil;
end;

end.
