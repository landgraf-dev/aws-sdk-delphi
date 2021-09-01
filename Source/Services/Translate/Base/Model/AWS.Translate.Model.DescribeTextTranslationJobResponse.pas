unit AWS.Translate.Model.DescribeTextTranslationJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Translate.Model.TextTranslationJobProperties;

type
  TDescribeTextTranslationJobResponse = class;
  
  IDescribeTextTranslationJobResponse = interface(IAmazonWebServiceResponse)
    function GetTextTranslationJobProperties: TTextTranslationJobProperties;
    procedure SetTextTranslationJobProperties(const Value: TTextTranslationJobProperties);
    function GetKeepTextTranslationJobProperties: Boolean;
    procedure SetKeepTextTranslationJobProperties(const Value: Boolean);
    function Obj: TDescribeTextTranslationJobResponse;
    function IsSetTextTranslationJobProperties: Boolean;
    property TextTranslationJobProperties: TTextTranslationJobProperties read GetTextTranslationJobProperties write SetTextTranslationJobProperties;
    property KeepTextTranslationJobProperties: Boolean read GetKeepTextTranslationJobProperties write SetKeepTextTranslationJobProperties;
  end;
  
  TDescribeTextTranslationJobResponse = class(TAmazonWebServiceResponse, IDescribeTextTranslationJobResponse)
  strict private
    FTextTranslationJobProperties: TTextTranslationJobProperties;
    FKeepTextTranslationJobProperties: Boolean;
    function GetTextTranslationJobProperties: TTextTranslationJobProperties;
    procedure SetTextTranslationJobProperties(const Value: TTextTranslationJobProperties);
    function GetKeepTextTranslationJobProperties: Boolean;
    procedure SetKeepTextTranslationJobProperties(const Value: Boolean);
  strict protected
    function Obj: TDescribeTextTranslationJobResponse;
  public
    destructor Destroy; override;
    function IsSetTextTranslationJobProperties: Boolean;
    property TextTranslationJobProperties: TTextTranslationJobProperties read GetTextTranslationJobProperties write SetTextTranslationJobProperties;
    property KeepTextTranslationJobProperties: Boolean read GetKeepTextTranslationJobProperties write SetKeepTextTranslationJobProperties;
  end;
  
implementation

{ TDescribeTextTranslationJobResponse }

destructor TDescribeTextTranslationJobResponse.Destroy;
begin
  TextTranslationJobProperties := nil;
  inherited;
end;

function TDescribeTextTranslationJobResponse.Obj: TDescribeTextTranslationJobResponse;
begin
  Result := Self;
end;

function TDescribeTextTranslationJobResponse.GetTextTranslationJobProperties: TTextTranslationJobProperties;
begin
  Result := FTextTranslationJobProperties;
end;

procedure TDescribeTextTranslationJobResponse.SetTextTranslationJobProperties(const Value: TTextTranslationJobProperties);
begin
  if FTextTranslationJobProperties <> Value then
  begin
    if not KeepTextTranslationJobProperties then
      FTextTranslationJobProperties.Free;
    FTextTranslationJobProperties := Value;
  end;
end;

function TDescribeTextTranslationJobResponse.GetKeepTextTranslationJobProperties: Boolean;
begin
  Result := FKeepTextTranslationJobProperties;
end;

procedure TDescribeTextTranslationJobResponse.SetKeepTextTranslationJobProperties(const Value: Boolean);
begin
  FKeepTextTranslationJobProperties := Value;
end;

function TDescribeTextTranslationJobResponse.IsSetTextTranslationJobProperties: Boolean;
begin
  Result := FTextTranslationJobProperties <> nil;
end;

end.
