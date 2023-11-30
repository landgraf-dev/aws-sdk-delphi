unit AWS.S3Control.Model.DeleteJobTaggingRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteJobTaggingRequest = class;
  
  IDeleteJobTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TDeleteJobTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TDeleteJobTaggingRequest = class(TAmazonS3ControlRequest, IDeleteJobTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FJobId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TDeleteJobTaggingRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TDeleteJobTaggingRequest }

function TDeleteJobTaggingRequest.Obj: TDeleteJobTaggingRequest;
begin
  Result := Self;
end;

function TDeleteJobTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteJobTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteJobTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteJobTaggingRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TDeleteJobTaggingRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TDeleteJobTaggingRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
