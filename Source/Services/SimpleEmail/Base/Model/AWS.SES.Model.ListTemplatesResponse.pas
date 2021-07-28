unit AWS.SES.Model.ListTemplatesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.TemplateMetadata;

type
  TListTemplatesResponse = class;
  
  IListTemplatesResponse = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTemplatesMetadata: TObjectList<TTemplateMetadata>;
    procedure SetTemplatesMetadata(const Value: TObjectList<TTemplateMetadata>);
    function Obj: TListTemplatesResponse;
    function IsSetNextToken: Boolean;
    function IsSetTemplatesMetadata: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TemplatesMetadata: TObjectList<TTemplateMetadata> read GetTemplatesMetadata write SetTemplatesMetadata;
  end;
  
  TListTemplatesResponse = class(TAmazonWebServiceResponse, IListTemplatesResponse)
  strict private
    FNextToken: Nullable<string>;
    FTemplatesMetadata: TObjectList<TTemplateMetadata>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTemplatesMetadata: TObjectList<TTemplateMetadata>;
    procedure SetTemplatesMetadata(const Value: TObjectList<TTemplateMetadata>);
  strict protected
    function Obj: TListTemplatesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetTemplatesMetadata: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TemplatesMetadata: TObjectList<TTemplateMetadata> read GetTemplatesMetadata write SetTemplatesMetadata;
  end;
  
implementation

{ TListTemplatesResponse }

constructor TListTemplatesResponse.Create;
begin
  inherited;
  FTemplatesMetadata := TObjectList<TTemplateMetadata>.Create;
end;

destructor TListTemplatesResponse.Destroy;
begin
  FTemplatesMetadata.Free;
  inherited;
end;

function TListTemplatesResponse.Obj: TListTemplatesResponse;
begin
  Result := Self;
end;

function TListTemplatesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTemplatesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTemplatesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListTemplatesResponse.GetTemplatesMetadata: TObjectList<TTemplateMetadata>;
begin
  Result := FTemplatesMetadata;
end;

procedure TListTemplatesResponse.SetTemplatesMetadata(const Value: TObjectList<TTemplateMetadata>);
begin
  if FTemplatesMetadata <> Value then
  begin
    FTemplatesMetadata.Free;
    FTemplatesMetadata := Value;
  end;
end;

function TListTemplatesResponse.IsSetTemplatesMetadata: Boolean;
begin
  Result := (FTemplatesMetadata <> nil) and (FTemplatesMetadata.Count > 0);
end;

end.
