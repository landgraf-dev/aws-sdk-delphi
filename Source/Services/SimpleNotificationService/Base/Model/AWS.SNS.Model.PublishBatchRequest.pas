unit AWS.SNS.Model.PublishBatchRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request, 
  AWS.SNS.Model.PublishBatchRequestEntry;

type
  TPublishBatchRequest = class;
  
  IPublishBatchRequest = interface
    function GetPublishBatchRequestEntries: TObjectList<TPublishBatchRequestEntry>;
    procedure SetPublishBatchRequestEntries(const Value: TObjectList<TPublishBatchRequestEntry>);
    function GetKeepPublishBatchRequestEntries: Boolean;
    procedure SetKeepPublishBatchRequestEntries(const Value: Boolean);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TPublishBatchRequest;
    function IsSetPublishBatchRequestEntries: Boolean;
    function IsSetTopicArn: Boolean;
    property PublishBatchRequestEntries: TObjectList<TPublishBatchRequestEntry> read GetPublishBatchRequestEntries write SetPublishBatchRequestEntries;
    property KeepPublishBatchRequestEntries: Boolean read GetKeepPublishBatchRequestEntries write SetKeepPublishBatchRequestEntries;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TPublishBatchRequest = class(TAmazonSimpleNotificationServiceRequest, IPublishBatchRequest)
  strict private
    FPublishBatchRequestEntries: TObjectList<TPublishBatchRequestEntry>;
    FKeepPublishBatchRequestEntries: Boolean;
    FTopicArn: Nullable<string>;
    function GetPublishBatchRequestEntries: TObjectList<TPublishBatchRequestEntry>;
    procedure SetPublishBatchRequestEntries(const Value: TObjectList<TPublishBatchRequestEntry>);
    function GetKeepPublishBatchRequestEntries: Boolean;
    procedure SetKeepPublishBatchRequestEntries(const Value: Boolean);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TPublishBatchRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPublishBatchRequestEntries: Boolean;
    function IsSetTopicArn: Boolean;
    property PublishBatchRequestEntries: TObjectList<TPublishBatchRequestEntry> read GetPublishBatchRequestEntries write SetPublishBatchRequestEntries;
    property KeepPublishBatchRequestEntries: Boolean read GetKeepPublishBatchRequestEntries write SetKeepPublishBatchRequestEntries;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TPublishBatchRequest }

constructor TPublishBatchRequest.Create;
begin
  inherited;
  FPublishBatchRequestEntries := TObjectList<TPublishBatchRequestEntry>.Create;
end;

destructor TPublishBatchRequest.Destroy;
begin
  PublishBatchRequestEntries := nil;
  inherited;
end;

function TPublishBatchRequest.Obj: TPublishBatchRequest;
begin
  Result := Self;
end;

function TPublishBatchRequest.GetPublishBatchRequestEntries: TObjectList<TPublishBatchRequestEntry>;
begin
  Result := FPublishBatchRequestEntries;
end;

procedure TPublishBatchRequest.SetPublishBatchRequestEntries(const Value: TObjectList<TPublishBatchRequestEntry>);
begin
  if FPublishBatchRequestEntries <> Value then
  begin
    if not KeepPublishBatchRequestEntries then
      FPublishBatchRequestEntries.Free;
    FPublishBatchRequestEntries := Value;
  end;
end;

function TPublishBatchRequest.GetKeepPublishBatchRequestEntries: Boolean;
begin
  Result := FKeepPublishBatchRequestEntries;
end;

procedure TPublishBatchRequest.SetKeepPublishBatchRequestEntries(const Value: Boolean);
begin
  FKeepPublishBatchRequestEntries := Value;
end;

function TPublishBatchRequest.IsSetPublishBatchRequestEntries: Boolean;
begin
  Result := (FPublishBatchRequestEntries <> nil) and (FPublishBatchRequestEntries.Count > 0);
end;

function TPublishBatchRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TPublishBatchRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TPublishBatchRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
