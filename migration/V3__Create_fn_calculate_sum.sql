CREATE OR REPLACE FUNCTION calculate_sum(a INTEGER, b INTEGER)
RETURNS INTEGER AS $$
BEGIN
  RETURN a + b;
END;
$$ LANGUAGE plpgsql;