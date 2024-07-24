unit AWS.SSM.Model.DescribeDocumentResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.DocumentDescription;

type
  TDescribeDocumentResponse = class;
  
  IDescribeDocumentResponse = interface(IAmazonWebServiceResponse)
    function GetDocument: TDocumentDescription;
    procedure SetDocument(const Value: TDocumentDescription);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
    function Obj: TDescribeDocumentResponse;
    function IsSetDocument: Boolean;
    property Document: TDocumentDescription read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
  end;
  
  TDescribeDocumentResponse = class(TAmazonWebServiceResponse, IDescribeDocumentResponse)
  strict private
    FDocument: TDocumentDescription;
    FKeepDocument: Boolean;
    function GetDocument: TDocumentDescription;
    procedure SetDocument(const Value: TDocumentDescription);
    function GetKeepDocument: Boolean;
    procedure SetKeepDocument(const Value: Boolean);
  strict protected
    function Obj: TDescribeDocumentResponse;
  public
    destructor Destroy; override;
    function IsSetDocument: Boolean;
    property Document: TDocumentDescription read GetDocument write SetDocument;
    property KeepDocument: Boolean read GetKeepDocument write SetKeepDocument;
  end;
  
implementation

{ TDescribeDocumentResponse }

destructor TDescribeDocumentResponse.Destroy;
begin
  Document := nil;
  inherited;
end;

function TDescribeDocumentResponse.Obj: TDescribeDocumentResponse;
begin
  Result := Self;
end;

function TDescribeDocumentResponse.GetDocument: TDocumentDescription;
begin
  Result := FDocument;
end;

procedure TDescribeDocumentResponse.SetDocument(const Value: TDocumentDescription);
begin
  if FDocument <> Value then
  begin
    if not KeepDocument then
      FDocument.Free;
    FDocument := Value;
  end;
end;

function TDescribeDocumentResponse.GetKeepDocument: Boolean;
begin
  Result := FKeepDocument;
end;

procedure TDescribeDocumentResponse.SetKeepDocument(const Value: Boolean);
begin
  FKeepDocument := Value;
end;

function TDescribeDocumentResponse.IsSetDocument: Boolean;
begin
  Result := FDocument <> nil;
end;

end.
