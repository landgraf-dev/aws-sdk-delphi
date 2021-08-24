unit AWS.SESv2.Model.Content;

interface

uses
  Bcl.Types.Nullable;

type
  TContent = class;
  
  IContent = interface
    function GetCharset: string;
    procedure SetCharset(const Value: string);
    function GetData: string;
    procedure SetData(const Value: string);
    function Obj: TContent;
    function IsSetCharset: Boolean;
    function IsSetData: Boolean;
    property Charset: string read GetCharset write SetCharset;
    property Data: string read GetData write SetData;
  end;
  
  TContent = class
  strict private
    FCharset: Nullable<string>;
    FData: Nullable<string>;
    function GetCharset: string;
    procedure SetCharset(const Value: string);
    function GetData: string;
    procedure SetData(const Value: string);
  strict protected
    function Obj: TContent;
  public
    function IsSetCharset: Boolean;
    function IsSetData: Boolean;
    property Charset: string read GetCharset write SetCharset;
    property Data: string read GetData write SetData;
  end;
  
implementation

{ TContent }

function TContent.Obj: TContent;
begin
  Result := Self;
end;

function TContent.GetCharset: string;
begin
  Result := FCharset.ValueOrDefault;
end;

procedure TContent.SetCharset(const Value: string);
begin
  FCharset := Value;
end;

function TContent.IsSetCharset: Boolean;
begin
  Result := FCharset.HasValue;
end;

function TContent.GetData: string;
begin
  Result := FData.ValueOrDefault;
end;

procedure TContent.SetData(const Value: string);
begin
  FData := Value;
end;

function TContent.IsSetData: Boolean;
begin
  Result := FData.HasValue;
end;

end.
