unit GeneradorSaludos;

interface

uses
  InterfazGeneradorSaludos;

type

  TGeneradorSaludos = class(TInterfacedObject, IGeneradorSaludos)
    public
      function Saludar(pNombre : string): string;
  end;

implementation

{ TGeneradorSaludos }

function TGeneradorSaludos.Saludar(pNombre : string): string;
begin
  if (pNombre[Length(pNombre)] = 'a') or (pNombre[Length(pNombre)] = 's') then
  begin
    Result := '¡Bienvenida, ' + pNombre + '!';
  end
  else
    Result := '¡Bienvenido, ' + pNombre + '!';
end;

end.
