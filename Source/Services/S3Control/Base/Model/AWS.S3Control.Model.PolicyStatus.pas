unit AWS.S3Control.Model.PolicyStatus;

interface

uses
  AWS.Nullable;

type
  TPolicyStatus = class;
  
  IPolicyStatus = interface
    function GetIsPublic: Boolean;
    procedure SetIsPublic(const Value: Boolean);
    function Obj: TPolicyStatus;
    function IsSetIsPublic: Boolean;
    property IsPublic: Boolean read GetIsPublic write SetIsPublic;
  end;
  
  TPolicyStatus = class
  strict private
    FIsPublic: Nullable<Boolean>;
    function GetIsPublic: Boolean;
    procedure SetIsPublic(const Value: Boolean);
  strict protected
    function Obj: TPolicyStatus;
  public
    function IsSetIsPublic: Boolean;
    property IsPublic: Boolean read GetIsPublic write SetIsPublic;
  end;
  
implementation

{ TPolicyStatus }

function TPolicyStatus.Obj: TPolicyStatus;
begin
  Result := Self;
end;

function TPolicyStatus.GetIsPublic: Boolean;
begin
  Result := FIsPublic.ValueOrDefault;
end;

procedure TPolicyStatus.SetIsPublic(const Value: Boolean);
begin
  FIsPublic := Value;
end;

function TPolicyStatus.IsSetIsPublic: Boolean;
begin
  Result := FIsPublic.HasValue;
end;

end.
