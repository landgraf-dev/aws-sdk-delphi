unit AWS.SESv2.Model.BulkEmailEntry;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Destination, 
  AWS.SESv2.Model.ReplacementEmailContent, 
  AWS.SESv2.Model.MessageTag;

type
  TBulkEmailEntry = class;
  
  IBulkEmailEntry = interface
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetReplacementEmailContent: TReplacementEmailContent;
    procedure SetReplacementEmailContent(const Value: TReplacementEmailContent);
    function GetKeepReplacementEmailContent: Boolean;
    procedure SetKeepReplacementEmailContent(const Value: Boolean);
    function GetReplacementTags: TObjectList<TMessageTag>;
    procedure SetReplacementTags(const Value: TObjectList<TMessageTag>);
    function GetKeepReplacementTags: Boolean;
    procedure SetKeepReplacementTags(const Value: Boolean);
    function Obj: TBulkEmailEntry;
    function IsSetDestination: Boolean;
    function IsSetReplacementEmailContent: Boolean;
    function IsSetReplacementTags: Boolean;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property ReplacementEmailContent: TReplacementEmailContent read GetReplacementEmailContent write SetReplacementEmailContent;
    property KeepReplacementEmailContent: Boolean read GetKeepReplacementEmailContent write SetKeepReplacementEmailContent;
    property ReplacementTags: TObjectList<TMessageTag> read GetReplacementTags write SetReplacementTags;
    property KeepReplacementTags: Boolean read GetKeepReplacementTags write SetKeepReplacementTags;
  end;
  
  TBulkEmailEntry = class
  strict private
    FDestination: TDestination;
    FKeepDestination: Boolean;
    FReplacementEmailContent: TReplacementEmailContent;
    FKeepReplacementEmailContent: Boolean;
    FReplacementTags: TObjectList<TMessageTag>;
    FKeepReplacementTags: Boolean;
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetReplacementEmailContent: TReplacementEmailContent;
    procedure SetReplacementEmailContent(const Value: TReplacementEmailContent);
    function GetKeepReplacementEmailContent: Boolean;
    procedure SetKeepReplacementEmailContent(const Value: Boolean);
    function GetReplacementTags: TObjectList<TMessageTag>;
    procedure SetReplacementTags(const Value: TObjectList<TMessageTag>);
    function GetKeepReplacementTags: Boolean;
    procedure SetKeepReplacementTags(const Value: Boolean);
  strict protected
    function Obj: TBulkEmailEntry;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDestination: Boolean;
    function IsSetReplacementEmailContent: Boolean;
    function IsSetReplacementTags: Boolean;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property ReplacementEmailContent: TReplacementEmailContent read GetReplacementEmailContent write SetReplacementEmailContent;
    property KeepReplacementEmailContent: Boolean read GetKeepReplacementEmailContent write SetKeepReplacementEmailContent;
    property ReplacementTags: TObjectList<TMessageTag> read GetReplacementTags write SetReplacementTags;
    property KeepReplacementTags: Boolean read GetKeepReplacementTags write SetKeepReplacementTags;
  end;
  
implementation

{ TBulkEmailEntry }

constructor TBulkEmailEntry.Create;
begin
  inherited;
  FReplacementTags := TObjectList<TMessageTag>.Create;
end;

destructor TBulkEmailEntry.Destroy;
begin
  ReplacementTags := nil;
  ReplacementEmailContent := nil;
  Destination := nil;
  inherited;
end;

function TBulkEmailEntry.Obj: TBulkEmailEntry;
begin
  Result := Self;
end;

function TBulkEmailEntry.GetDestination: TDestination;
begin
  Result := FDestination;
end;

procedure TBulkEmailEntry.SetDestination(const Value: TDestination);
begin
  if FDestination <> Value then
  begin
    if not KeepDestination then
      FDestination.Free;
    FDestination := Value;
  end;
end;

function TBulkEmailEntry.GetKeepDestination: Boolean;
begin
  Result := FKeepDestination;
end;

procedure TBulkEmailEntry.SetKeepDestination(const Value: Boolean);
begin
  FKeepDestination := Value;
end;

function TBulkEmailEntry.IsSetDestination: Boolean;
begin
  Result := FDestination <> nil;
end;

function TBulkEmailEntry.GetReplacementEmailContent: TReplacementEmailContent;
begin
  Result := FReplacementEmailContent;
end;

procedure TBulkEmailEntry.SetReplacementEmailContent(const Value: TReplacementEmailContent);
begin
  if FReplacementEmailContent <> Value then
  begin
    if not KeepReplacementEmailContent then
      FReplacementEmailContent.Free;
    FReplacementEmailContent := Value;
  end;
end;

function TBulkEmailEntry.GetKeepReplacementEmailContent: Boolean;
begin
  Result := FKeepReplacementEmailContent;
end;

procedure TBulkEmailEntry.SetKeepReplacementEmailContent(const Value: Boolean);
begin
  FKeepReplacementEmailContent := Value;
end;

function TBulkEmailEntry.IsSetReplacementEmailContent: Boolean;
begin
  Result := FReplacementEmailContent <> nil;
end;

function TBulkEmailEntry.GetReplacementTags: TObjectList<TMessageTag>;
begin
  Result := FReplacementTags;
end;

procedure TBulkEmailEntry.SetReplacementTags(const Value: TObjectList<TMessageTag>);
begin
  if FReplacementTags <> Value then
  begin
    if not KeepReplacementTags then
      FReplacementTags.Free;
    FReplacementTags := Value;
  end;
end;

function TBulkEmailEntry.GetKeepReplacementTags: Boolean;
begin
  Result := FKeepReplacementTags;
end;

procedure TBulkEmailEntry.SetKeepReplacementTags(const Value: Boolean);
begin
  FKeepReplacementTags := Value;
end;

function TBulkEmailEntry.IsSetReplacementTags: Boolean;
begin
  Result := (FReplacementTags <> nil) and (FReplacementTags.Count > 0);
end;

end.
