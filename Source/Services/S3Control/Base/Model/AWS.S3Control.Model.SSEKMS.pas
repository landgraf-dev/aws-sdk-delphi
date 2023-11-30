unit AWS.S3Control.Model.SSEKMS;

interface

uses
  AWS.Nullable;

type
  TSSEKMS = class;
  
  ISSEKMS = interface
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
    function Obj: TSSEKMS;
    function IsSetKeyId: Boolean;
    property KeyId: string read GetKeyId write SetKeyId;
  end;
  
  TSSEKMS = class
  strict private
    FKeyId: Nullable<string>;
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
  strict protected
    function Obj: TSSEKMS;
  public
    function IsSetKeyId: Boolean;
    property KeyId: string read GetKeyId write SetKeyId;
  end;
  
implementation

{ TSSEKMS }

function TSSEKMS.Obj: TSSEKMS;
begin
  Result := Self;
end;

function TSSEKMS.GetKeyId: string;
begin
  Result := FKeyId.ValueOrDefault;
end;

procedure TSSEKMS.SetKeyId(const Value: string);
begin
  FKeyId := Value;
end;

function TSSEKMS.IsSetKeyId: Boolean;
begin
  Result := FKeyId.HasValue;
end;

end.
