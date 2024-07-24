unit AWS.SSM.Model.OpsItemLimitExceededException;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EOpsItemLimitExceededException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FLimit: Nullable<Integer>;
    FLimitType: Nullable<string>;
    FResourceTypes: TList<string>;
    FKeepResourceTypes: Boolean;
    function GetLimit: Integer;
    procedure SetLimit(const Value: Integer);
    function GetLimitType: string;
    procedure SetLimitType(const Value: string);
    function GetResourceTypes: TList<string>;
    procedure SetResourceTypes(const Value: TList<string>);
    function GetKeepResourceTypes: Boolean;
    procedure SetKeepResourceTypes(const Value: Boolean);
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLimit: Boolean;
    function IsSetLimitType: Boolean;
    function IsSetResourceTypes: Boolean;
    property Limit: Integer read GetLimit write SetLimit;
    property LimitType: string read GetLimitType write SetLimitType;
    property ResourceTypes: TList<string> read GetResourceTypes write SetResourceTypes;
    property KeepResourceTypes: Boolean read GetKeepResourceTypes write SetKeepResourceTypes;
  end;
  
implementation

{ EOpsItemLimitExceededException }

constructor EOpsItemLimitExceededException.Create;
begin
  inherited;
  FResourceTypes := TList<string>.Create;
end;

destructor EOpsItemLimitExceededException.Destroy;
begin
  ResourceTypes := nil;
  inherited;
end;

function EOpsItemLimitExceededException.GetLimit: Integer;
begin
  Result := FLimit.ValueOrDefault;
end;

procedure EOpsItemLimitExceededException.SetLimit(const Value: Integer);
begin
  FLimit := Value;
end;

function EOpsItemLimitExceededException.IsSetLimit: Boolean;
begin
  Result := FLimit.HasValue;
end;

function EOpsItemLimitExceededException.GetLimitType: string;
begin
  Result := FLimitType.ValueOrDefault;
end;

procedure EOpsItemLimitExceededException.SetLimitType(const Value: string);
begin
  FLimitType := Value;
end;

function EOpsItemLimitExceededException.IsSetLimitType: Boolean;
begin
  Result := FLimitType.HasValue;
end;

function EOpsItemLimitExceededException.GetResourceTypes: TList<string>;
begin
  Result := FResourceTypes;
end;

procedure EOpsItemLimitExceededException.SetResourceTypes(const Value: TList<string>);
begin
  if FResourceTypes <> Value then
  begin
    if not KeepResourceTypes then
      FResourceTypes.Free;
    FResourceTypes := Value;
  end;
end;

function EOpsItemLimitExceededException.GetKeepResourceTypes: Boolean;
begin
  Result := FKeepResourceTypes;
end;

procedure EOpsItemLimitExceededException.SetKeepResourceTypes(const Value: Boolean);
begin
  FKeepResourceTypes := Value;
end;

function EOpsItemLimitExceededException.IsSetResourceTypes: Boolean;
begin
  Result := (FResourceTypes <> nil) and (FResourceTypes.Count > 0);
end;

end.
