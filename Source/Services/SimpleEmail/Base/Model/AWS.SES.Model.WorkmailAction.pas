unit AWS.SES.Model.WorkmailAction;

interface

uses
  AWS.Nullable;

type
  TWorkmailAction = class;
  
  IWorkmailAction = interface
    function GetOrganizationArn: string;
    procedure SetOrganizationArn(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TWorkmailAction;
    function IsSetOrganizationArn: Boolean;
    function IsSetTopicArn: Boolean;
    property OrganizationArn: string read GetOrganizationArn write SetOrganizationArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TWorkmailAction = class
  strict private
    FOrganizationArn: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetOrganizationArn: string;
    procedure SetOrganizationArn(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TWorkmailAction;
  public
    function IsSetOrganizationArn: Boolean;
    function IsSetTopicArn: Boolean;
    property OrganizationArn: string read GetOrganizationArn write SetOrganizationArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TWorkmailAction }

function TWorkmailAction.Obj: TWorkmailAction;
begin
  Result := Self;
end;

function TWorkmailAction.GetOrganizationArn: string;
begin
  Result := FOrganizationArn.ValueOrDefault;
end;

procedure TWorkmailAction.SetOrganizationArn(const Value: string);
begin
  FOrganizationArn := Value;
end;

function TWorkmailAction.IsSetOrganizationArn: Boolean;
begin
  Result := FOrganizationArn.HasValue;
end;

function TWorkmailAction.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TWorkmailAction.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TWorkmailAction.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
