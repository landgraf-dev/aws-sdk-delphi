unit AWS.SSM.Model.CreateDocumentResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.DocumentDescription;

type
  TCreateDocumentResponse = class;
  
  ICreateDocumentResponse = interface(IAmazonWebServiceResponse)
    function GetDocumentDescription: TDocumentDescription;
    procedure SetDocumentDescription(const Value: TDocumentDescription);
    function GetKeepDocumentDescription: Boolean;
    procedure SetKeepDocumentDescription(const Value: Boolean);
    function Obj: TCreateDocumentResponse;
    function IsSetDocumentDescription: Boolean;
    property DocumentDescription: TDocumentDescription read GetDocumentDescription write SetDocumentDescription;
    property KeepDocumentDescription: Boolean read GetKeepDocumentDescription write SetKeepDocumentDescription;
  end;
  
  TCreateDocumentResponse = class(TAmazonWebServiceResponse, ICreateDocumentResponse)
  strict private
    FDocumentDescription: TDocumentDescription;
    FKeepDocumentDescription: Boolean;
    function GetDocumentDescription: TDocumentDescription;
    procedure SetDocumentDescription(const Value: TDocumentDescription);
    function GetKeepDocumentDescription: Boolean;
    procedure SetKeepDocumentDescription(const Value: Boolean);
  strict protected
    function Obj: TCreateDocumentResponse;
  public
    destructor Destroy; override;
    function IsSetDocumentDescription: Boolean;
    property DocumentDescription: TDocumentDescription read GetDocumentDescription write SetDocumentDescription;
    property KeepDocumentDescription: Boolean read GetKeepDocumentDescription write SetKeepDocumentDescription;
  end;
  
implementation

{ TCreateDocumentResponse }

destructor TCreateDocumentResponse.Destroy;
begin
  DocumentDescription := nil;
  inherited;
end;

function TCreateDocumentResponse.Obj: TCreateDocumentResponse;
begin
  Result := Self;
end;

function TCreateDocumentResponse.GetDocumentDescription: TDocumentDescription;
begin
  Result := FDocumentDescription;
end;

procedure TCreateDocumentResponse.SetDocumentDescription(const Value: TDocumentDescription);
begin
  if FDocumentDescription <> Value then
  begin
    if not KeepDocumentDescription then
      FDocumentDescription.Free;
    FDocumentDescription := Value;
  end;
end;

function TCreateDocumentResponse.GetKeepDocumentDescription: Boolean;
begin
  Result := FKeepDocumentDescription;
end;

procedure TCreateDocumentResponse.SetKeepDocumentDescription(const Value: Boolean);
begin
  FKeepDocumentDescription := Value;
end;

function TCreateDocumentResponse.IsSetDocumentDescription: Boolean;
begin
  Result := FDocumentDescription <> nil;
end;

end.
