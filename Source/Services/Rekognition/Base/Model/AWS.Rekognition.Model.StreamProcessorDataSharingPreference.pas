unit AWS.Rekognition.Model.StreamProcessorDataSharingPreference;

interface

uses
  AWS.Nullable;

type
  TStreamProcessorDataSharingPreference = class;
  
  IStreamProcessorDataSharingPreference = interface
    function GetOptIn: Boolean;
    procedure SetOptIn(const Value: Boolean);
    function Obj: TStreamProcessorDataSharingPreference;
    function IsSetOptIn: Boolean;
    property OptIn: Boolean read GetOptIn write SetOptIn;
  end;
  
  TStreamProcessorDataSharingPreference = class
  strict private
    FOptIn: Nullable<Boolean>;
    function GetOptIn: Boolean;
    procedure SetOptIn(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessorDataSharingPreference;
  public
    function IsSetOptIn: Boolean;
    property OptIn: Boolean read GetOptIn write SetOptIn;
  end;
  
implementation

{ TStreamProcessorDataSharingPreference }

function TStreamProcessorDataSharingPreference.Obj: TStreamProcessorDataSharingPreference;
begin
  Result := Self;
end;

function TStreamProcessorDataSharingPreference.GetOptIn: Boolean;
begin
  Result := FOptIn.ValueOrDefault;
end;

procedure TStreamProcessorDataSharingPreference.SetOptIn(const Value: Boolean);
begin
  FOptIn := Value;
end;

function TStreamProcessorDataSharingPreference.IsSetOptIn: Boolean;
begin
  Result := FOptIn.HasValue;
end;

end.
