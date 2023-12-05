unit AWS.S3.Model.Error;

interface

uses
  AWS.Nullable;

type
  TError = class;
  
  IError = interface
    function GetCode: string;
    procedure SetCode(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TError;
    function IsSetCode: Boolean;
    function IsSetKey: Boolean;
    function IsSetMessage: Boolean;
    function IsSetVersionId: Boolean;
    property Code: string read GetCode write SetCode;
    property Key: string read GetKey write SetKey;
    property Message: string read GetMessage write SetMessage;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TError = class
  strict private
    FCode: Nullable<string>;
    FKey: Nullable<string>;
    FMessage: Nullable<string>;
    FVersionId: Nullable<string>;
    function GetCode: string;
    procedure SetCode(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TError;
  public
    function IsSetCode: Boolean;
    function IsSetKey: Boolean;
    function IsSetMessage: Boolean;
    function IsSetVersionId: Boolean;
    property Code: string read GetCode write SetCode;
    property Key: string read GetKey write SetKey;
    property Message: string read GetMessage write SetMessage;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TError }

function TError.Obj: TError;
begin
  Result := Self;
end;

function TError.GetCode: string;
begin
  Result := FCode.ValueOrDefault;
end;

procedure TError.SetCode(const Value: string);
begin
  FCode := Value;
end;

function TError.IsSetCode: Boolean;
begin
  Result := FCode.HasValue;
end;

function TError.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TError.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TError.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TError.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TError.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TError.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TError.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TError.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TError.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
