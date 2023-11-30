unit AWS.Transcribe.Model.ChannelDefinition;

interface

uses
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TChannelDefinition = class;
  
  IChannelDefinition = interface
    function GetChannelId: Integer;
    procedure SetChannelId(const Value: Integer);
    function GetParticipantRole: TParticipantRole;
    procedure SetParticipantRole(const Value: TParticipantRole);
    function Obj: TChannelDefinition;
    function IsSetChannelId: Boolean;
    function IsSetParticipantRole: Boolean;
    property ChannelId: Integer read GetChannelId write SetChannelId;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
  end;
  
  TChannelDefinition = class
  strict private
    FChannelId: Nullable<Integer>;
    FParticipantRole: Nullable<TParticipantRole>;
    function GetChannelId: Integer;
    procedure SetChannelId(const Value: Integer);
    function GetParticipantRole: TParticipantRole;
    procedure SetParticipantRole(const Value: TParticipantRole);
  strict protected
    function Obj: TChannelDefinition;
  public
    function IsSetChannelId: Boolean;
    function IsSetParticipantRole: Boolean;
    property ChannelId: Integer read GetChannelId write SetChannelId;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
  end;
  
implementation

{ TChannelDefinition }

function TChannelDefinition.Obj: TChannelDefinition;
begin
  Result := Self;
end;

function TChannelDefinition.GetChannelId: Integer;
begin
  Result := FChannelId.ValueOrDefault;
end;

procedure TChannelDefinition.SetChannelId(const Value: Integer);
begin
  FChannelId := Value;
end;

function TChannelDefinition.IsSetChannelId: Boolean;
begin
  Result := FChannelId.HasValue;
end;

function TChannelDefinition.GetParticipantRole: TParticipantRole;
begin
  Result := FParticipantRole.ValueOrDefault;
end;

procedure TChannelDefinition.SetParticipantRole(const Value: TParticipantRole);
begin
  FParticipantRole := Value;
end;

function TChannelDefinition.IsSetParticipantRole: Boolean;
begin
  Result := FParticipantRole.HasValue;
end;

end.
