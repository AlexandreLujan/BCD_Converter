LIBRARY work;
USE work.MyPackage.all;

ENTITY TestBench IS
END ENTITY;

architecture RTL of TestBench is

	signal s_input, s_output : BIT_VECTOR (3 DOWNTO 0);
	signal s_bcdToGray : BOOLEAN; 
	
begin

	TEST : BCDGrayConversor
	port map(
		bcdToGray => s_bcdToGray,
		input 	 => s_input(3 downto 0),
		output 	 => s_output(3 downto 0)
	);
	
	s_input <= "0100" AFTER 0ns, "1001" AFTER 40ns, "1010" AFTER 80ns, "1111" AFTER 120ns;
	s_bcdToGray <= TRUE AFTER 0ns, FALSE AFTER 20ns, TRUE AFTER 40ns, FALSE AFTER 60ns,
						TRUE AFTER 80ns, FALSE AFTER 100ns, TRUE AFTER 120ns, FALSE AFTER 140ns;

end RTL;