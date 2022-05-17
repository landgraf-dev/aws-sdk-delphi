unit AWS.Textract.Model.DocumentMetadata;

interface

uses
  Bcl.Types.Nullable;

type
  TDocumentMetadata = class;
  
  IDocumentMetadata = interface
    function GetPages: Integer;
    procedure SetPages(const Value: Integer);
    function Obj: TDocumentMetadata;
    function IsSetPages: Boolean;
    property Pages: Integer read GetPages write SetPages;
  end;
  
  TDocumentMetadata = class
  strict private
    FPages: Nullable<Integer>;
    function GetPages: Integer;
    procedure SetPages(const Value: Integer);
  strict protected
    function Obj: TDocumentMetadata;
  public
    function IsSetPages: Boolean;
    property Pages: Integer read GetPages write SetPages;
  end;
  
implementation

{ TDocumentMetadata }

function TDocumentMetadata.Obj: TDocumentMetadata;
begin
  Result := Self;
end;

function TDocumentMetadata.GetPages: Integer;
begin
  Result := FPages.ValueOrDefault;
end;

procedure TDocumentMetadata.SetPages(const Value: Integer);
begin
  FPages := Value;
end;

function TDocumentMetadata.IsSetPages: Boolean;
begin
  Result := FPages.HasValue;
end;

end.
