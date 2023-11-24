unit AWS.S3.Model.IntelligentTieringConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.IntelligentTieringFilter, 
  AWS.S3.Enums, 
  AWS.S3.Model.Tiering;

type
  TIntelligentTieringConfiguration = class;
  
  IIntelligentTieringConfiguration = interface
    function GetFilter: TIntelligentTieringFilter;
    procedure SetFilter(const Value: TIntelligentTieringFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetStatus: TIntelligentTieringStatus;
    procedure SetStatus(const Value: TIntelligentTieringStatus);
    function GetTierings: TObjectList<TTiering>;
    procedure SetTierings(const Value: TObjectList<TTiering>);
    function GetKeepTierings: Boolean;
    procedure SetKeepTierings(const Value: Boolean);
    function Obj: TIntelligentTieringConfiguration;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTierings: Boolean;
    property Filter: TIntelligentTieringFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
    property Status: TIntelligentTieringStatus read GetStatus write SetStatus;
    property Tierings: TObjectList<TTiering> read GetTierings write SetTierings;
    property KeepTierings: Boolean read GetKeepTierings write SetKeepTierings;
  end;
  
  TIntelligentTieringConfiguration = class
  strict private
    FFilter: TIntelligentTieringFilter;
    FKeepFilter: Boolean;
    FId: Nullable<string>;
    FStatus: Nullable<TIntelligentTieringStatus>;
    FTierings: TObjectList<TTiering>;
    FKeepTierings: Boolean;
    function GetFilter: TIntelligentTieringFilter;
    procedure SetFilter(const Value: TIntelligentTieringFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetStatus: TIntelligentTieringStatus;
    procedure SetStatus(const Value: TIntelligentTieringStatus);
    function GetTierings: TObjectList<TTiering>;
    procedure SetTierings(const Value: TObjectList<TTiering>);
    function GetKeepTierings: Boolean;
    procedure SetKeepTierings(const Value: Boolean);
  strict protected
    function Obj: TIntelligentTieringConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTierings: Boolean;
    property Filter: TIntelligentTieringFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
    property Status: TIntelligentTieringStatus read GetStatus write SetStatus;
    property Tierings: TObjectList<TTiering> read GetTierings write SetTierings;
    property KeepTierings: Boolean read GetKeepTierings write SetKeepTierings;
  end;
  
implementation

{ TIntelligentTieringConfiguration }

constructor TIntelligentTieringConfiguration.Create;
begin
  inherited;
  FTierings := TObjectList<TTiering>.Create;
end;

destructor TIntelligentTieringConfiguration.Destroy;
begin
  Tierings := nil;
  Filter := nil;
  inherited;
end;

function TIntelligentTieringConfiguration.Obj: TIntelligentTieringConfiguration;
begin
  Result := Self;
end;

function TIntelligentTieringConfiguration.GetFilter: TIntelligentTieringFilter;
begin
  Result := FFilter;
end;

procedure TIntelligentTieringConfiguration.SetFilter(const Value: TIntelligentTieringFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TIntelligentTieringConfiguration.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TIntelligentTieringConfiguration.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TIntelligentTieringConfiguration.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TIntelligentTieringConfiguration.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TIntelligentTieringConfiguration.SetId(const Value: string);
begin
  FId := Value;
end;

function TIntelligentTieringConfiguration.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TIntelligentTieringConfiguration.GetStatus: TIntelligentTieringStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TIntelligentTieringConfiguration.SetStatus(const Value: TIntelligentTieringStatus);
begin
  FStatus := Value;
end;

function TIntelligentTieringConfiguration.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TIntelligentTieringConfiguration.GetTierings: TObjectList<TTiering>;
begin
  Result := FTierings;
end;

procedure TIntelligentTieringConfiguration.SetTierings(const Value: TObjectList<TTiering>);
begin
  if FTierings <> Value then
  begin
    if not KeepTierings then
      FTierings.Free;
    FTierings := Value;
  end;
end;

function TIntelligentTieringConfiguration.GetKeepTierings: Boolean;
begin
  Result := FKeepTierings;
end;

procedure TIntelligentTieringConfiguration.SetKeepTierings(const Value: Boolean);
begin
  FKeepTierings := Value;
end;

function TIntelligentTieringConfiguration.IsSetTierings: Boolean;
begin
  Result := (FTierings <> nil) and (FTierings.Count > 0);
end;

end.
