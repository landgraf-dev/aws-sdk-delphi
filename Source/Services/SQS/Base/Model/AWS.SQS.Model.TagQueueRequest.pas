unit AWS.SQS.Model.TagQueueRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SQS.Model.Request, 
  AWS.Nullable;

type
  TTagQueueRequest = class;
  
  ITagQueueRequest = interface
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TTagQueueRequest;
    function IsSetQueueUrl: Boolean;
    function IsSetTags: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TTagQueueRequest = class(TAmazonSQSRequest, ITagQueueRequest)
  strict private
    FQueueUrl: Nullable<string>;
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TTagQueueRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetQueueUrl: Boolean;
    function IsSetTags: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TTagQueueRequest }

constructor TTagQueueRequest.Create;
begin
  inherited;
  FTags := TDictionary<string, string>.Create;
end;

destructor TTagQueueRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TTagQueueRequest.Obj: TTagQueueRequest;
begin
  Result := Self;
end;

function TTagQueueRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TTagQueueRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TTagQueueRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

function TTagQueueRequest.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TTagQueueRequest.SetTags(const Value: TDictionary<string, string>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TTagQueueRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TTagQueueRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TTagQueueRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
