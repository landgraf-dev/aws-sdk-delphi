unit AWS.SESv2.Model.BulkEmailContent;

interface

uses
  AWS.SESv2.Model.Template;

type
  TBulkEmailContent = class;
  
  IBulkEmailContent = interface
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
    function Obj: TBulkEmailContent;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
  TBulkEmailContent = class
  strict private
    FTemplate: TTemplate;
    FKeepTemplate: Boolean;
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
  strict protected
    function Obj: TBulkEmailContent;
  public
    destructor Destroy; override;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
implementation

{ TBulkEmailContent }

destructor TBulkEmailContent.Destroy;
begin
  Template := nil;
  inherited;
end;

function TBulkEmailContent.Obj: TBulkEmailContent;
begin
  Result := Self;
end;

function TBulkEmailContent.GetTemplate: TTemplate;
begin
  Result := FTemplate;
end;

procedure TBulkEmailContent.SetTemplate(const Value: TTemplate);
begin
  if FTemplate <> Value then
  begin
    if not KeepTemplate then
      FTemplate.Free;
    FTemplate := Value;
  end;
end;

function TBulkEmailContent.GetKeepTemplate: Boolean;
begin
  Result := FKeepTemplate;
end;

procedure TBulkEmailContent.SetKeepTemplate(const Value: Boolean);
begin
  FKeepTemplate := Value;
end;

function TBulkEmailContent.IsSetTemplate: Boolean;
begin
  Result := FTemplate <> nil;
end;

end.
