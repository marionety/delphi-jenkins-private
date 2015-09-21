unit GeneradorSaludosTests;

interface

uses
  Classes, DUnitX.TestFramework, SysUtils, StrUtils,

  InterfazGeneradorSaludos;

type
    [TestFixture]
    TestGeneradorSaludos = class(TObject)
      private
      FGeneradorSaludos : IGeneradorSaludos;

      public
        [Setup]
          procedure Setup;
        [TearDown]
          procedure TearDown;
        [Test]
          [TestCase('TestSaludar1', 'Jose')]
          [TestCase('TestSaludar2', 'Elena')]
          [TestCase('TestSaludar3', 'Paco')]
          [TestCase('TestSaludar4', 'Gonzalo')]
          [TestCase('TestSaludar5', 'Mario')]
          [TestCase('TestSaludar6', 'Lucas')]
          [TestCase('TestSaludar7', 'Jose')]
          [TestCase('TestSaludar8', 'Elena')]
          [TestCase('TestSaludar9', 'Paco')]
          [TestCase('TestSaludar10', 'Gonzalo')]
          [TestCase('TestSaludar11', 'Jose')]
          [TestCase('TestSaludar12', 'Elena')]
          [TestCase('TestSaludar13', 'Paco')]
          [TestCase('TestSaludar14', 'Gonzalo')]
          [TestCase('TestSaludar15', 'Mario')]
          [TestCase('TestSaludar16', 'Lucas')]
          [TestCase('TestSaludar17', 'Jose')]
          [TestCase('TestSaludar18', 'Elena')]
          [TestCase('TestSaludar19', 'Paco')]
          [TestCase('TestSaludar20', 'Gonzalo')]
          [TestCase('TestSaludar21', 'Jose')]
          [TestCase('TestSaludar22', 'Elena')]
          [TestCase('TestSaludar23', 'Paco')]
          [TestCase('TestSaludar24', 'Gonzalo')]
          [TestCase('TestSaludar25', 'Mario')]
          [TestCase('TestSaludar26', 'Lucas')]
          [TestCase('TestSaludar27', 'Jose')]
          [TestCase('TestSaludar28', 'Elena')]
          [TestCase('TestSaludar29', 'Paco')]
          [TestCase('TestSaludar30', 'Gonzalo')]
          [TestCase('TestSaludar31', 'Jose')]
          [TestCase('TestSaludar32', 'Elena')]
          [TestCase('TestSaludar33', 'Paco')]
          [TestCase('TestSaludar34', 'Gonzalo')]
          [TestCase('TestSaludar35', 'Mario')]
          [TestCase('TestSaludar36', 'Lucas')]
          [TestCase('TestSaludar37', 'Jose')]
          [TestCase('TestSaludar38', 'Elena')]
          [TestCase('TestSaludar39', 'Paco')]
          [TestCase('TestSaludar40', 'Gonzalo')]
          [TestCase('TestSaludar41', 'Jose')]
          [TestCase('TestSaludar42', 'Elena')]
          [TestCase('TestSaludar43', 'Paco')]
          [TestCase('TestSaludar44', 'Gonzalo')]
          [TestCase('TestSaludar45', 'Mario')]
          [TestCase('TestSaludar46', 'Lucas')]
          [TestCase('TestSaludar47', 'Jose')]
          [TestCase('TestSaludar48', 'Elena')]
          [TestCase('TestSaludar49', 'Paco')]
          [TestCase('TestSaludar50', 'Gonzalo')]
          procedure TestSaludar(pNombre: string);
    end;

implementation

uses
  GeneradorSaludos;

{ TestGeneradorSaludos }

procedure TestGeneradorSaludos.Setup;
begin
  FGeneradorSaludos := TGeneradorSaludos.Create;
end;

procedure TestGeneradorSaludos.TearDown;
begin
  FGeneradorSaludos := nil;
end;

procedure TestGeneradorSaludos.TestSaludar(pNombre: string);
begin


  if pNombre[Length(pNombre)] = 'a' then
  begin
    Assert.IsTrue(AnsiPos('Bienvenida',FGeneradorSaludos.Saludar(pNombre)) <> 0, pNombre + ' debería ser una chica y no lo es');
  end
  else
    Assert.IsTrue(AnsiPos('Bienvenido',FGeneradorSaludos.Saludar(pNombre)) <> 0, pNombre + ' debería ser un chico y no lo es');
end;

initialization
  TDUnitX.RegisterTestFixture(TestGeneradorSaludos);
end.
