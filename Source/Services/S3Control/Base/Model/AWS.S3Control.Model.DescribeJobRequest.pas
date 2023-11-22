unit AWS.S3Control.Model.DescribeJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TDescribeJobRequest = class;
  
  IDescribeJobRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TDescribeJobRequest;
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TDescribeJobRequest = class(TAmazonS3ControlRequest, IDescribeJobRequest)
  strict private
    FAccountId: Nullable<string>;
    FJobId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TDescribeJobRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TDescribeJobRequest }

function TDescribeJobRequest.Obj: TDescribeJobRequest;
begin
  Result := Self;
end;

function TDescribeJobRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDescribeJobRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDescribeJobRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDescribeJobRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TDescribeJobRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TDescribeJobRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
