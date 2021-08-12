unit AWS.SNS.Model.GetSMSAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetSMSAttributesResponse = class;
  
  IGetSMSAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function Obj: TGetSMSAttributesResponse;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
  end;
  
  TGetSMSAttributesResponse = class(TAmazonWebServiceResponse, IGetSMSAttributesResponse)
  strict private
    FAttributes: TDictionary<string, string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
  strict protected
    function Obj: TGetSMSAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
  end;
  
implementation

{ TGetSMSAttributesResponse }

constructor TGetSMSAttributesResponse.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TGetSMSAttributesResponse.Destroy;
begin
  FAttributes.Free;
  inherited;
end;

function TGetSMSAttributesResponse.Obj: TGetSMSAttributesResponse;
begin
  Result := Self;
end;

function TGetSMSAttributesResponse.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TGetSMSAttributesResponse.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetSMSAttributesResponse.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
