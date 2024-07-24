unit AWS.SSM.Model.DocumentMetadataResponseInfo;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.DocumentReviewerResponseSource;

type
  TDocumentMetadataResponseInfo = class;
  
  IDocumentMetadataResponseInfo = interface
    function GetReviewerResponse: TObjectList<TDocumentReviewerResponseSource>;
    procedure SetReviewerResponse(const Value: TObjectList<TDocumentReviewerResponseSource>);
    function GetKeepReviewerResponse: Boolean;
    procedure SetKeepReviewerResponse(const Value: Boolean);
    function Obj: TDocumentMetadataResponseInfo;
    function IsSetReviewerResponse: Boolean;
    property ReviewerResponse: TObjectList<TDocumentReviewerResponseSource> read GetReviewerResponse write SetReviewerResponse;
    property KeepReviewerResponse: Boolean read GetKeepReviewerResponse write SetKeepReviewerResponse;
  end;
  
  TDocumentMetadataResponseInfo = class
  strict private
    FReviewerResponse: TObjectList<TDocumentReviewerResponseSource>;
    FKeepReviewerResponse: Boolean;
    function GetReviewerResponse: TObjectList<TDocumentReviewerResponseSource>;
    procedure SetReviewerResponse(const Value: TObjectList<TDocumentReviewerResponseSource>);
    function GetKeepReviewerResponse: Boolean;
    procedure SetKeepReviewerResponse(const Value: Boolean);
  strict protected
    function Obj: TDocumentMetadataResponseInfo;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetReviewerResponse: Boolean;
    property ReviewerResponse: TObjectList<TDocumentReviewerResponseSource> read GetReviewerResponse write SetReviewerResponse;
    property KeepReviewerResponse: Boolean read GetKeepReviewerResponse write SetKeepReviewerResponse;
  end;
  
implementation

{ TDocumentMetadataResponseInfo }

constructor TDocumentMetadataResponseInfo.Create;
begin
  inherited;
  FReviewerResponse := TObjectList<TDocumentReviewerResponseSource>.Create;
end;

destructor TDocumentMetadataResponseInfo.Destroy;
begin
  ReviewerResponse := nil;
  inherited;
end;

function TDocumentMetadataResponseInfo.Obj: TDocumentMetadataResponseInfo;
begin
  Result := Self;
end;

function TDocumentMetadataResponseInfo.GetReviewerResponse: TObjectList<TDocumentReviewerResponseSource>;
begin
  Result := FReviewerResponse;
end;

procedure TDocumentMetadataResponseInfo.SetReviewerResponse(const Value: TObjectList<TDocumentReviewerResponseSource>);
begin
  if FReviewerResponse <> Value then
  begin
    if not KeepReviewerResponse then
      FReviewerResponse.Free;
    FReviewerResponse := Value;
  end;
end;

function TDocumentMetadataResponseInfo.GetKeepReviewerResponse: Boolean;
begin
  Result := FKeepReviewerResponse;
end;

procedure TDocumentMetadataResponseInfo.SetKeepReviewerResponse(const Value: Boolean);
begin
  FKeepReviewerResponse := Value;
end;

function TDocumentMetadataResponseInfo.IsSetReviewerResponse: Boolean;
begin
  Result := (FReviewerResponse <> nil) and (FReviewerResponse.Count > 0);
end;

end.
