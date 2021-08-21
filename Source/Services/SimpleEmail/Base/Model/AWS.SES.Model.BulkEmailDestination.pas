unit AWS.SES.Model.BulkEmailDestination;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SES.Model.Destination, 
  AWS.SES.Model.MessageTag;

type
  TBulkEmailDestination = class;
  
  IBulkEmailDestination = interface
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetReplacementTags: TObjectList<TMessageTag>;
    procedure SetReplacementTags(const Value: TObjectList<TMessageTag>);
    function GetKeepReplacementTags: Boolean;
    procedure SetKeepReplacementTags(const Value: Boolean);
    function GetReplacementTemplateData: string;
    procedure SetReplacementTemplateData(const Value: string);
    function Obj: TBulkEmailDestination;
    function IsSetDestination: Boolean;
    function IsSetReplacementTags: Boolean;
    function IsSetReplacementTemplateData: Boolean;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property ReplacementTags: TObjectList<TMessageTag> read GetReplacementTags write SetReplacementTags;
    property KeepReplacementTags: Boolean read GetKeepReplacementTags write SetKeepReplacementTags;
    property ReplacementTemplateData: string read GetReplacementTemplateData write SetReplacementTemplateData;
  end;
  
  TBulkEmailDestination = class
  strict private
    FDestination: TDestination;
    FKeepDestination: Boolean;
    FReplacementTags: TObjectList<TMessageTag>;
    FKeepReplacementTags: Boolean;
    FReplacementTemplateData: Nullable<string>;
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetReplacementTags: TObjectList<TMessageTag>;
    procedure SetReplacementTags(const Value: TObjectList<TMessageTag>);
    function GetKeepReplacementTags: Boolean;
    procedure SetKeepReplacementTags(const Value: Boolean);
    function GetReplacementTemplateData: string;
    procedure SetReplacementTemplateData(const Value: string);
  strict protected
    function Obj: TBulkEmailDestination;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDestination: Boolean;
    function IsSetReplacementTags: Boolean;
    function IsSetReplacementTemplateData: Boolean;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property ReplacementTags: TObjectList<TMessageTag> read GetReplacementTags write SetReplacementTags;
    property KeepReplacementTags: Boolean read GetKeepReplacementTags write SetKeepReplacementTags;
    property ReplacementTemplateData: string read GetReplacementTemplateData write SetReplacementTemplateData;
  end;
  
implementation

{ TBulkEmailDestination }

constructor TBulkEmailDestination.Create;
begin
  inherited;
  FReplacementTags := TObjectList<TMessageTag>.Create;
end;

destructor TBulkEmailDestination.Destroy;
begin
  ReplacementTags := nil;
  Destination := nil;
  inherited;
end;

function TBulkEmailDestination.Obj: TBulkEmailDestination;
begin
  Result := Self;
end;

function TBulkEmailDestination.GetDestination: TDestination;
begin
  Result := FDestination;
end;

procedure TBulkEmailDestination.SetDestination(const Value: TDestination);
begin
  if FDestination <> Value then
  begin
    if not KeepDestination then
      FDestination.Free;
    FDestination := Value;
  end;
end;

function TBulkEmailDestination.GetKeepDestination: Boolean;
begin
  Result := FKeepDestination;
end;

procedure TBulkEmailDestination.SetKeepDestination(const Value: Boolean);
begin
  FKeepDestination := Value;
end;

function TBulkEmailDestination.IsSetDestination: Boolean;
begin
  Result := FDestination <> nil;
end;

function TBulkEmailDestination.GetReplacementTags: TObjectList<TMessageTag>;
begin
  Result := FReplacementTags;
end;

procedure TBulkEmailDestination.SetReplacementTags(const Value: TObjectList<TMessageTag>);
begin
  if FReplacementTags <> Value then
  begin
    if not KeepReplacementTags then
      FReplacementTags.Free;
    FReplacementTags := Value;
  end;
end;

function TBulkEmailDestination.GetKeepReplacementTags: Boolean;
begin
  Result := FKeepReplacementTags;
end;

procedure TBulkEmailDestination.SetKeepReplacementTags(const Value: Boolean);
begin
  FKeepReplacementTags := Value;
end;

function TBulkEmailDestination.IsSetReplacementTags: Boolean;
begin
  Result := (FReplacementTags <> nil) and (FReplacementTags.Count > 0);
end;

function TBulkEmailDestination.GetReplacementTemplateData: string;
begin
  Result := FReplacementTemplateData.ValueOrDefault;
end;

procedure TBulkEmailDestination.SetReplacementTemplateData(const Value: string);
begin
  FReplacementTemplateData := Value;
end;

function TBulkEmailDestination.IsSetReplacementTemplateData: Boolean;
begin
  Result := FReplacementTemplateData.HasValue;
end;

end.
