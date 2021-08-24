unit AWS.SESv2.Model.ListEmailTemplatesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.EmailTemplateMetadata;

type
  TListEmailTemplatesResponse = class;
  
  IListEmailTemplatesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTemplatesMetadata: TObjectList<TEmailTemplateMetadata>;
    procedure SetTemplatesMetadata(const Value: TObjectList<TEmailTemplateMetadata>);
    function GetKeepTemplatesMetadata: Boolean;
    procedure SetKeepTemplatesMetadata(const Value: Boolean);
    function Obj: TListEmailTemplatesResponse;
    function IsSetNextToken: Boolean;
    function IsSetTemplatesMetadata: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TemplatesMetadata: TObjectList<TEmailTemplateMetadata> read GetTemplatesMetadata write SetTemplatesMetadata;
    property KeepTemplatesMetadata: Boolean read GetKeepTemplatesMetadata write SetKeepTemplatesMetadata;
  end;
  
  TListEmailTemplatesResponse = class(TAmazonWebServiceResponse, IListEmailTemplatesResponse)
  strict private
    FNextToken: Nullable<string>;
    FTemplatesMetadata: TObjectList<TEmailTemplateMetadata>;
    FKeepTemplatesMetadata: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTemplatesMetadata: TObjectList<TEmailTemplateMetadata>;
    procedure SetTemplatesMetadata(const Value: TObjectList<TEmailTemplateMetadata>);
    function GetKeepTemplatesMetadata: Boolean;
    procedure SetKeepTemplatesMetadata(const Value: Boolean);
  strict protected
    function Obj: TListEmailTemplatesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetTemplatesMetadata: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TemplatesMetadata: TObjectList<TEmailTemplateMetadata> read GetTemplatesMetadata write SetTemplatesMetadata;
    property KeepTemplatesMetadata: Boolean read GetKeepTemplatesMetadata write SetKeepTemplatesMetadata;
  end;
  
implementation

{ TListEmailTemplatesResponse }

constructor TListEmailTemplatesResponse.Create;
begin
  inherited;
  FTemplatesMetadata := TObjectList<TEmailTemplateMetadata>.Create;
end;

destructor TListEmailTemplatesResponse.Destroy;
begin
  TemplatesMetadata := nil;
  inherited;
end;

function TListEmailTemplatesResponse.Obj: TListEmailTemplatesResponse;
begin
  Result := Self;
end;

function TListEmailTemplatesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListEmailTemplatesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListEmailTemplatesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListEmailTemplatesResponse.GetTemplatesMetadata: TObjectList<TEmailTemplateMetadata>;
begin
  Result := FTemplatesMetadata;
end;

procedure TListEmailTemplatesResponse.SetTemplatesMetadata(const Value: TObjectList<TEmailTemplateMetadata>);
begin
  if FTemplatesMetadata <> Value then
  begin
    if not KeepTemplatesMetadata then
      FTemplatesMetadata.Free;
    FTemplatesMetadata := Value;
  end;
end;

function TListEmailTemplatesResponse.GetKeepTemplatesMetadata: Boolean;
begin
  Result := FKeepTemplatesMetadata;
end;

procedure TListEmailTemplatesResponse.SetKeepTemplatesMetadata(const Value: Boolean);
begin
  FKeepTemplatesMetadata := Value;
end;

function TListEmailTemplatesResponse.IsSetTemplatesMetadata: Boolean;
begin
  Result := (FTemplatesMetadata <> nil) and (FTemplatesMetadata.Count > 0);
end;

end.
