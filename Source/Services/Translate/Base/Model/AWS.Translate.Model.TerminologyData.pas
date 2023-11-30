unit AWS.Translate.Model.TerminologyData;

interface

uses
  AWS.Nullable, 
  AWS.Translate.Enums, 
  System.Classes;

type
  TTerminologyData = class;
  
  ITerminologyData = interface
    function GetDirectionality: TDirectionality;
    procedure SetDirectionality(const Value: TDirectionality);
    function GetFile: TBytesStream;
    procedure SetFile(const Value: TBytesStream);
    function GetKeepFile: Boolean;
    procedure SetKeepFile(const Value: Boolean);
    function GetFormat: TTerminologyDataFormat;
    procedure SetFormat(const Value: TTerminologyDataFormat);
    function Obj: TTerminologyData;
    function IsSetDirectionality: Boolean;
    function IsSetFile: Boolean;
    function IsSetFormat: Boolean;
    property Directionality: TDirectionality read GetDirectionality write SetDirectionality;
    property &File: TBytesStream read GetFile write SetFile;
    property KeepFile: Boolean read GetKeepFile write SetKeepFile;
    property Format: TTerminologyDataFormat read GetFormat write SetFormat;
  end;
  
  TTerminologyData = class
  strict private
    FDirectionality: Nullable<TDirectionality>;
    FFile: TBytesStream;
    FKeepFile: Boolean;
    FFormat: Nullable<TTerminologyDataFormat>;
    function GetDirectionality: TDirectionality;
    procedure SetDirectionality(const Value: TDirectionality);
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
    function IsSetDirectionality: Boolean;
    function IsSetFile: Boolean;
    function IsSetFormat: Boolean;
    property Directionality: TDirectionality read GetDirectionality write SetDirectionality;
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

function TTerminologyData.GetDirectionality: TDirectionality;
begin
  Result := FDirectionality.ValueOrDefault;
end;

procedure TTerminologyData.SetDirectionality(const Value: TDirectionality);
begin
  FDirectionality := Value;
end;

function TTerminologyData.IsSetDirectionality: Boolean;
begin
  Result := FDirectionality.HasValue;
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
