unit AWS.Rekognition.Model.StreamProcessingStopSelector;

interface

uses
  Bcl.Types.Nullable;

type
  TStreamProcessingStopSelector = class;
  
  IStreamProcessingStopSelector = interface
    function GetMaxDurationInSeconds: Int64;
    procedure SetMaxDurationInSeconds(const Value: Int64);
    function Obj: TStreamProcessingStopSelector;
    function IsSetMaxDurationInSeconds: Boolean;
    property MaxDurationInSeconds: Int64 read GetMaxDurationInSeconds write SetMaxDurationInSeconds;
  end;
  
  TStreamProcessingStopSelector = class
  strict private
    FMaxDurationInSeconds: Nullable<Int64>;
    function GetMaxDurationInSeconds: Int64;
    procedure SetMaxDurationInSeconds(const Value: Int64);
  strict protected
    function Obj: TStreamProcessingStopSelector;
  public
    function IsSetMaxDurationInSeconds: Boolean;
    property MaxDurationInSeconds: Int64 read GetMaxDurationInSeconds write SetMaxDurationInSeconds;
  end;
  
implementation

{ TStreamProcessingStopSelector }

function TStreamProcessingStopSelector.Obj: TStreamProcessingStopSelector;
begin
  Result := Self;
end;

function TStreamProcessingStopSelector.GetMaxDurationInSeconds: Int64;
begin
  Result := FMaxDurationInSeconds.ValueOrDefault;
end;

procedure TStreamProcessingStopSelector.SetMaxDurationInSeconds(const Value: Int64);
begin
  FMaxDurationInSeconds := Value;
end;

function TStreamProcessingStopSelector.IsSetMaxDurationInSeconds: Boolean;
begin
  Result := FMaxDurationInSeconds.HasValue;
end;

end.
