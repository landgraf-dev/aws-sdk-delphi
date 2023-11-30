unit AWS.SESv2.Model.CreateDedicatedIpPoolRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Model.Tag;

type
  TCreateDedicatedIpPoolRequest = class;
  
  ICreateDedicatedIpPoolRequest = interface
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateDedicatedIpPoolRequest;
    function IsSetPoolName: Boolean;
    function IsSetTags: Boolean;
    property PoolName: string read GetPoolName write SetPoolName;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateDedicatedIpPoolRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateDedicatedIpPoolRequest)
  strict private
    FPoolName: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateDedicatedIpPoolRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPoolName: Boolean;
    function IsSetTags: Boolean;
    property PoolName: string read GetPoolName write SetPoolName;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateDedicatedIpPoolRequest }

constructor TCreateDedicatedIpPoolRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateDedicatedIpPoolRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TCreateDedicatedIpPoolRequest.Obj: TCreateDedicatedIpPoolRequest;
begin
  Result := Self;
end;

function TCreateDedicatedIpPoolRequest.GetPoolName: string;
begin
  Result := FPoolName.ValueOrDefault;
end;

procedure TCreateDedicatedIpPoolRequest.SetPoolName(const Value: string);
begin
  FPoolName := Value;
end;

function TCreateDedicatedIpPoolRequest.IsSetPoolName: Boolean;
begin
  Result := FPoolName.HasValue;
end;

function TCreateDedicatedIpPoolRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateDedicatedIpPoolRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateDedicatedIpPoolRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateDedicatedIpPoolRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateDedicatedIpPoolRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
