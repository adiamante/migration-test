CREATE OR REPLACE FUNCTION dbo.calculate_subtraction(a INTEGER, b INTEGER)
RETURNS INTEGER AS $$
BEGIN
  RETURN a - b;
END;
$$ LANGUAGE plpgsql;
