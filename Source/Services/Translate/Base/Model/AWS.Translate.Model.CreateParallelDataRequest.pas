unit AWS.Translate.Model.CreateParallelDataRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Model.Request, 
  AWS.Translate.Model.EncryptionKey, 
  AWS.Translate.Model.ParallelDataConfig;

type
  TCreateParallelDataRequest = class;
  
  ICreateParallelDataRequest = interface
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParallelDataConfig: TParallelDataConfig;
    procedure SetParallelDataConfig(const Value: TParallelDataConfig);
    function GetKeepParallelDataConfig: Boolean;
    procedure SetKeepParallelDataConfig(const Value: Boolean);
    function Obj: TCreateParallelDataRequest;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetName: Boolean;
    function IsSetParallelDataConfig: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property Name: string read GetName write SetName;
    property ParallelDataConfig: TParallelDataConfig read GetParallelDataConfig write SetParallelDataConfig;
    property KeepParallelDataConfig: Boolean read GetKeepParallelDataConfig write SetKeepParallelDataConfig;
  end;
  
  TCreateParallelDataRequest = class(TAmazonTranslateRequest, ICreateParallelDataRequest)
  strict private
    FClientToken: Nullable<string>;
    FDescription: Nullable<string>;
    FEncryptionKey: TEncryptionKey;
    FKeepEncryptionKey: Boolean;
    FName: Nullable<string>;
    FParallelDataConfig: TParallelDataConfig;
    FKeepParallelDataConfig: Boolean;
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParallelDataConfig: TParallelDataConfig;
    procedure SetParallelDataConfig(const Value: TParallelDataConfig);
    function GetKeepParallelDataConfig: Boolean;
    procedure SetKeepParallelDataConfig(const Value: Boolean);
  strict protected
    function Obj: TCreateParallelDataRequest;
  public
    destructor Destroy; override;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetName: Boolean;
    function IsSetParallelDataConfig: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property Name: string read GetName write SetName;
    property ParallelDataConfig: TParallelDataConfig read GetParallelDataConfig write SetParallelDataConfig;
    property KeepParallelDataConfig: Boolean read GetKeepParallelDataConfig write SetKeepParallelDataConfig;
  end;
  
implementation

{ TCreateParallelDataRequest }

destructor TCreateParallelDataRequest.Destroy;
begin
  ParallelDataConfig := nil;
  EncryptionKey := nil;
  inherited;
end;

function TCreateParallelDataRequest.Obj: TCreateParallelDataRequest;
begin
  Result := Self;
end;

function TCreateParallelDataRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TCreateParallelDataRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TCreateParallelDataRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TCreateParallelDataRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TCreateParallelDataRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TCreateParallelDataRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TCreateParallelDataRequest.GetEncryptionKey: TEncryptionKey;
begin
  Result := FEncryptionKey;
end;

procedure TCreateParallelDataRequest.SetEncryptionKey(const Value: TEncryptionKey);
begin
  if FEncryptionKey <> Value then
  begin
    if not KeepEncryptionKey then
      FEncryptionKey.Free;
    FEncryptionKey := Value;
  end;
end;

function TCreateParallelDataRequest.GetKeepEncryptionKey: Boolean;
begin
  Result := FKeepEncryptionKey;
end;

procedure TCreateParallelDataRequest.SetKeepEncryptionKey(const Value: Boolean);
begin
  FKeepEncryptionKey := Value;
end;

function TCreateParallelDataRequest.IsSetEncryptionKey: Boolean;
begin
  Result := FEncryptionKey <> nil;
end;

function TCreateParallelDataRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateParallelDataRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateParallelDataRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateParallelDataRequest.GetParallelDataConfig: TParallelDataConfig;
begin
  Result := FParallelDataConfig;
end;

procedure TCreateParallelDataRequest.SetParallelDataConfig(const Value: TParallelDataConfig);
begin
  if FParallelDataConfig <> Value then
  begin
    if not KeepParallelDataConfig then
      FParallelDataConfig.Free;
    FParallelDataConfig := Value;
  end;
end;

function TCreateParallelDataRequest.GetKeepParallelDataConfig: Boolean;
begin
  Result := FKeepParallelDataConfig;
end;

procedure TCreateParallelDataRequest.SetKeepParallelDataConfig(const Value: Boolean);
begin
  FKeepParallelDataConfig := Value;
end;

function TCreateParallelDataRequest.IsSetParallelDataConfig: Boolean;
begin
  Result := FParallelDataConfig <> nil;
end;

end.
