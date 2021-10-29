require 'minitest/autorun'
require './csv_test.rb'

class TESTER < Minitest::Test

 def test_archivo_existente
      var1='testeo.zip', var2="salida"
      prueba = CSV_TO_ODS.new("testeo.zip", var2)
      assert prueba.crear() != nil
 end
 def test_archivo_inexistente
      var1="no existe", var2="salida"
      aux="No"
      assert_raises("Archivo de entrada #{var1} inexistente") { abc=CSV_TO_ODS.new(var1, var2) }
 end

end
