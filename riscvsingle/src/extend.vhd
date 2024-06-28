library work;
use work.riscv_pkg.all;

entity extend is
    generic (
        Width : natural := 32
    );

    port (
        instr:  in  bit_vector(Width-1 downto 7);
        immsrc: in  bit_vector(1 downto 0);
        immext: out bit_vector(Width-1 downto 0)
    );
end entity extend;

architecture behave of extend is

    signal instruction_signal : bit_vector(Width - 1 downto 0);

    alias instruction : bit_vector(Width - 1 downto 0) is instruction_signal;

begin
    process(instr, immsrc) begin
        case immsrc is
            -- I-type
            when "00" =>
                instruction_signal <= (Width-1 downto 12 => instr(31)) & instr(31 downto 20);

            -- S-types (stores)
            when "01" =>
                instruction_signal <= (Width-1 downto 12 => instr(31)) & instr(31 downto 25) & instr(11 downto 7);

            -- B-type (branches)
            when "10" =>
                instruction_signal <= (Width-1 downto 12 => instr(31)) & instr(7) & instr(30 downto 25) & instr(11 downto 8) & '0';

            -- J-type (jal)
            when "11" =>
                instruction_signal <= (Width-1 downto 20 => instr(31)) & instr(19 downto 12) & instr(20) & instr(30 downto 21) & '0';

            when others => 
                instruction_signal <= (others => '0');
        end case;
    end process;

    immext <= instruction;

end behave;