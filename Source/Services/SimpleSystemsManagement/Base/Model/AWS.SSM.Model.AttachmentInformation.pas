unit AWS.SSM.Model.AttachmentInformation;

interface

uses
  AWS.Nullable;

type
  TAttachmentInformation = class;
  
  IAttachmentInformation = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TAttachmentInformation;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TAttachmentInformation = class
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TAttachmentInformation;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TAttachmentInformation }

function TAttachmentInformation.Obj: TAttachmentInformation;
begin
  Result := Self;
end;

function TAttachmentInformation.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAttachmentInformation.SetName(const Value: string);
begin
  FName := Value;
end;

function TAttachmentInformation.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
