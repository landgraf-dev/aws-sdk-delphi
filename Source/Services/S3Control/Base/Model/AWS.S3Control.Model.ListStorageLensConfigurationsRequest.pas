unit AWS.S3Control.Model.ListStorageLensConfigurationsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TListStorageLensConfigurationsRequest = class;
  
  IListStorageLensConfigurationsRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListStorageLensConfigurationsRequest;
    function IsSetAccountId: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListStorageLensConfigurationsRequest = class(TAmazonS3ControlRequest, IListStorageLensConfigurationsRequest)
  strict private
    FAccountId: Nullable<string>;
    FNextToken: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListStorageLensConfigurationsRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListStorageLensConfigurationsRequest }

function TListStorageLensConfigurationsRequest.Obj: TListStorageLensConfigurationsRequest;
begin
  Result := Self;
end;

function TListStorageLensConfigurationsRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TListStorageLensConfigurationsRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TListStorageLensConfigurationsRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TListStorageLensConfigurationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListStorageLensConfigurationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListStorageLensConfigurationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
