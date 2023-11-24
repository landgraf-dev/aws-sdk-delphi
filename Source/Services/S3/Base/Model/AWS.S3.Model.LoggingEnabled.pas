unit AWS.S3.Model.LoggingEnabled;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.TargetGrant;

type
  TLoggingEnabled = class;
  
  ILoggingEnabled = interface
    function GetTargetBucket: string;
    procedure SetTargetBucket(const Value: string);
    function GetTargetGrants: TObjectList<TTargetGrant>;
    procedure SetTargetGrants(const Value: TObjectList<TTargetGrant>);
    function GetKeepTargetGrants: Boolean;
    procedure SetKeepTargetGrants(const Value: Boolean);
    function GetTargetPrefix: string;
    procedure SetTargetPrefix(const Value: string);
    function Obj: TLoggingEnabled;
    function IsSetTargetBucket: Boolean;
    function IsSetTargetGrants: Boolean;
    function IsSetTargetPrefix: Boolean;
    property TargetBucket: string read GetTargetBucket write SetTargetBucket;
    property TargetGrants: TObjectList<TTargetGrant> read GetTargetGrants write SetTargetGrants;
    property KeepTargetGrants: Boolean read GetKeepTargetGrants write SetKeepTargetGrants;
    property TargetPrefix: string read GetTargetPrefix write SetTargetPrefix;
  end;
  
  TLoggingEnabled = class
  strict private
    FTargetBucket: Nullable<string>;
    FTargetGrants: TObjectList<TTargetGrant>;
    FKeepTargetGrants: Boolean;
    FTargetPrefix: Nullable<string>;
    function GetTargetBucket: string;
    procedure SetTargetBucket(const Value: string);
    function GetTargetGrants: TObjectList<TTargetGrant>;
    procedure SetTargetGrants(const Value: TObjectList<TTargetGrant>);
    function GetKeepTargetGrants: Boolean;
    procedure SetKeepTargetGrants(const Value: Boolean);
    function GetTargetPrefix: string;
    procedure SetTargetPrefix(const Value: string);
  strict protected
    function Obj: TLoggingEnabled;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTargetBucket: Boolean;
    function IsSetTargetGrants: Boolean;
    function IsSetTargetPrefix: Boolean;
    property TargetBucket: string read GetTargetBucket write SetTargetBucket;
    property TargetGrants: TObjectList<TTargetGrant> read GetTargetGrants write SetTargetGrants;
    property KeepTargetGrants: Boolean read GetKeepTargetGrants write SetKeepTargetGrants;
    property TargetPrefix: string read GetTargetPrefix write SetTargetPrefix;
  end;
  
implementation

{ TLoggingEnabled }

constructor TLoggingEnabled.Create;
begin
  inherited;
  FTargetGrants := TObjectList<TTargetGrant>.Create;
end;

destructor TLoggingEnabled.Destroy;
begin
  TargetGrants := nil;
  inherited;
end;

function TLoggingEnabled.Obj: TLoggingEnabled;
begin
  Result := Self;
end;

function TLoggingEnabled.GetTargetBucket: string;
begin
  Result := FTargetBucket.ValueOrDefault;
end;

procedure TLoggingEnabled.SetTargetBucket(const Value: string);
begin
  FTargetBucket := Value;
end;

function TLoggingEnabled.IsSetTargetBucket: Boolean;
begin
  Result := FTargetBucket.HasValue;
end;

function TLoggingEnabled.GetTargetGrants: TObjectList<TTargetGrant>;
begin
  Result := FTargetGrants;
end;

procedure TLoggingEnabled.SetTargetGrants(const Value: TObjectList<TTargetGrant>);
begin
  if FTargetGrants <> Value then
  begin
    if not KeepTargetGrants then
      FTargetGrants.Free;
    FTargetGrants := Value;
  end;
end;

function TLoggingEnabled.GetKeepTargetGrants: Boolean;
begin
  Result := FKeepTargetGrants;
end;

procedure TLoggingEnabled.SetKeepTargetGrants(const Value: Boolean);
begin
  FKeepTargetGrants := Value;
end;

function TLoggingEnabled.IsSetTargetGrants: Boolean;
begin
  Result := (FTargetGrants <> nil) and (FTargetGrants.Count > 0);
end;

function TLoggingEnabled.GetTargetPrefix: string;
begin
  Result := FTargetPrefix.ValueOrDefault;
end;

procedure TLoggingEnabled.SetTargetPrefix(const Value: string);
begin
  FTargetPrefix := Value;
end;

function TLoggingEnabled.IsSetTargetPrefix: Boolean;
begin
  Result := FTargetPrefix.HasValue;
end;

end.
