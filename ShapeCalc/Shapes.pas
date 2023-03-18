unit Shapes;

interface

{uses}

const
  pi = 3.14;

type

  TShape = class
  protected
    function GetArea: extended; virtual; abstract;
    function GetPerimeter: extended; virtual; abstract;
  public
  end;

  TRectangle = class(TShape)
  private
    fLength: extended;
    fBreadth: extended;
  public
    function GetArea: extended; override;
    function GetPerimeter: extended; override;
    constructor Create(const aLength, aBreadth: extended);
  end;

  TCircle = class(TShape)
  private
    fRadius: extended;
  public
    function GetArea: extended; override;
    function GetPerimeter: extended; override;
    constructor Create(const aRadius: extended);
  end;

implementation

{ TRectangle }
uses
  System.Math;

constructor TRectangle.Create(const aLength, aBreadth: extended);
begin
  fLength := aLength;
  fBreadth := aBreadth;
end;

function TRectangle.GetArea: extended;
begin
  Result :=  SimpleRoundTo(fLength * fBreadth);
end;

function TRectangle.GetPerimeter: extended;
begin
  Result := SimpleRoundTo(2 * (fLength + fBreadth));
end;

{ TCircle }

constructor TCircle.Create(const aRadius: extended);
begin
  fRadius := aRadius;
end;

function TCircle.GetArea: extended;
begin
  Result := SimpleRoundTo(pi * fRadius * fRadius);
end;

function TCircle.GetPerimeter: extended;
begin
  Result := SimpleRoundTo(2 * pi * fRadius);
end;

end.
