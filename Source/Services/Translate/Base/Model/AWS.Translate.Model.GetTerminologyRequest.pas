unit AWS.Translate.Model.GetTerminologyRequest;

interface

uses
  AWS.Translate.Model.Request, 
  AWS.Nullable, 
  AWS.Translate.Enums;

type
  TGetTerminologyRequest = class;
  
  IGetTerminologyRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTerminologyDataFormat: TTerminologyDataFormat;
    procedure SetTerminologyDataFormat(const Value: TTerminologyDataFormat);
    function Obj: TGetTerminologyRequest;
    function IsSetName: Boolean;
    function IsSetTerminologyDataFormat: Boolean;
    property Name: string read GetName write SetName;
    property TerminologyDataFormat: TTerminologyDataFormat read GetTerminologyDataFormat write SetTerminologyDataFormat;
  end;
  
  TGetTerminologyRequest = class(TAmazonTranslateRequest, IGetTerminologyRequest)
  strict private
    FName: Nullable<string>;
    FTerminologyDataFormat: Nullable<TTerminologyDataFormat>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTerminologyDataFormat: TTerminologyDataFormat;
    procedure SetTerminologyDataFormat(const Value: TTerminologyDataFormat);
  strict protected
    function Obj: TGetTerminologyRequest;
  public
    function IsSetName: Boolean;
    function IsSetTerminologyDataFormat: Boolean;
    property Name: string read GetName write SetName;
    property TerminologyDataFormat: TTerminologyDataFormat read GetTerminologyDataFormat write SetTerminologyDataFormat;
  end;
  
implementation

{ TGetTerminologyRequest }

function TGetTerminologyRequest.Obj: TGetTerminologyRequest;
begin
  Result := Self;
end;

function TGetTerminologyRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetTerminologyRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetTerminologyRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetTerminologyRequest.GetTerminologyDataFormat: TTerminologyDataFormat;
begin
  Result := FTerminologyDataFormat.ValueOrDefault;
end;

procedure TGetTerminologyRequest.SetTerminologyDataFormat(const Value: TTerminologyDataFormat);
begin
  FTerminologyDataFormat := Value;
end;

function TGetTerminologyRequest.IsSetTerminologyDataFormat: Boolean;
begin
  Result := FTerminologyDataFormat.HasValue;
end;

end.
