ENTITY BCDGrayConversor IS
PORT(           
		bcdToGray : IN BOOLEAN;           
		input : IN BIT_VECTOR (3 DOWNTO 0);           
		output : OUT BIT_VECTOR (3 DOWNTO 0)     
	  );
END ENTITY;

architecture RTL of BCDGrayConversor is

signal output_b, output_g : BIT_VECTOR (3 DOWNTO 0);

begin
   
	with input select 
		output_g <= "0000" when "0000",
						"0001" when "0001",
						"0011" when "0010",
						"0010" when "0011",
						"0110" when "0100",
						"0111" when "0101",
						"0101" when "0110",
						"0100" when "0111",
						"1100" when "1000",
						"1101" when "1001",
						"1111" when "1010",
						"1110" when "1011",
						"1010" when "1100",
						"1011" when "1101",
						"1001" when "1110",
						"1000" when "1111";
		
	with input select
		output_b <= "0000" when "0000",
						"0001" when "0001",
						"0010" when "0011",
						"0011" when "0010",
						"0100" when "0110",
						"0101" when "0111",
						"0110" when "0101",
						"0111" when "0100",
						"1000" when "1100",
						"1001" when "1101",
						"1010" when "1111",
						"1011" when "1110",
						"1100" when "1010",
						"1101" when "1011",
						"1110" when "1001",
						"1111" when "1000";
		
	with bcdToGray select
		output <= output_g when TRUE,
					 output_b when FALSE;
	
end RTL;
