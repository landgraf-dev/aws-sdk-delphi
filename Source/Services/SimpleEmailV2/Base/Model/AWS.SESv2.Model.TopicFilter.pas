unit AWS.SESv2.Model.TopicFilter;

interface

uses
  AWS.Nullable;

type
  TTopicFilter = class;
  
  ITopicFilter = interface
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
    function GetUseDefaultIfPreferenceUnavailable: Boolean;
    procedure SetUseDefaultIfPreferenceUnavailable(const Value: Boolean);
    function Obj: TTopicFilter;
    function IsSetTopicName: Boolean;
    function IsSetUseDefaultIfPreferenceUnavailable: Boolean;
    property TopicName: string read GetTopicName write SetTopicName;
    property UseDefaultIfPreferenceUnavailable: Boolean read GetUseDefaultIfPreferenceUnavailable write SetUseDefaultIfPreferenceUnavailable;
  end;
  
  TTopicFilter = class
  strict private
    FTopicName: Nullable<string>;
    FUseDefaultIfPreferenceUnavailable: Nullable<Boolean>;
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
    function GetUseDefaultIfPreferenceUnavailable: Boolean;
    procedure SetUseDefaultIfPreferenceUnavailable(const Value: Boolean);
  strict protected
    function Obj: TTopicFilter;
  public
    function IsSetTopicName: Boolean;
    function IsSetUseDefaultIfPreferenceUnavailable: Boolean;
    property TopicName: string read GetTopicName write SetTopicName;
    property UseDefaultIfPreferenceUnavailable: Boolean read GetUseDefaultIfPreferenceUnavailable write SetUseDefaultIfPreferenceUnavailable;
  end;
  
implementation

{ TTopicFilter }

function TTopicFilter.Obj: TTopicFilter;
begin
  Result := Self;
end;

function TTopicFilter.GetTopicName: string;
begin
  Result := FTopicName.ValueOrDefault;
end;

procedure TTopicFilter.SetTopicName(const Value: string);
begin
  FTopicName := Value;
end;

function TTopicFilter.IsSetTopicName: Boolean;
begin
  Result := FTopicName.HasValue;
end;

function TTopicFilter.GetUseDefaultIfPreferenceUnavailable: Boolean;
begin
  Result := FUseDefaultIfPreferenceUnavailable.ValueOrDefault;
end;

procedure TTopicFilter.SetUseDefaultIfPreferenceUnavailable(const Value: Boolean);
begin
  FUseDefaultIfPreferenceUnavailable := Value;
end;

function TTopicFilter.IsSetUseDefaultIfPreferenceUnavailable: Boolean;
begin
  Result := FUseDefaultIfPreferenceUnavailable.HasValue;
end;

end.
