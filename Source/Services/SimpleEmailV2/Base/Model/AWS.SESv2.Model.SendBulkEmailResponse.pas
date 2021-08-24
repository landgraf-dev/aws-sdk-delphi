unit AWS.SESv2.Model.SendBulkEmailResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.BulkEmailEntryResult;

type
  TSendBulkEmailResponse = class;
  
  ISendBulkEmailResponse = interface(IAmazonWebServiceResponse)
    function GetBulkEmailEntryResults: TObjectList<TBulkEmailEntryResult>;
    procedure SetBulkEmailEntryResults(const Value: TObjectList<TBulkEmailEntryResult>);
    function GetKeepBulkEmailEntryResults: Boolean;
    procedure SetKeepBulkEmailEntryResults(const Value: Boolean);
    function Obj: TSendBulkEmailResponse;
    function IsSetBulkEmailEntryResults: Boolean;
    property BulkEmailEntryResults: TObjectList<TBulkEmailEntryResult> read GetBulkEmailEntryResults write SetBulkEmailEntryResults;
    property KeepBulkEmailEntryResults: Boolean read GetKeepBulkEmailEntryResults write SetKeepBulkEmailEntryResults;
  end;
  
  TSendBulkEmailResponse = class(TAmazonWebServiceResponse, ISendBulkEmailResponse)
  strict private
    FBulkEmailEntryResults: TObjectList<TBulkEmailEntryResult>;
    FKeepBulkEmailEntryResults: Boolean;
    function GetBulkEmailEntryResults: TObjectList<TBulkEmailEntryResult>;
    procedure SetBulkEmailEntryResults(const Value: TObjectList<TBulkEmailEntryResult>);
    function GetKeepBulkEmailEntryResults: Boolean;
    procedure SetKeepBulkEmailEntryResults(const Value: Boolean);
  strict protected
    function Obj: TSendBulkEmailResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBulkEmailEntryResults: Boolean;
    property BulkEmailEntryResults: TObjectList<TBulkEmailEntryResult> read GetBulkEmailEntryResults write SetBulkEmailEntryResults;
    property KeepBulkEmailEntryResults: Boolean read GetKeepBulkEmailEntryResults write SetKeepBulkEmailEntryResults;
  end;
  
implementation

{ TSendBulkEmailResponse }

constructor TSendBulkEmailResponse.Create;
begin
  inherited;
  FBulkEmailEntryResults := TObjectList<TBulkEmailEntryResult>.Create;
end;

destructor TSendBulkEmailResponse.Destroy;
begin
  BulkEmailEntryResults := nil;
  inherited;
end;

function TSendBulkEmailResponse.Obj: TSendBulkEmailResponse;
begin
  Result := Self;
end;

function TSendBulkEmailResponse.GetBulkEmailEntryResults: TObjectList<TBulkEmailEntryResult>;
begin
  Result := FBulkEmailEntryResults;
end;

procedure TSendBulkEmailResponse.SetBulkEmailEntryResults(const Value: TObjectList<TBulkEmailEntryResult>);
begin
  if FBulkEmailEntryResults <> Value then
  begin
    if not KeepBulkEmailEntryResults then
      FBulkEmailEntryResults.Free;
    FBulkEmailEntryResults := Value;
  end;
end;

function TSendBulkEmailResponse.GetKeepBulkEmailEntryResults: Boolean;
begin
  Result := FKeepBulkEmailEntryResults;
end;

procedure TSendBulkEmailResponse.SetKeepBulkEmailEntryResults(const Value: Boolean);
begin
  FKeepBulkEmailEntryResults := Value;
end;

function TSendBulkEmailResponse.IsSetBulkEmailEntryResults: Boolean;
begin
  Result := (FBulkEmailEntryResults <> nil) and (FBulkEmailEntryResults.Count > 0);
end;

end.
