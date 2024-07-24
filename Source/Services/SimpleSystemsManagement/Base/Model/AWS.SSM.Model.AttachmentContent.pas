unit AWS.SSM.Model.AttachmentContent;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TAttachmentContent = class;
  
  IAttachmentContent = interface
    function GetHash: string;
    procedure SetHash(const Value: string);
    function GetHashType: TAttachmentHashType;
    procedure SetHashType(const Value: TAttachmentHashType);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSize: Int64;
    procedure SetSize(const Value: Int64);
    function GetUrl: string;
    procedure SetUrl(const Value: string);
    function Obj: TAttachmentContent;
    function IsSetHash: Boolean;
    function IsSetHashType: Boolean;
    function IsSetName: Boolean;
    function IsSetSize: Boolean;
    function IsSetUrl: Boolean;
    property Hash: string read GetHash write SetHash;
    property HashType: TAttachmentHashType read GetHashType write SetHashType;
    property Name: string read GetName write SetName;
    property Size: Int64 read GetSize write SetSize;
    property Url: string read GetUrl write SetUrl;
  end;
  
  TAttachmentContent = class
  strict private
    FHash: Nullable<string>;
    FHashType: Nullable<TAttachmentHashType>;
    FName: Nullable<string>;
    FSize: Nullable<Int64>;
    FUrl: Nullable<string>;
    function GetHash: string;
    procedure SetHash(const Value: string);
    function GetHashType: TAttachmentHashType;
    procedure SetHashType(const Value: TAttachmentHashType);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSize: Int64;
    procedure SetSize(const Value: Int64);
    function GetUrl: string;
    procedure SetUrl(const Value: string);
  strict protected
    function Obj: TAttachmentContent;
  public
    function IsSetHash: Boolean;
    function IsSetHashType: Boolean;
    function IsSetName: Boolean;
    function IsSetSize: Boolean;
    function IsSetUrl: Boolean;
    property Hash: string read GetHash write SetHash;
    property HashType: TAttachmentHashType read GetHashType write SetHashType;
    property Name: string read GetName write SetName;
    property Size: Int64 read GetSize write SetSize;
    property Url: string read GetUrl write SetUrl;
  end;
  
implementation

{ TAttachmentContent }

function TAttachmentContent.Obj: TAttachmentContent;
begin
  Result := Self;
end;

function TAttachmentContent.GetHash: string;
begin
  Result := FHash.ValueOrDefault;
end;

procedure TAttachmentContent.SetHash(const Value: string);
begin
  FHash := Value;
end;

function TAttachmentContent.IsSetHash: Boolean;
begin
  Result := FHash.HasValue;
end;

function TAttachmentContent.GetHashType: TAttachmentHashType;
begin
  Result := FHashType.ValueOrDefault;
end;

procedure TAttachmentContent.SetHashType(const Value: TAttachmentHashType);
begin
  FHashType := Value;
end;

function TAttachmentContent.IsSetHashType: Boolean;
begin
  Result := FHashType.HasValue;
end;

function TAttachmentContent.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAttachmentContent.SetName(const Value: string);
begin
  FName := Value;
end;

function TAttachmentContent.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TAttachmentContent.GetSize: Int64;
begin
  Result := FSize.ValueOrDefault;
end;

procedure TAttachmentContent.SetSize(const Value: Int64);
begin
  FSize := Value;
end;

function TAttachmentContent.IsSetSize: Boolean;
begin
  Result := FSize.HasValue;
end;

function TAttachmentContent.GetUrl: string;
begin
  Result := FUrl.ValueOrDefault;
end;

procedure TAttachmentContent.SetUrl(const Value: string);
begin
  FUrl := Value;
end;

function TAttachmentContent.IsSetUrl: Boolean;
begin
  Result := FUrl.HasValue;
end;

end.
