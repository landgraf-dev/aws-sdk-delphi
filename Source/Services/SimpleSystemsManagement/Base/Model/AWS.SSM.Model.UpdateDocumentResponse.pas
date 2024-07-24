unit AWS.SSM.Model.UpdateDocumentResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.DocumentDescription;

type
  TUpdateDocumentResponse = class;
  
  IUpdateDocumentResponse = interface(IAmazonWebServiceResponse)
    function GetDocumentDescription: TDocumentDescription;
    procedure SetDocumentDescription(const Value: TDocumentDescription);
    function GetKeepDocumentDescription: Boolean;
    procedure SetKeepDocumentDescription(const Value: Boolean);
    function Obj: TUpdateDocumentResponse;
    function IsSetDocumentDescription: Boolean;
    property DocumentDescription: TDocumentDescription read GetDocumentDescription write SetDocumentDescription;
    property KeepDocumentDescription: Boolean read GetKeepDocumentDescription write SetKeepDocumentDescription;
  end;
  
  TUpdateDocumentResponse = class(TAmazonWebServiceResponse, IUpdateDocumentResponse)
  strict private
    FDocumentDescription: TDocumentDescription;
    FKeepDocumentDescription: Boolean;
    function GetDocumentDescription: TDocumentDescription;
    procedure SetDocumentDescription(const Value: TDocumentDescription);
    function GetKeepDocumentDescription: Boolean;
    procedure SetKeepDocumentDescription(const Value: Boolean);
  strict protected
    function Obj: TUpdateDocumentResponse;
  public
    destructor Destroy; override;
    function IsSetDocumentDescription: Boolean;
    property DocumentDescription: TDocumentDescription read GetDocumentDescription write SetDocumentDescription;
    property KeepDocumentDescription: Boolean read GetKeepDocumentDescription write SetKeepDocumentDescription;
  end;
  
implementation

{ TUpdateDocumentResponse }

destructor TUpdateDocumentResponse.Destroy;
begin
  DocumentDescription := nil;
  inherited;
end;

function TUpdateDocumentResponse.Obj: TUpdateDocumentResponse;
begin
  Result := Self;
end;

function TUpdateDocumentResponse.GetDocumentDescription: TDocumentDescription;
begin
  Result := FDocumentDescription;
end;

procedure TUpdateDocumentResponse.SetDocumentDescription(const Value: TDocumentDescription);
begin
  if FDocumentDescription <> Value then
  begin
    if not KeepDocumentDescription then
      FDocumentDescription.Free;
    FDocumentDescription := Value;
  end;
end;

function TUpdateDocumentResponse.GetKeepDocumentDescription: Boolean;
begin
  Result := FKeepDocumentDescription;
end;

procedure TUpdateDocumentResponse.SetKeepDocumentDescription(const Value: Boolean);
begin
  FKeepDocumentDescription := Value;
end;

function TUpdateDocumentResponse.IsSetDocumentDescription: Boolean;
begin
  Result := FDocumentDescription <> nil;
end;

end.
