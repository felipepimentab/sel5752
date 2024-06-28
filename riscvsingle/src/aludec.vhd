library work; 
use work.riscv_pkg.all;

entity aludec is
    port (
        ALUOp      : in  bit_vector(1 downto 0);
        funct3     : in  bit_vector(2 downto 0);
        opb5       : in  bit;
        funct7b5   : in  bit;
        ALUControl : out bit_vector(2 downto 0)
    );
end aludec;

architecture behavior of aludec is
begin
    process(ALUOp, funct3, opb5, funct7b5)
    begin
        case ALUOp is
            when "00" =>
                ALUControl <= "000"; -- lw, sw (add)
            when "01" =>
                ALUControl <= "001"; -- beq (subtract)
            when "10" =>
                case funct3 is
                    when "000" =>
                        if (opb5 = '1' and funct7b5 = '1') then
                            ALUControl <= "001"; -- sub
                        else
                            ALUControl <= "000"; -- add
                        end if;
                    when "010" =>
                        ALUControl <= "101"; -- slt
                    when "110" =>
                        ALUControl <= "011"; -- or
                    when "111" =>
                        ALUControl <= "010"; -- and
                    when others =>
                        ALUControl <= "000"; -- default to add
                end case;
            when others =>
                ALUControl <= "000"; -- default to add
        end case;
    end process;
end behavior;