unit AWS.Translate.Model.TerminologyData;

interface

uses
  Bcl.Types.Nullable, 
  System.Classes, 
  AWS.Translate.Enums;

type
  TTerminologyData = class;
  
  ITerminologyData = interface
    function GetFile: TBytesStream;
    procedure SetFile(const Value: TBytesStream);
    function GetKeepFile: Boolean;
    procedure SetKeepFile(const Value: Boolean);
    function GetFormat: TTerminologyDataFormat;
    procedure SetFormat(const Value: TTerminologyDataFormat);
    function Obj: TTerminologyData;
    function IsSetFile: Boolean;
    function IsSetFormat: Boolean;
    property &File: TBytesStream read GetFile write SetFile;
    property KeepFile: Boolean read GetKeepFile write SetKeepFile;
    property Format: TTerminologyDataFormat read GetFormat write SetFormat;
  end;
  
  TTerminologyData = class
  strict private
    FFile: TBytesStream;
    FKeepFile: Boolean;
    FFormat: Nullable<TTerminologyDataFormat>;
    function GetFile: TBytesStream;
    procedure SetFile(const Value: TBytesStream);
    function GetKeepFile: Boolean;
    procedure SetKeepFile(const Value: Boolean);
    function GetFormat: TTerminologyDataFormat;
    procedure SetFormat(const Value: TTerminologyDataFormat);
  strict protected
    function Obj: TTerminologyData;
  public
    destructor Destroy; override;
    function IsSetFile: Boolean;
    function IsSetFormat: Boolean;
    property &File: TBytesStream read GetFile write SetFile;
    property KeepFile: Boolean read GetKeepFile write SetKeepFile;
    property Format: TTerminologyDataFormat read GetFormat write SetFormat;
  end;
  
implementation

{ TTerminologyData }

destructor TTerminologyData.Destroy;
begin
  &File := nil;
  inherited;
end;

function TTerminologyData.Obj: TTerminologyData;
begin
  Result := Self;
end;

function TTerminologyData.GetFile: TBytesStream;
begin
  Result := FFile;
end;

procedure TTerminologyData.SetFile(const Value: TBytesStream);
begin
  if FFile <> Value then
  begin
    if not KeepFile then
      FFile.Free;
    FFile := Value;
  end;
end;

function TTerminologyData.GetKeepFile: Boolean;
begin
  Result := FKeepFile;
end;

procedure TTerminologyData.SetKeepFile(const Value: Boolean);
begin
  FKeepFile := Value;
end;

function TTerminologyData.IsSetFile: Boolean;
begin
  Result := FFile <> nil;
end;

function TTerminologyData.GetFormat: TTerminologyDataFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TTerminologyData.SetFormat(const Value: TTerminologyDataFormat);
begin
  FFormat := Value;
end;

function TTerminologyData.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

end.
