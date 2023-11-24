unit AWS.S3.Model.IndexDocument;

interface

uses
  Bcl.Types.Nullable;

type
  TIndexDocument = class;
  
  IIndexDocument = interface
    function GetSuffix: string;
    procedure SetSuffix(const Value: string);
    function Obj: TIndexDocument;
    function IsSetSuffix: Boolean;
    property Suffix: string read GetSuffix write SetSuffix;
  end;
  
  TIndexDocument = class
  strict private
    FSuffix: Nullable<string>;
    function GetSuffix: string;
    procedure SetSuffix(const Value: string);
  strict protected
    function Obj: TIndexDocument;
  public
    function IsSetSuffix: Boolean;
    property Suffix: string read GetSuffix write SetSuffix;
  end;
  
implementation

{ TIndexDocument }

function TIndexDocument.Obj: TIndexDocument;
begin
  Result := Self;
end;

function TIndexDocument.GetSuffix: string;
begin
  Result := FSuffix.ValueOrDefault;
end;

procedure TIndexDocument.SetSuffix(const Value: string);
begin
  FSuffix := Value;
end;

function TIndexDocument.IsSetSuffix: Boolean;
begin
  Result := FSuffix.HasValue;
end;

end.
