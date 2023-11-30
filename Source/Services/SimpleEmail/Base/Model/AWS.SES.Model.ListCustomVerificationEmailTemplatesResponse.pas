unit AWS.SES.Model.ListCustomVerificationEmailTemplatesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CustomVerificationEmailTemplate, 
  AWS.Nullable;

type
  TListCustomVerificationEmailTemplatesResponse = class;
  
  IListCustomVerificationEmailTemplatesResponse = interface(IAmazonWebServiceResponse)
    function GetCustomVerificationEmailTemplates: TObjectList<TCustomVerificationEmailTemplate>;
    procedure SetCustomVerificationEmailTemplates(const Value: TObjectList<TCustomVerificationEmailTemplate>);
    function GetKeepCustomVerificationEmailTemplates: Boolean;
    procedure SetKeepCustomVerificationEmailTemplates(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCustomVerificationEmailTemplatesResponse;
    function IsSetCustomVerificationEmailTemplates: Boolean;
    function IsSetNextToken: Boolean;
    property CustomVerificationEmailTemplates: TObjectList<TCustomVerificationEmailTemplate> read GetCustomVerificationEmailTemplates write SetCustomVerificationEmailTemplates;
    property KeepCustomVerificationEmailTemplates: Boolean read GetKeepCustomVerificationEmailTemplates write SetKeepCustomVerificationEmailTemplates;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCustomVerificationEmailTemplatesResponse = class(TAmazonWebServiceResponse, IListCustomVerificationEmailTemplatesResponse)
  strict private
    FCustomVerificationEmailTemplates: TObjectList<TCustomVerificationEmailTemplate>;
    FKeepCustomVerificationEmailTemplates: Boolean;
    FNextToken: Nullable<string>;
    function GetCustomVerificationEmailTemplates: TObjectList<TCustomVerificationEmailTemplate>;
    procedure SetCustomVerificationEmailTemplates(const Value: TObjectList<TCustomVerificationEmailTemplate>);
    function GetKeepCustomVerificationEmailTemplates: Boolean;
    procedure SetKeepCustomVerificationEmailTemplates(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCustomVerificationEmailTemplatesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCustomVerificationEmailTemplates: Boolean;
    function IsSetNextToken: Boolean;
    property CustomVerificationEmailTemplates: TObjectList<TCustomVerificationEmailTemplate> read GetCustomVerificationEmailTemplates write SetCustomVerificationEmailTemplates;
    property KeepCustomVerificationEmailTemplates: Boolean read GetKeepCustomVerificationEmailTemplates write SetKeepCustomVerificationEmailTemplates;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCustomVerificationEmailTemplatesResponse }

constructor TListCustomVerificationEmailTemplatesResponse.Create;
begin
  inherited;
  FCustomVerificationEmailTemplates := TObjectList<TCustomVerificationEmailTemplate>.Create;
end;

destructor TListCustomVerificationEmailTemplatesResponse.Destroy;
begin
  CustomVerificationEmailTemplates := nil;
  inherited;
end;

function TListCustomVerificationEmailTemplatesResponse.Obj: TListCustomVerificationEmailTemplatesResponse;
begin
  Result := Self;
end;

function TListCustomVerificationEmailTemplatesResponse.GetCustomVerificationEmailTemplates: TObjectList<TCustomVerificationEmailTemplate>;
begin
  Result := FCustomVerificationEmailTemplates;
end;

procedure TListCustomVerificationEmailTemplatesResponse.SetCustomVerificationEmailTemplates(const Value: TObjectList<TCustomVerificationEmailTemplate>);
begin
  if FCustomVerificationEmailTemplates <> Value then
  begin
    if not KeepCustomVerificationEmailTemplates then
      FCustomVerificationEmailTemplates.Free;
    FCustomVerificationEmailTemplates := Value;
  end;
end;

function TListCustomVerificationEmailTemplatesResponse.GetKeepCustomVerificationEmailTemplates: Boolean;
begin
  Result := FKeepCustomVerificationEmailTemplates;
end;

procedure TListCustomVerificationEmailTemplatesResponse.SetKeepCustomVerificationEmailTemplates(const Value: Boolean);
begin
  FKeepCustomVerificationEmailTemplates := Value;
end;

function TListCustomVerificationEmailTemplatesResponse.IsSetCustomVerificationEmailTemplates: Boolean;
begin
  Result := (FCustomVerificationEmailTemplates <> nil) and (FCustomVerificationEmailTemplates.Count > 0);
end;

function TListCustomVerificationEmailTemplatesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCustomVerificationEmailTemplatesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCustomVerificationEmailTemplatesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
