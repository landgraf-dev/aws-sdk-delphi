unit AWS.S3.Model.ErrorDocument;

interface

uses
  Bcl.Types.Nullable;

type
  TErrorDocument = class;
  
  IErrorDocument = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function Obj: TErrorDocument;
    function IsSetKey: Boolean;
    property Key: string read GetKey write SetKey;
  end;
  
  TErrorDocument = class
  strict private
    FKey: Nullable<string>;
    function GetKey: string;
    procedure SetKey(const Value: string);
  strict protected
    function Obj: TErrorDocument;
  public
    function IsSetKey: Boolean;
    property Key: string read GetKey write SetKey;
  end;
  
implementation

{ TErrorDocument }

function TErrorDocument.Obj: TErrorDocument;
begin
  Result := Self;
end;

function TErrorDocument.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TErrorDocument.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TErrorDocument.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

end.
