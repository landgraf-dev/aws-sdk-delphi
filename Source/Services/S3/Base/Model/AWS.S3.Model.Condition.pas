unit AWS.S3.Model.Condition;

interface

uses
  Bcl.Types.Nullable;

type
  TCondition = class;
  
  ICondition = interface
    function GetHttpErrorCodeReturnedEquals: string;
    procedure SetHttpErrorCodeReturnedEquals(const Value: string);
    function GetKeyPrefixEquals: string;
    procedure SetKeyPrefixEquals(const Value: string);
    function Obj: TCondition;
    function IsSetHttpErrorCodeReturnedEquals: Boolean;
    function IsSetKeyPrefixEquals: Boolean;
    property HttpErrorCodeReturnedEquals: string read GetHttpErrorCodeReturnedEquals write SetHttpErrorCodeReturnedEquals;
    property KeyPrefixEquals: string read GetKeyPrefixEquals write SetKeyPrefixEquals;
  end;
  
  TCondition = class
  strict private
    FHttpErrorCodeReturnedEquals: Nullable<string>;
    FKeyPrefixEquals: Nullable<string>;
    function GetHttpErrorCodeReturnedEquals: string;
    procedure SetHttpErrorCodeReturnedEquals(const Value: string);
    function GetKeyPrefixEquals: string;
    procedure SetKeyPrefixEquals(const Value: string);
  strict protected
    function Obj: TCondition;
  public
    function IsSetHttpErrorCodeReturnedEquals: Boolean;
    function IsSetKeyPrefixEquals: Boolean;
    property HttpErrorCodeReturnedEquals: string read GetHttpErrorCodeReturnedEquals write SetHttpErrorCodeReturnedEquals;
    property KeyPrefixEquals: string read GetKeyPrefixEquals write SetKeyPrefixEquals;
  end;
  
implementation

{ TCondition }

function TCondition.Obj: TCondition;
begin
  Result := Self;
end;

function TCondition.GetHttpErrorCodeReturnedEquals: string;
begin
  Result := FHttpErrorCodeReturnedEquals.ValueOrDefault;
end;

procedure TCondition.SetHttpErrorCodeReturnedEquals(const Value: string);
begin
  FHttpErrorCodeReturnedEquals := Value;
end;

function TCondition.IsSetHttpErrorCodeReturnedEquals: Boolean;
begin
  Result := FHttpErrorCodeReturnedEquals.HasValue;
end;

function TCondition.GetKeyPrefixEquals: string;
begin
  Result := FKeyPrefixEquals.ValueOrDefault;
end;

procedure TCondition.SetKeyPrefixEquals(const Value: string);
begin
  FKeyPrefixEquals := Value;
end;

function TCondition.IsSetKeyPrefixEquals: Boolean;
begin
  Result := FKeyPrefixEquals.HasValue;
end;

end.
