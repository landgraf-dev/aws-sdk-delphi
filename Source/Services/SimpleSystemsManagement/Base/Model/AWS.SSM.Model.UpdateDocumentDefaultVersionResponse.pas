unit AWS.SSM.Model.UpdateDocumentDefaultVersionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.DocumentDefaultVersionDescription;

type
  TUpdateDocumentDefaultVersionResponse = class;
  
  IUpdateDocumentDefaultVersionResponse = interface(IAmazonWebServiceResponse)
    function GetDescription: TDocumentDefaultVersionDescription;
    procedure SetDescription(const Value: TDocumentDefaultVersionDescription);
    function GetKeepDescription: Boolean;
    procedure SetKeepDescription(const Value: Boolean);
    function Obj: TUpdateDocumentDefaultVersionResponse;
    function IsSetDescription: Boolean;
    property Description: TDocumentDefaultVersionDescription read GetDescription write SetDescription;
    property KeepDescription: Boolean read GetKeepDescription write SetKeepDescription;
  end;
  
  TUpdateDocumentDefaultVersionResponse = class(TAmazonWebServiceResponse, IUpdateDocumentDefaultVersionResponse)
  strict private
    FDescription: TDocumentDefaultVersionDescription;
    FKeepDescription: Boolean;
    function GetDescription: TDocumentDefaultVersionDescription;
    procedure SetDescription(const Value: TDocumentDefaultVersionDescription);
    function GetKeepDescription: Boolean;
    procedure SetKeepDescription(const Value: Boolean);
  strict protected
    function Obj: TUpdateDocumentDefaultVersionResponse;
  public
    destructor Destroy; override;
    function IsSetDescription: Boolean;
    property Description: TDocumentDefaultVersionDescription read GetDescription write SetDescription;
    property KeepDescription: Boolean read GetKeepDescription write SetKeepDescription;
  end;
  
implementation

{ TUpdateDocumentDefaultVersionResponse }

destructor TUpdateDocumentDefaultVersionResponse.Destroy;
begin
  Description := nil;
  inherited;
end;

function TUpdateDocumentDefaultVersionResponse.Obj: TUpdateDocumentDefaultVersionResponse;
begin
  Result := Self;
end;

function TUpdateDocumentDefaultVersionResponse.GetDescription: TDocumentDefaultVersionDescription;
begin
  Result := FDescription;
end;

procedure TUpdateDocumentDefaultVersionResponse.SetDescription(const Value: TDocumentDefaultVersionDescription);
begin
  if FDescription <> Value then
  begin
    if not KeepDescription then
      FDescription.Free;
    FDescription := Value;
  end;
end;

function TUpdateDocumentDefaultVersionResponse.GetKeepDescription: Boolean;
begin
  Result := FKeepDescription;
end;

procedure TUpdateDocumentDefaultVersionResponse.SetKeepDescription(const Value: Boolean);
begin
  FKeepDescription := Value;
end;

function TUpdateDocumentDefaultVersionResponse.IsSetDescription: Boolean;
begin
  Result := FDescription <> nil;
end;

end.
