PACKAGE MyPackage IS
	CONSTANT CONSTANTE_GLOBAL : INTEGER;
	TYPE STATE IS (RESET,IDLE,ACKA);
	
	COMPONENT BCDGrayConversor
		PORT(           
				bcdToGray : IN BOOLEAN;           
				input : IN BIT_VECTOR (3 DOWNTO 0);           
				output : OUT BIT_VECTOR (3 DOWNTO 0)     
			  );
	END COMPONENT;
	
END MyPackage;

PACKAGE BODY MyPackage IS
	CONSTANT CONSTANTE_GLOBAL: INTEGER := 200;
END MyPackage;