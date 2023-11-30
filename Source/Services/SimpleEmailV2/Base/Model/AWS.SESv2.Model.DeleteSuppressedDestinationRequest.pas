unit AWS.SESv2.Model.DeleteSuppressedDestinationRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TDeleteSuppressedDestinationRequest = class;
  
  IDeleteSuppressedDestinationRequest = interface
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function Obj: TDeleteSuppressedDestinationRequest;
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
  TDeleteSuppressedDestinationRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteSuppressedDestinationRequest)
  strict private
    FEmailAddress: Nullable<string>;
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
  strict protected
    function Obj: TDeleteSuppressedDestinationRequest;
  public
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
implementation

{ TDeleteSuppressedDestinationRequest }

function TDeleteSuppressedDestinationRequest.Obj: TDeleteSuppressedDestinationRequest;
begin
  Result := Self;
end;

function TDeleteSuppressedDestinationRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TDeleteSuppressedDestinationRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TDeleteSuppressedDestinationRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

end.
