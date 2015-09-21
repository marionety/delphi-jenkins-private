unit InterfazGeneradorSaludos;

interface

uses
  Classes;

type
  {$M+}
  IGeneradorSaludos = interface
    ['{5A142646-6BB3-4863-8262-DF67BF0FD7FD}']
    function Saludar(pNombre : string): string;
  end;
  {$M-}

implementation

end.
