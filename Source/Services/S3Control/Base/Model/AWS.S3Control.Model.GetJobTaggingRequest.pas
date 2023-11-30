unit AWS.S3Control.Model.GetJobTaggingRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetJobTaggingRequest = class;
  
  IGetJobTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TGetJobTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TGetJobTaggingRequest = class(TAmazonS3ControlRequest, IGetJobTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FJobId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TGetJobTaggingRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TGetJobTaggingRequest }

function TGetJobTaggingRequest.Obj: TGetJobTaggingRequest;
begin
  Result := Self;
end;

function TGetJobTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetJobTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetJobTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetJobTaggingRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetJobTaggingRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetJobTaggingRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
