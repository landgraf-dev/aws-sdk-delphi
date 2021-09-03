unit AWS.Rekognition.Model.ModerationLabel;

interface

uses
  Bcl.Types.Nullable;

type
  TModerationLabel = class;
  
  IModerationLabel = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParentName: string;
    procedure SetParentName(const Value: string);
    function Obj: TModerationLabel;
    function IsSetConfidence: Boolean;
    function IsSetName: Boolean;
    function IsSetParentName: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Name: string read GetName write SetName;
    property ParentName: string read GetParentName write SetParentName;
  end;
  
  TModerationLabel = class
  strict private
    FConfidence: Nullable<Double>;
    FName: Nullable<string>;
    FParentName: Nullable<string>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParentName: string;
    procedure SetParentName(const Value: string);
  strict protected
    function Obj: TModerationLabel;
  public
    function IsSetConfidence: Boolean;
    function IsSetName: Boolean;
    function IsSetParentName: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Name: string read GetName write SetName;
    property ParentName: string read GetParentName write SetParentName;
  end;
  
implementation

{ TModerationLabel }

function TModerationLabel.Obj: TModerationLabel;
begin
  Result := Self;
end;

function TModerationLabel.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TModerationLabel.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TModerationLabel.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TModerationLabel.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TModerationLabel.SetName(const Value: string);
begin
  FName := Value;
end;

function TModerationLabel.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TModerationLabel.GetParentName: string;
begin
  Result := FParentName.ValueOrDefault;
end;

procedure TModerationLabel.SetParentName(const Value: string);
begin
  FParentName := Value;
end;

function TModerationLabel.IsSetParentName: Boolean;
begin
  Result := FParentName.HasValue;
end;

end.
