unit AWS.SNS.Model.GetTopicAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetTopicAttributesResponse = class;
  
  IGetTopicAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function Obj: TGetTopicAttributesResponse;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
  TGetTopicAttributesResponse = class(TAmazonWebServiceResponse, IGetTopicAttributesResponse)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetTopicAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
implementation

{ TGetTopicAttributesResponse }

constructor TGetTopicAttributesResponse.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TGetTopicAttributesResponse.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TGetTopicAttributesResponse.Obj: TGetTopicAttributesResponse;
begin
  Result := Self;
end;

function TGetTopicAttributesResponse.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TGetTopicAttributesResponse.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetTopicAttributesResponse.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TGetTopicAttributesResponse.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TGetTopicAttributesResponse.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
