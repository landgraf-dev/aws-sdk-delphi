unit AWS.SQS.Model.GetQueueAttributesRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TGetQueueAttributesRequest = class;
  
  IGetQueueAttributesRequest = interface
    function GetAttributeNames: TList<string>;
    procedure SetAttributeNames(const Value: TList<string>);
    function GetKeepAttributeNames: Boolean;
    procedure SetKeepAttributeNames(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TGetQueueAttributesRequest;
    function IsSetAttributeNames: Boolean;
    function IsSetQueueUrl: Boolean;
    property AttributeNames: TList<string> read GetAttributeNames write SetAttributeNames;
    property KeepAttributeNames: Boolean read GetKeepAttributeNames write SetKeepAttributeNames;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TGetQueueAttributesRequest = class(TAmazonSQSRequest, IGetQueueAttributesRequest)
  strict private
    FAttributeNames: TList<string>;
    FKeepAttributeNames: Boolean;
    FQueueUrl: Nullable<string>;
    function GetAttributeNames: TList<string>;
    procedure SetAttributeNames(const Value: TList<string>);
    function GetKeepAttributeNames: Boolean;
    procedure SetKeepAttributeNames(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TGetQueueAttributesRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueUrl: string; const AAttributeNames: TList<string>); overload;
    function IsSetAttributeNames: Boolean;
    function IsSetQueueUrl: Boolean;
    property AttributeNames: TList<string> read GetAttributeNames write SetAttributeNames;
    property KeepAttributeNames: Boolean read GetKeepAttributeNames write SetKeepAttributeNames;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TGetQueueAttributesRequest }

constructor TGetQueueAttributesRequest.Create;
begin
  inherited;
  FAttributeNames := TList<string>.Create;
end;

destructor TGetQueueAttributesRequest.Destroy;
begin
  AttributeNames := nil;
  inherited;
end;

function TGetQueueAttributesRequest.Obj: TGetQueueAttributesRequest;
begin
  Result := Self;
end;

constructor TGetQueueAttributesRequest.Create(const AQueueUrl: string; const AAttributeNames: TList<string>);
begin
  Create;
  QueueUrl := AQueueUrl;
  AttributeNames := AAttributeNames;
end;

function TGetQueueAttributesRequest.GetAttributeNames: TList<string>;
begin
  Result := FAttributeNames;
end;

procedure TGetQueueAttributesRequest.SetAttributeNames(const Value: TList<string>);
begin
  if FAttributeNames <> Value then
  begin
    if not KeepAttributeNames then
      FAttributeNames.Free;
    FAttributeNames := Value;
  end;
end;

function TGetQueueAttributesRequest.GetKeepAttributeNames: Boolean;
begin
  Result := FKeepAttributeNames;
end;

procedure TGetQueueAttributesRequest.SetKeepAttributeNames(const Value: Boolean);
begin
  FKeepAttributeNames := Value;
end;

function TGetQueueAttributesRequest.IsSetAttributeNames: Boolean;
begin
  Result := (FAttributeNames <> nil) and (FAttributeNames.Count > 0);
end;

function TGetQueueAttributesRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TGetQueueAttributesRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TGetQueueAttributesRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
