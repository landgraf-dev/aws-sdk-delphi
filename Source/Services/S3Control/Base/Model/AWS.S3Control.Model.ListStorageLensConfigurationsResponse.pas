unit AWS.S3Control.Model.ListStorageLensConfigurationsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ListStorageLensConfigurationEntry;

type
  TListStorageLensConfigurationsResponse = class;
  
  IListStorageLensConfigurationsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStorageLensConfigurationList: TObjectList<TListStorageLensConfigurationEntry>;
    procedure SetStorageLensConfigurationList(const Value: TObjectList<TListStorageLensConfigurationEntry>);
    function GetKeepStorageLensConfigurationList: Boolean;
    procedure SetKeepStorageLensConfigurationList(const Value: Boolean);
    function Obj: TListStorageLensConfigurationsResponse;
    function IsSetNextToken: Boolean;
    function IsSetStorageLensConfigurationList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property StorageLensConfigurationList: TObjectList<TListStorageLensConfigurationEntry> read GetStorageLensConfigurationList write SetStorageLensConfigurationList;
    property KeepStorageLensConfigurationList: Boolean read GetKeepStorageLensConfigurationList write SetKeepStorageLensConfigurationList;
  end;
  
  TListStorageLensConfigurationsResponse = class(TAmazonWebServiceResponse, IListStorageLensConfigurationsResponse)
  strict private
    FNextToken: Nullable<string>;
    FStorageLensConfigurationList: TObjectList<TListStorageLensConfigurationEntry>;
    FKeepStorageLensConfigurationList: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStorageLensConfigurationList: TObjectList<TListStorageLensConfigurationEntry>;
    procedure SetStorageLensConfigurationList(const Value: TObjectList<TListStorageLensConfigurationEntry>);
    function GetKeepStorageLensConfigurationList: Boolean;
    procedure SetKeepStorageLensConfigurationList(const Value: Boolean);
  strict protected
    function Obj: TListStorageLensConfigurationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetStorageLensConfigurationList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property StorageLensConfigurationList: TObjectList<TListStorageLensConfigurationEntry> read GetStorageLensConfigurationList write SetStorageLensConfigurationList;
    property KeepStorageLensConfigurationList: Boolean read GetKeepStorageLensConfigurationList write SetKeepStorageLensConfigurationList;
  end;
  
implementation

{ TListStorageLensConfigurationsResponse }

constructor TListStorageLensConfigurationsResponse.Create;
begin
  inherited;
  FStorageLensConfigurationList := TObjectList<TListStorageLensConfigurationEntry>.Create;
end;

destructor TListStorageLensConfigurationsResponse.Destroy;
begin
  StorageLensConfigurationList := nil;
  inherited;
end;

function TListStorageLensConfigurationsResponse.Obj: TListStorageLensConfigurationsResponse;
begin
  Result := Self;
end;

function TListStorageLensConfigurationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListStorageLensConfigurationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListStorageLensConfigurationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListStorageLensConfigurationsResponse.GetStorageLensConfigurationList: TObjectList<TListStorageLensConfigurationEntry>;
begin
  Result := FStorageLensConfigurationList;
end;

procedure TListStorageLensConfigurationsResponse.SetStorageLensConfigurationList(const Value: TObjectList<TListStorageLensConfigurationEntry>);
begin
  if FStorageLensConfigurationList <> Value then
  begin
    if not KeepStorageLensConfigurationList then
      FStorageLensConfigurationList.Free;
    FStorageLensConfigurationList := Value;
  end;
end;

function TListStorageLensConfigurationsResponse.GetKeepStorageLensConfigurationList: Boolean;
begin
  Result := FKeepStorageLensConfigurationList;
end;

procedure TListStorageLensConfigurationsResponse.SetKeepStorageLensConfigurationList(const Value: Boolean);
begin
  FKeepStorageLensConfigurationList := Value;
end;

function TListStorageLensConfigurationsResponse.IsSetStorageLensConfigurationList: Boolean;
begin
  Result := (FStorageLensConfigurationList <> nil) and (FStorageLensConfigurationList.Count > 0);
end;

end.
