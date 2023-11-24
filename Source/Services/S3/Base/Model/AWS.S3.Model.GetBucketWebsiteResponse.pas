unit AWS.S3.Model.GetBucketWebsiteResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ErrorDocument, 
  AWS.S3.Model.IndexDocument, 
  AWS.S3.Model.RedirectAllRequestsTo, 
  AWS.S3.Model.RoutingRule;

type
  TGetBucketWebsiteResponse = class;
  
  IGetBucketWebsiteResponse = interface(IAmazonWebServiceResponse)
    function GetErrorDocument: TErrorDocument;
    procedure SetErrorDocument(const Value: TErrorDocument);
    function GetKeepErrorDocument: Boolean;
    procedure SetKeepErrorDocument(const Value: Boolean);
    function GetIndexDocument: TIndexDocument;
    procedure SetIndexDocument(const Value: TIndexDocument);
    function GetKeepIndexDocument: Boolean;
    procedure SetKeepIndexDocument(const Value: Boolean);
    function GetRedirectAllRequestsTo: TRedirectAllRequestsTo;
    procedure SetRedirectAllRequestsTo(const Value: TRedirectAllRequestsTo);
    function GetKeepRedirectAllRequestsTo: Boolean;
    procedure SetKeepRedirectAllRequestsTo(const Value: Boolean);
    function GetRoutingRules: TObjectList<TRoutingRule>;
    procedure SetRoutingRules(const Value: TObjectList<TRoutingRule>);
    function GetKeepRoutingRules: Boolean;
    procedure SetKeepRoutingRules(const Value: Boolean);
    function Obj: TGetBucketWebsiteResponse;
    function IsSetErrorDocument: Boolean;
    function IsSetIndexDocument: Boolean;
    function IsSetRedirectAllRequestsTo: Boolean;
    function IsSetRoutingRules: Boolean;
    property ErrorDocument: TErrorDocument read GetErrorDocument write SetErrorDocument;
    property KeepErrorDocument: Boolean read GetKeepErrorDocument write SetKeepErrorDocument;
    property IndexDocument: TIndexDocument read GetIndexDocument write SetIndexDocument;
    property KeepIndexDocument: Boolean read GetKeepIndexDocument write SetKeepIndexDocument;
    property RedirectAllRequestsTo: TRedirectAllRequestsTo read GetRedirectAllRequestsTo write SetRedirectAllRequestsTo;
    property KeepRedirectAllRequestsTo: Boolean read GetKeepRedirectAllRequestsTo write SetKeepRedirectAllRequestsTo;
    property RoutingRules: TObjectList<TRoutingRule> read GetRoutingRules write SetRoutingRules;
    property KeepRoutingRules: Boolean read GetKeepRoutingRules write SetKeepRoutingRules;
  end;
  
  TGetBucketWebsiteResponse = class(TAmazonWebServiceResponse, IGetBucketWebsiteResponse)
  strict private
    FErrorDocument: TErrorDocument;
    FKeepErrorDocument: Boolean;
    FIndexDocument: TIndexDocument;
    FKeepIndexDocument: Boolean;
    FRedirectAllRequestsTo: TRedirectAllRequestsTo;
    FKeepRedirectAllRequestsTo: Boolean;
    FRoutingRules: TObjectList<TRoutingRule>;
    FKeepRoutingRules: Boolean;
    function GetErrorDocument: TErrorDocument;
    procedure SetErrorDocument(const Value: TErrorDocument);
    function GetKeepErrorDocument: Boolean;
    procedure SetKeepErrorDocument(const Value: Boolean);
    function GetIndexDocument: TIndexDocument;
    procedure SetIndexDocument(const Value: TIndexDocument);
    function GetKeepIndexDocument: Boolean;
    procedure SetKeepIndexDocument(const Value: Boolean);
    function GetRedirectAllRequestsTo: TRedirectAllRequestsTo;
    procedure SetRedirectAllRequestsTo(const Value: TRedirectAllRequestsTo);
    function GetKeepRedirectAllRequestsTo: Boolean;
    procedure SetKeepRedirectAllRequestsTo(const Value: Boolean);
    function GetRoutingRules: TObjectList<TRoutingRule>;
    procedure SetRoutingRules(const Value: TObjectList<TRoutingRule>);
    function GetKeepRoutingRules: Boolean;
    procedure SetKeepRoutingRules(const Value: Boolean);
  strict protected
    function Obj: TGetBucketWebsiteResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetErrorDocument: Boolean;
    function IsSetIndexDocument: Boolean;
    function IsSetRedirectAllRequestsTo: Boolean;
    function IsSetRoutingRules: Boolean;
    property ErrorDocument: TErrorDocument read GetErrorDocument write SetErrorDocument;
    property KeepErrorDocument: Boolean read GetKeepErrorDocument write SetKeepErrorDocument;
    property IndexDocument: TIndexDocument read GetIndexDocument write SetIndexDocument;
    property KeepIndexDocument: Boolean read GetKeepIndexDocument write SetKeepIndexDocument;
    property RedirectAllRequestsTo: TRedirectAllRequestsTo read GetRedirectAllRequestsTo write SetRedirectAllRequestsTo;
    property KeepRedirectAllRequestsTo: Boolean read GetKeepRedirectAllRequestsTo write SetKeepRedirectAllRequestsTo;
    property RoutingRules: TObjectList<TRoutingRule> read GetRoutingRules write SetRoutingRules;
    property KeepRoutingRules: Boolean read GetKeepRoutingRules write SetKeepRoutingRules;
  end;
  
implementation

{ TGetBucketWebsiteResponse }

constructor TGetBucketWebsiteResponse.Create;
begin
  inherited;
  FRoutingRules := TObjectList<TRoutingRule>.Create;
end;

destructor TGetBucketWebsiteResponse.Destroy;
begin
  RoutingRules := nil;
  RedirectAllRequestsTo := nil;
  IndexDocument := nil;
  ErrorDocument := nil;
  inherited;
end;

function TGetBucketWebsiteResponse.Obj: TGetBucketWebsiteResponse;
begin
  Result := Self;
end;

function TGetBucketWebsiteResponse.GetErrorDocument: TErrorDocument;
begin
  Result := FErrorDocument;
end;

procedure TGetBucketWebsiteResponse.SetErrorDocument(const Value: TErrorDocument);
begin
  if FErrorDocument <> Value then
  begin
    if not KeepErrorDocument then
      FErrorDocument.Free;
    FErrorDocument := Value;
  end;
end;

function TGetBucketWebsiteResponse.GetKeepErrorDocument: Boolean;
begin
  Result := FKeepErrorDocument;
end;

procedure TGetBucketWebsiteResponse.SetKeepErrorDocument(const Value: Boolean);
begin
  FKeepErrorDocument := Value;
end;

function TGetBucketWebsiteResponse.IsSetErrorDocument: Boolean;
begin
  Result := FErrorDocument <> nil;
end;

function TGetBucketWebsiteResponse.GetIndexDocument: TIndexDocument;
begin
  Result := FIndexDocument;
end;

procedure TGetBucketWebsiteResponse.SetIndexDocument(const Value: TIndexDocument);
begin
  if FIndexDocument <> Value then
  begin
    if not KeepIndexDocument then
      FIndexDocument.Free;
    FIndexDocument := Value;
  end;
end;

function TGetBucketWebsiteResponse.GetKeepIndexDocument: Boolean;
begin
  Result := FKeepIndexDocument;
end;

procedure TGetBucketWebsiteResponse.SetKeepIndexDocument(const Value: Boolean);
begin
  FKeepIndexDocument := Value;
end;

function TGetBucketWebsiteResponse.IsSetIndexDocument: Boolean;
begin
  Result := FIndexDocument <> nil;
end;

function TGetBucketWebsiteResponse.GetRedirectAllRequestsTo: TRedirectAllRequestsTo;
begin
  Result := FRedirectAllRequestsTo;
end;

procedure TGetBucketWebsiteResponse.SetRedirectAllRequestsTo(const Value: TRedirectAllRequestsTo);
begin
  if FRedirectAllRequestsTo <> Value then
  begin
    if not KeepRedirectAllRequestsTo then
      FRedirectAllRequestsTo.Free;
    FRedirectAllRequestsTo := Value;
  end;
end;

function TGetBucketWebsiteResponse.GetKeepRedirectAllRequestsTo: Boolean;
begin
  Result := FKeepRedirectAllRequestsTo;
end;

procedure TGetBucketWebsiteResponse.SetKeepRedirectAllRequestsTo(const Value: Boolean);
begin
  FKeepRedirectAllRequestsTo := Value;
end;

function TGetBucketWebsiteResponse.IsSetRedirectAllRequestsTo: Boolean;
begin
  Result := FRedirectAllRequestsTo <> nil;
end;

function TGetBucketWebsiteResponse.GetRoutingRules: TObjectList<TRoutingRule>;
begin
  Result := FRoutingRules;
end;

procedure TGetBucketWebsiteResponse.SetRoutingRules(const Value: TObjectList<TRoutingRule>);
begin
  if FRoutingRules <> Value then
  begin
    if not KeepRoutingRules then
      FRoutingRules.Free;
    FRoutingRules := Value;
  end;
end;

function TGetBucketWebsiteResponse.GetKeepRoutingRules: Boolean;
begin
  Result := FKeepRoutingRules;
end;

procedure TGetBucketWebsiteResponse.SetKeepRoutingRules(const Value: Boolean);
begin
  FKeepRoutingRules := Value;
end;

function TGetBucketWebsiteResponse.IsSetRoutingRules: Boolean;
begin
  Result := (FRoutingRules <> nil) and (FRoutingRules.Count > 0);
end;

end.
