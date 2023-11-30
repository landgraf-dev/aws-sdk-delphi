unit AWS.Translate.Model.UpdateParallelDataRequest;

interface

uses
  AWS.Translate.Model.Request, 
  AWS.Nullable, 
  AWS.Translate.Model.ParallelDataConfig;

type
  TUpdateParallelDataRequest = class;
  
  IUpdateParallelDataRequest = interface
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParallelDataConfig: TParallelDataConfig;
    procedure SetParallelDataConfig(const Value: TParallelDataConfig);
    function GetKeepParallelDataConfig: Boolean;
    procedure SetKeepParallelDataConfig(const Value: Boolean);
    function Obj: TUpdateParallelDataRequest;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetParallelDataConfig: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property ParallelDataConfig: TParallelDataConfig read GetParallelDataConfig write SetParallelDataConfig;
    property KeepParallelDataConfig: Boolean read GetKeepParallelDataConfig write SetKeepParallelDataConfig;
  end;
  
  TUpdateParallelDataRequest = class(TAmazonTranslateRequest, IUpdateParallelDataRequest)
  strict private
    FClientToken: Nullable<string>;
    FDescription: Nullable<string>;
    FName: Nullable<string>;
    FParallelDataConfig: TParallelDataConfig;
    FKeepParallelDataConfig: Boolean;
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParallelDataConfig: TParallelDataConfig;
    procedure SetParallelDataConfig(const Value: TParallelDataConfig);
    function GetKeepParallelDataConfig: Boolean;
    procedure SetKeepParallelDataConfig(const Value: Boolean);
  strict protected
    function Obj: TUpdateParallelDataRequest;
  public
    destructor Destroy; override;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetParallelDataConfig: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property ParallelDataConfig: TParallelDataConfig read GetParallelDataConfig write SetParallelDataConfig;
    property KeepParallelDataConfig: Boolean read GetKeepParallelDataConfig write SetKeepParallelDataConfig;
  end;
  
implementation

{ TUpdateParallelDataRequest }

destructor TUpdateParallelDataRequest.Destroy;
begin
  ParallelDataConfig := nil;
  inherited;
end;

function TUpdateParallelDataRequest.Obj: TUpdateParallelDataRequest;
begin
  Result := Self;
end;

function TUpdateParallelDataRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TUpdateParallelDataRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TUpdateParallelDataRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TUpdateParallelDataRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateParallelDataRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateParallelDataRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateParallelDataRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateParallelDataRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateParallelDataRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateParallelDataRequest.GetParallelDataConfig: TParallelDataConfig;
begin
  Result := FParallelDataConfig;
end;

procedure TUpdateParallelDataRequest.SetParallelDataConfig(const Value: TParallelDataConfig);
begin
  if FParallelDataConfig <> Value then
  begin
    if not KeepParallelDataConfig then
      FParallelDataConfig.Free;
    FParallelDataConfig := Value;
  end;
end;

function TUpdateParallelDataRequest.GetKeepParallelDataConfig: Boolean;
begin
  Result := FKeepParallelDataConfig;
end;

procedure TUpdateParallelDataRequest.SetKeepParallelDataConfig(const Value: Boolean);
begin
  FKeepParallelDataConfig := Value;
end;

function TUpdateParallelDataRequest.IsSetParallelDataConfig: Boolean;
begin
  Result := FParallelDataConfig <> nil;
end;

end.
