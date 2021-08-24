unit AWS.SESv2.Model.GetSuppressedDestinationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetSuppressedDestinationRequest = class;
  
  IGetSuppressedDestinationRequest = interface
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function Obj: TGetSuppressedDestinationRequest;
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
  TGetSuppressedDestinationRequest = class(TAmazonSimpleEmailServiceV2Request, IGetSuppressedDestinationRequest)
  strict private
    FEmailAddress: Nullable<string>;
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
  strict protected
    function Obj: TGetSuppressedDestinationRequest;
  public
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
implementation

{ TGetSuppressedDestinationRequest }

function TGetSuppressedDestinationRequest.Obj: TGetSuppressedDestinationRequest;
begin
  Result := Self;
end;

function TGetSuppressedDestinationRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TGetSuppressedDestinationRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TGetSuppressedDestinationRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

end.
