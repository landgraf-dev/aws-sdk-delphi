unit AWS.SNS.Model.GetSMSAttributesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SNS.Model.Request;

type
  TGetSMSAttributesRequest = class;
  
  IGetSMSAttributesRequest = interface
    function GetAttributes: TList<string>;
    procedure SetAttributes(const Value: TList<string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function Obj: TGetSMSAttributesRequest;
    function IsSetAttributes: Boolean;
    property Attributes: TList<string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
  TGetSMSAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, IGetSMSAttributesRequest)
  strict private
    FAttributes: TList<string>;
    FKeepAttributes: Boolean;
    function GetAttributes: TList<string>;
    procedure SetAttributes(const Value: TList<string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetSMSAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TList<string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
implementation

{ TGetSMSAttributesRequest }

constructor TGetSMSAttributesRequest.Create;
begin
  inherited;
  FAttributes := TList<string>.Create;
end;

destructor TGetSMSAttributesRequest.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TGetSMSAttributesRequest.Obj: TGetSMSAttributesRequest;
begin
  Result := Self;
end;

function TGetSMSAttributesRequest.GetAttributes: TList<string>;
begin
  Result := FAttributes;
end;

procedure TGetSMSAttributesRequest.SetAttributes(const Value: TList<string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetSMSAttributesRequest.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TGetSMSAttributesRequest.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TGetSMSAttributesRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
