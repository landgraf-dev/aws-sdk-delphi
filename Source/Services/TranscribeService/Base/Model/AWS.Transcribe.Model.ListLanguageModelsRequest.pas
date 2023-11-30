unit AWS.Transcribe.Model.ListLanguageModelsRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TListLanguageModelsRequest = class;
  
  IListLanguageModelsRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNameContains: string;
    procedure SetNameContains(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusEquals: TModelStatus;
    procedure SetStatusEquals(const Value: TModelStatus);
    function Obj: TListLanguageModelsRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNameContains: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusEquals: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NameContains: string read GetNameContains write SetNameContains;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusEquals: TModelStatus read GetStatusEquals write SetStatusEquals;
  end;
  
  TListLanguageModelsRequest = class(TAmazonTranscribeServiceRequest, IListLanguageModelsRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNameContains: Nullable<string>;
    FNextToken: Nullable<string>;
    FStatusEquals: Nullable<TModelStatus>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNameContains: string;
    procedure SetNameContains(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusEquals: TModelStatus;
    procedure SetStatusEquals(const Value: TModelStatus);
  strict protected
    function Obj: TListLanguageModelsRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNameContains: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusEquals: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NameContains: string read GetNameContains write SetNameContains;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusEquals: TModelStatus read GetStatusEquals write SetStatusEquals;
  end;
  
implementation

{ TListLanguageModelsRequest }

function TListLanguageModelsRequest.Obj: TListLanguageModelsRequest;
begin
  Result := Self;
end;

function TListLanguageModelsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListLanguageModelsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListLanguageModelsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListLanguageModelsRequest.GetNameContains: string;
begin
  Result := FNameContains.ValueOrDefault;
end;

procedure TListLanguageModelsRequest.SetNameContains(const Value: string);
begin
  FNameContains := Value;
end;

function TListLanguageModelsRequest.IsSetNameContains: Boolean;
begin
  Result := FNameContains.HasValue;
end;

function TListLanguageModelsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListLanguageModelsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListLanguageModelsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListLanguageModelsRequest.GetStatusEquals: TModelStatus;
begin
  Result := FStatusEquals.ValueOrDefault;
end;

procedure TListLanguageModelsRequest.SetStatusEquals(const Value: TModelStatus);
begin
  FStatusEquals := Value;
end;

function TListLanguageModelsRequest.IsSetStatusEquals: Boolean;
begin
  Result := FStatusEquals.HasValue;
end;

end.
