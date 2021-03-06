import Foundation

extension Day13: HasInput {
    public static var input: String {
        return """
                         /--------------------------------------------------------------------------------\\
                 /-------+-----------------------------------\\  /-------------------\\                     |              /--------------------------\\
                 |       |                                   |  |                   |                   /-+--------------+--------------\\           |
                 |       |                                   |  |                   |                   | |              |              |           |
      /----------+-------+-----------------------------------+--+>------------------+\\                /-+-+--------------+-------\\      |           |
   /--+----------+-------+-----------------------------------+\\ |                   ||                | | |              |       |      |           |
   |  |          |       |        /--------------------------++-+---------------\\   ||                | | |              |       |      ^           |
   |  |          |       |        |                          || |           /---+---++----------------+-+-+--------\\     |       |      |           |
   |  |        /-+-------+--------+--------------------------++-+\\          |   |   ||                | | |        |     |       |      |           |
   |  |        | |       |        |                          || ||          |   |   ||                | | |        |     |       |      |           |
   |  |        | |       |        |                          || ||          |   |   ||                | | |        |     |   /---+------+---\\       |
   |  |        | |       |        |                     /----++-++----------+---+---++-------\\        | | |        |     |   |   |      |   |       |
  /+--+--------+-+-------+--------+---------------------+----++-++-----\\    | /-+---++-------+--------+-+-+-------\\|     |   |   |      |   |       |
  ||  |        | |       |        |    /----------------+----++-++-----+----+-+-+---++-------+--------+-+-+---\\   ||     |   |   |      |   |       |
  ||  |/-------+-+-------+--------+\\   |                | /--++-++-----+----+-+-+---++-------+-------\\| | |   |   ||     |   |   |/-----+---+---\\   |
  ||  || /-----+-+-------+--------++---+----------------+-+--++-++-----+----+-+-+---++-------+\\      || | |   |   ||     |   |   ||     |   |   |   |
  ||  || |     | |       |        ||   |        /-------+-+\\ || ||     |    | | |   ||       ||      || | |   |   ||     |   |   ||     |   |   |   |
  ||  || |     | |    /--+--------++---+--------+-\\     | || || ||     |    | | |   ||       ||      || | |   |   ||     |   |   ||     |   |   |   |
  ||  || | /---+-+----+--+--------++---+--------+-+-----+-++-++-++-----+----+-+-+---++-------++------++-+-+---+--\\||     |   |   ||     |   |   |   |
  ||  || | |   | |    |  |       /++---+--------+-+-----+-++-++-++-----+----+-+-+---++--\\    ||      || | |   | /+++-----+---+---++\\    |   |   |   |
  ||  || | |   | |    |  |       |||   |  /-----+-+-----+-++-++-++-----+----+-+-+---++--+----++------++-+-+---+-++++-----+---+-\\ |||    |   |   |   |
  ||  || | |   | |/---+--+-----\\ |||   |  |     | |     | || || ||     |    | | |   ||  |    ||      || | |   |/++++-----+---+-+-+++--\\ |   |   |   |
  ||  || | |   | ||   |  |     | |||   |  |     | |     | || || ||     |    \\-+-+---++>-+----++------++-+-+---+++++/     |   | | |||  | |   |   |   |
  ||  || | |   | ||   |  |     | |||   |  |     | |/----+-++-++-++-----+------+-+---++--+----++------++-+-+---+++++------+\\  | | |||  | |   |   |   |
  ||  || | |   | ||   |  |     | |||   \\--+-----+-++----+-++-++-++-----+------+-+---++--+----++------++-+-+---/||||      ||  | | |||  | |   |   |   |
  ||  ||/+-+---+-++\\  |  |     | ||| /----+-----+-++-\\  | || || \\+-----+------+-+---/|  |    ||      || | |    ||||      ||  | | |||  | |   |   |   |
  ||  |||| |   | |||  |  |     | ||| |    |     | || |  | || ||  | /---+------+-+----+--+----++------++-+-+----++++------++--+-+-+++--+-+--\\|   |   |
  ||  |||| |   | |||  |  |     | ||| |    |     | || |  | || ||  | |   |      | |    |  |    ||      || | |    ||||      ||  | | |||  | |  ||   |   |
  ||  |||| |   | |||  |  |     | ||| |    |     | || |  | || ||  | |   |      | |    |  |    ||      || | |    ||||      ||  | | |\\+--+-+--++---/   |
  ||  |||| |   | |||  |  |     | ||| |    |     | || |/-+-++-++--+-+---+------+-+----+--+----++------++\\| |    ||||      \\+--+-+-+-+--+-+--++-------/
 /++--++++-+---+-+++--+--+-----+-+++-+----+-----+-++-++-+-++-++--+-+---+----\\ | |    |  |    ||      |||| |    |\\++-------+--+-+-+-/  | |  ||
 |||/-++++-+--\\| |||  |  |     | ||| |    |     | || || | || ||  | |   |    | |/+----+--+----++----\\ |||| |    | ||       |  | | |    | |  ||
 |||| |||| |  || |||  |  |     | ||| |    |     | || || | || ||  | |   |    | |||    |  |    ||    | |||| |    | ||       |  | | | /--+-+--++---\\
 |||| |||| |  || |||  |  |     | ||| |/---+-----+-++-++-+-++-++-\\| |   |    | |||    |  |    ||    | |||| |    | ||       |  | | | |  | |  ||   |
 |||| |||| |  || |||  |  |     | ||| ||   |     | || || | || || || |   |    | |||    |  |    ||    | |||| |    | ||       |  \\-+-+-+--+-+--+/   |
 |||| |||| |  || |||  |  |     | ||| ||   |     | || || | || || || |   |    | |||    |  |    ||    | |||| |    | ||       |    | | |  | |  |    |
 |||| |||| |  || |||  |  |     | ||| ||   |     | || ||/+-++-++-++-+---+----+-+++----+--+----++----+-++++-+----+-++-------+----+-+-+--+-+\\ |    |
 |||| |||| |  || |||  |  |     | ||| ||   |     | || |||| || || || |   | /--+-+++----+--+-\\  ||    | |||\\-+----+-++-------+----+-+-+--+-/| |    |
 |||| |||| |  || |||  |  |     | ||| ||   |     | || |||| || || || |   | | /+-+++----+--+-+--++----+-+++--+----+-++-------+\\   | | |  |  | |    |
 |||| |||\\-+--++-+++--+--+-----+-+++-++---+-----+-++-++++-++-++-++-+---+-+-++-+++----+--+-+--+/    | |||  |  /-+-++-------++---+-+-+--+--+-+-\\  |
 |||| ||\\--+--++-++/  |  |     | ||| || /-+-----+-++-++++-++-++-++-+---+-+-++-+++----+--+-+--+-----+-+++--+--+\\| ||       ||   | | |  |  | | |  |
 |||\\-++---+--/| ||   |  |     |/+++-++-+-+-----+-++-++++-++-++-++-+---+-+-++-+++----+--+\\|  |     | |||  |/-+++-++-------++---+-+-+--+--+-+-+--+--\\
 |||  ||   |   | ||   |  |     ||||| || | |     | || |||| || || || |   | | || |||/---+--+++--+-----+-+++--++-+++-++-------++---+-+-+--+-\\| | |  |  |
 |||  ||   |   |/++---+--+-----+++++-++-+-+-----+-++-++++-++-++-++-+---+-+-++-++++---+--+++--+-----+-+++--++-+++-++\\      ||   | | |  | || | |  |  |
 |||  || /-+---++++---+--+-----+++++-++\\| |     | || |||| || || || |   | | || ||||   |  |||  |     | |||  || ||| |||      ||   | | |  | || | |  |  |
 |||  || | |   ||||   |  |     ||||| |||| |     \\-++-++++-+/ || || |   | | || ||||   |  |||  |   /-+-+++--++-+++-+++------++---+-+-+--+-++-+-+--+\\ |
 |||  || | |   |||\\---+--+-----/|||| |||| |       ||/++++-+--++-++-+---+-+-++-++++---+--+++--+---+-+-+++--++-+++-+++-\\    ||   | | |  | || | |  || |
 ||| /++-+-+---+++----+--+------++++-++++-+-------+++++++-+--++-++-+---+-+-++-++++---+--+++--+---+-+-+++--++\\||| ||| |    ||   | | |  | || | |  || |
/+++-+++-+-+---+++----+--+------++++-++++-+-------+++++++-+--++-++-+---+-+-++-++++---+--+++--+---+-+-+++\\ |||||| ||| |    ||   | | |  | || | |  || |
|||| ||| | |   |||    |  |      ||||/++++-+-------+++++++-+--++-++-+---+-+-++-++++---+--+++--+---+\\| |||| |||||| ||| |    ||   | | |  | || | |  || |
|||| ||| | |   |||    |  |      ||\\++++++-+-------+++++++-+--++-++-+---+-+-++-++/|   |  |||  |   ||| |||| |||||| ||| |    ||   | | |  | || | |  || |
|||| ||| | |   |||    |  |    /-++-++++++-+-------+++++++-+--++-++-+---+-+-++-++-+---+--+++--+---+++\\|||| |||||| ||| |    ||   | | |  | || | |  || |
|||| ||| | |  /+++----+--+-\\  | || |||||| |       ||||||| |  || || | /-+-+-++-++-+---+-\\|||  |   |||||||| |||||| ||| |    ||   | | |  | || | |  || |
|||| ||| | |  ||||    |  | |  | || |||\\++-+-------+++++++-+--++-/| | | | \\-++-++-+---+-+++/  |   |||||||| |||||| ||| |    ||   | | |  | || | |  || |
||||/+++-+-+--++++----+--+-+--+-++-+++-++-+-------+++++++-+--++--+-+-+-+\\  || || |   | |||   |   |||||||| |||||| ||| |    ||   | | |  | || | |  || |
|||||||\\-+-+--++++----+--+-+--+-++-/|| || |      /+++++++-+--++--+-+-+-++--++-++-+---+-+++---+---++++++++-++++++-+++-+----++---+-+-+\\ | || | |  || |
|||||||  | |  |||\\----+--+-+--+-++--++-++-+------++++++++-+--/|  | | | ||  || |\\-+---+-+++---+---++/||||| |||||| ||| |    ||   | | || | || | |  || |
|||||||  | |  |||/----+--+-+--+-++--++-++-+\\     |||||||| |   |  | | | ||  || |  |   |/+++---+---++-+++++-++++++-+++-+----++\\  | | || | || | |  || |
|||||||  | |  ||||/---+--+-+\\ | ||  || || ||     |||||||| |   |  | | | ||  || |  |   |||||   |   ||/+++++-++++++-+++-+----+++--+-+-++-+-++-+-+-\\|| |
|||||||  | |  |||||   |  | || | ||  || || ||   /-++++++++-+--\\|  | | | ||  || |  |   |||||   |   |||||||| ||||||/+++-+----+++--+-+\\|| | || | | ||| |
\\++++++--+-+--+++++---+--+-++-+-++--++-++-++---+-++++++++-+--++--+-+-+-++--++-+--+---+++++---+---+++++++/ |||||||||| |    |||  | |||| | || | | ||| |
 ||\\+++--+-+--+++++---+--+-++-+-++--++-++-++---+-++++++++-+--+/  | | \\-++--++-+--+---++/||   |   |||||||  |||||||||| |    |||  | |||| | || | | ||| |
 || |||  |/+--+++++---+--+-++-+-++--++-++-++---+-++++++++-+--+-\\ | |   ||  || |  |   || ||   |   |||||||  |||||||||| |    |||  | |||| | || | | ||| |
/++-+++--+++--+++++---+--+-++-+-++--++-++-++---+-++++++++-+--+-+-+-+---++--++\\|  |   || ||   |   |||||||  |||||||||| |    |||  | |||| | ^| | | ||| |
||| |||  |||  ||\\++---+--+-++-+-++--++-++-++---+-++++++++-+--+-+-+-+---++--++++--+---++-++---+---+++++++--+++++++++/ |    |||  | |||| | || | | ||| |
||| |||  |||  || ||   |  | || | ||  || || ||   | |||||||| |  | | | |   ||  ||||  |   || ||   |   |||||||  |||||||||  |    |||  | |||| | || | | ||| |
|||/+++--+++--++-++---+--+-++\\| ||  || || ||   | |||||||| \\--+-+-+-+---++--++++--+---++-++---+---++++/||  |||||||||  |  /-+++--+-++++-+-++\\| | ||| |
|||||||  |||  || ||   \\--+-++++-++--++-++-++---+-+/||||||    | | | |   ||  ||||  |   || ||   |   ||\\+-++--+++++++++--+--+-+++--+-++++-+-++++-+-/|| |
|||^|||  |||  || ||      |/++++-++--++-++-++---+-+-++++++----+-+-+-+---++--++++--+---++-++---+---++-+-++--+++++++++--+--+-+++\\ | |||| | |||| |  || |
|||||||  |||  || ||      |||||| ||  || || ||   | | ||||||    | | | |   ||  ||||  |   |\\-++---+---++-+-++--+++++++++--+--+-++/| | ||\\+-+-++++-+--/| |
|||||||  |||  ||/++------++++++-++--++-++-++---+-+-++++++-\\  | | | |   ||  ||||  |   |  ||   |   || | ||  |||||||||  |  | || | | || | | |||| |   | |
|||||||  |||/-+++++------++++++\\|| /++-++-++---+-+\\|||||| |  | | | |   ||  ||||  |   |  ||   |   || | ||  |||||||||  |  | || | | || | | |||| |   | |
|||||||  |||| |||||      \\++++++++-+++-++-++---+-++++++++-+--+-+-+-+---++--++++--+---+--++---+---++-+-++--/||||||||  |  | || | | || | | |||| |   | |
|||||||  |||| v||||     /-++++++++-+++-++-++---+-++++++++-+--+-+-+-+---++--++++--+\\  |  ||   |   || | ||   ||||||||  | /+-++-+-+-++-+\\| |||| |   | |
|||||||  |||| |||||     | ||v||||| ||| ||/++->-+-++++++++-+--+-+-+-+---++--++++--++--+--++---+---++-+-++-\\ ||||||||  | || || | | || ||| |||| |   | |
|||||||  |||| ||||| /---+-++++++++-+++-+++++--\\| |||||||| |  | |/+-+---++--++++--++--+--++---+---++-+-++-+-++++++++--+-++-++-+-+-++-+++\\|||| |   | |
|||||||  |||| ||||| |   | |||||||| ||| |||||  || |||||||| |  | ||| |   || /++++--++--+--++---+---++\\| || | |||||^||  | || || | | || |||||||| |   | |
|||||||  |||| ||||| |   | |||||||| ||| |||||  || ||\\+++++-+--+-+++-+---++-+++++--++--+--++---+---++++-++-+-++++++++--+-++-/| | | || |||||||| |   | |
|||||||  |||| ||||| |   | |||||||| ||| |||||  || || \\++++-+--+-+++-+---++-+++++--++--+--++---+---++++-++-+-++++++++--/ ||  | | | || |||||||| |   | |
|||||||  |||| ||||| |   | |||||||| ||| |||||  || \\+--++++-+--+-+++-+---++-+++++--++--+--++---+---++++-++-+-++++++++----++--+-+-+-++-/||||||| |   | |
|||||||  |||| ||||| |   | |||||||| ||| |||||  ||  |  |||| |  | ||| |  /++-+++++--++--+--++---+---++++-++\\| ||||||||    ||  | | | ||  ||||||| |   | |
^||||||  |||| ||||| |   | |||||||| \\++-+++++--++--/  |||| |  | ||| |  ||| |||||  ||  |  ||   |   |||| |||| ||||||||    ||  | | | ||  ||||||| |   | |
|||||||  |||| ||\\++-+---+-++++++++--++-+++++--++-----++++-/  | ||| |  ||| |||||  ||  |  ||   |   |||| |||| ||||||||    ||  | | | ||  ||||||| |   | |
|||||||  |||| || || |   | ||||||||  || ||||| /++-----++++----+-+++-+\\ ||| |||||  ||  |  ||   |   |||| |||| ||||||||    ||  | | | ||  ||||||| |   | |
|||||||  |||| || || |   | ||||||||  || ||||| |||     ||||    | ||| || ||| |||||  ||  |  ||   |   |||| \\+++-++++++++----++--+-+-+-/|  ||||||| |   | |
|||||||  |||| || || |   \\-++++++++--++-+++++-+++-----++++----+-+++-++-+++-+++++--+/  |  ||   |   ||||  ||| ||||||||    ||  |/+-+--+--+++++++-+\\  | |
|||||||  |||| || || |     ||||||||  || ||||| |||     ||||    | ||| || ||| |||||  |   |  ||   |   ||||  ||| ||\\+++++----++--+++-+--+--+++++++-/|  | |
|||||||  |||| || || |     ||||||||  |\\-+++++-+++-----/|||    | ||| || ||| ||||| /+---+--++---+---++++--+++-++-+++++----++--+++-+\\ |  |||||||  |  | |
|||||||  |||| || || |     ||||||||  |  ||||| |||      |||    | |\\+-++-+++-+++++-++---+--++---+---++++--+++-++-+++++----++--+++-++-+--++/||||  |  | |
|||||||  |||| || || |     ||||||||  \\--+++++-+++------+++----+-+-+-++-+++-+++++-++---+-<++---+---+/||  ||| || |||||    ||  ||| || |  || ||||  |  | |
|||||||  |||| || ||/+-----++++++++-----+++++-+++------+++----+-+-+-++-+++-+++++-++---+--++\\  |   | ||  ||| || |||||    ||  ||| || |  || ||||  |  | |
|\\+++++--++++-++-++++-----++++++++-----+++++-+++------+++----+-+-+-++-+++-++/|| ||   |/-+++--+---+-++--+++-++-+++++----++--+++-++-+--++-++++--+\\ | |
\\-+++++--++++-++-++++-----++++++++-----+++++-+++------+++----+-+-+-++-+++-++-/\\-++---++-+++--+---+-++--+++-++-++++/    ||  ||| || |  || ||||  || | |
  |||||  |||| || ||||     ||||\\+++-----+++++-+++------+++----+-+-+-++-+++-++----++---++-+++--+---+-+/  ||| || ||||     |\\--+++-++-+--++-++/|  || | |
  |||||  |||| || ||||    /++++-+++-----+++++-+++------+++----+-+-+-++-+++-++----++---++-+++-\\|   | |   ||| || ||||     |   ||| || |  || || |  || | |
  |||||  |||| || ||||/---+++++-+++-----+++++-+++-----<+++----+-+-+-++-+++-++----++---++-+++-++---+-+---+++-++-++++---\\ |   ||| || |  || || |  || | |
  |||||  |||| || |||||   ||||| |||     ||||| |||      |||    | | | || ||| ||/---++---++-+++-++---+-+---+++-++-++++---+-+---+++-++-+--++-++-+-\\|| | |
  |||||  |||| || |||||   ||||| |||   /-+++++-+++------+++----+-+-+-++-+++-+++---++---++-+++-++---+-+---+++-++-++++---+-+---+++-++\\|  || || | ||| | |
  ||||\\--++++-++-+++++---+++++-+++---+-+++++-+++------+++----+-+-+-++-+++-+++---++---/| ||| || /-+-+---+++\\|| ||||   | |   ||| ||||  || || | ||| | |
  ||||   |||| |\\-+++++---+++++-+++---+-+++++-+++------+++----+-+-/ || ||| ^||   ||    | ||| || | | |   |||||| ||||   | |   ||| ||||  || || | ||| | |
  ||||   |||| |  |||||/--+++++-+++---+-+++++-+++------+++----+-+---++-+++-+++---++----+-+++-++-+\\| |   |||||| ||||   | |   ||| ||||  || || | ||| | |
  ||||   |||| |  ||||||  ||||| |||   | ||||| |||      |||    | |   || |||/+++---++---\\| ||| || ||\\-+---++++++-++++---+-+---+++-++++--++-++-+-+++-/ |
  ||||   |||| |  ||||||  ||||| |||   | ||||| |||      |||    | |   || |||||||   ||   || ||| || ||  |   |||||| ||||   | |   ||| ||||  || || | |||   |
  ||||   |||| |  ||||||  ||||| |||   | ||||| |||      |||    | |   || |||||||   || /-++-+++-++-++--+---++++++-++++\\  | \\---+++-++++--/| || | |||   |
  \\+++---++++-+--++++++--+++++-+++---+-+++++-+++------+++----+-+---++-+/|||||   || | || ||| || ||  |   |||||| |||||  |     ||| ||||   | || | |||   |
   \\++---++++-+--++++++--++++/ |||   | ||||| |||      \\++----+-+---++-+-+++++---++-+-++-+++-++-++--+---/||||| |||||  |     ||| ||||   | || | |||   |
    ||   |||| |  ||||||  ||||  ||\\---+-+++++-+++-------++----+-+---++-+-+++++---++-+-++-/|| || ||  |    ||||| |\\+++--+-----+++-++++---/ || | |||   |
    ||   |||| |  ||||||  |\\++--++----+-+++++-+++-------++----+-+---++-+-+++++---++-+-++--++-++-++--+----+++++-+-+++--+-----++/ ||||     || | |||   |
    ||   |||| |  |\\++++--+-+/  ||    | ||||| |||       ||    | |   || \\-+++++---++-+-++--++-++-++--+----/|||| | |||  |     ||  ||||     || | |||   |
    ||   |||| |  | ||||  | |   ||    |/+++++-+++----\\  ||    | |   ||   |||||   || | ||  || || ||  |     |||| | |||  |     ||  ||||     || | |||   |
    ||   |||| |  | ||||  | |   ||    |||\\+++-+++----+--++----+-+---++---+++++---++-+-++--++-++-++--+-----++++-/ |||  |     ||  ||||     || | |||   |
    ||   |||| |  | ||||  | |   ||    \\++-+++-+++----+--++----+-+---++---+++++---++-+-++--++-++-++--+-----++++---+++--+-----++--++/|     || | |||   |
    ||   |||| |  | ||||  | |   ||     || ||| ||\\----+--++----/ |   ||   |||||   || | ||  || || ||  |     ||||   |||  |     ||  || |     || | |||   |
    ||   |||| |  | ||||  | |   ||     || ||| ||     |  |\\------+---++---+++++---++-+-++--++-+/ ||  |     ||||   ||| /+-----++--++-+\\    || | |||   |
    ||   ||\\+-+--+-++++--+-+---++-----++-+++-++-----+--+-------+---++---+++++---++-+-++--++-+--++--+-----++++---+/| ||     ||  || ||    || | |||   |
    ||   || | |  | ||||  | |   ||     || ||| ||  /--+--+-------+---++---+++++---++-+-++--++-+--++--+-<---++++--\\\\-+-++-----++--++-/|    || | |||   |
 /--++---++-+-+--+-++++--+-+---++----\\|| ||| ||  |  |  |       |   ||   |||||   || | ||  || |  ||  |     ||||  |  | ||     ||  ||  |    || | |||   |
 |  ||   || | |  | ||||  | |   ||    ||| |\\+-++--+--+--+-------+---++---+++++---++-+-++--++-+--++--+-----++++--+--+-++-----++--/|  |    || | |||   |
 |  ||   || | |  | ||||  | |   ||    ||| | | ||  |  |  |       |   ||   |\\+++---++-+-/\\--++-+--++--+-----++++--+--+-++-----++---+--+----++-+-++/   |
 |  ||   \\+-+-+--+-++++--+-+---++----++/ | | ||  |  |  |       |   ||   | |||   || |     || |  ||  |     ||||  |  | ||     ||   |  |    || | ||    |
 |  ||    | | |  | ||||  | |   ||    ||/-+-+-++-\\|  |  |       |   ||  /+-+++---++-+-----++-+--++--+-----++++--+--+-++\\    |\\---+--+----++-+-+/    |
 |  ||    | | |  | ||||  | |   ||    ||| | | || ||  |  | /-----+---++-\\|| |||   || |     || |  ||  ^     ||||  |  | |||    |    |  |    || | |     |
 |  ||    | \\-+--+-++++--+-+---/|    ||| | | || ||  |  | |     |   || ||| |||   |\\-+-----++-+--++--+-----++++--+--+-+++----+----+--+----/| | |     |
 |  ||    |   |  | ||||  | |    |    ||| \\-+-++-++--+--+-+-----+---++-+++-+++---+--+-----++-+--++--+-----/|||  |  | |||    |    |  |     | | |     |
 |  ||    |   |  \\-++++--+-+----+----+++---/ || ||  |  | |     |   || ||| |||   |  |     || |  ||  |      ||| /+--+-+++--\\ |    |  |     | | |     |
 |  ||    |   |    ||||  | |    |    |||     \\+-++--+--+-+-----+---+/ ||| |||   |  |     || |  ||  |      ||| ||  | |||  | |    |  |     | | |     |
 |  ||    |   \\----++++--+-/    |    |||      | ||  |  | |     |   \\--+++-+++---+--+-----++-+--++--+------+++-++--+-+++--+-+----+--+-----+-/ |     |
 |  ||    |        ||||  |      \\----+++------+-++--+--+-+-----+------+++-+++---+--+-----/| |  \\+--+------/|| ||  | |||  | |    |  |     |   |     |
 |  |\\----+--------++++--+-----------+++-<----+-++--+--+-+-----+------+++-+++---+--+------+-+---+--+-------+/ ||  | |||  | |    |  |     |   |     |
 |  |     |        |\\++--+-----------+++------/ |\\--+--+-+-----+------+++-+++---+--+------+-+---+--+-------+--+/  | |||  | |    |  |     |   |     |
 |  |     |        | ||  |           |||        |   |  | |     |      ||| |\\+---+--+--<---+-+---+--+-------+--+---+-+++--+-/    |  |     |   |     |
 |  |     |        | ||  |           |||        |   |  | |     |      ||| | \\---+--+------+-+---+--+-------+--+---+-+++--+------+--+-----+---/     |
 |  |     |        | ||  |           ||\\--------/   |  | \\-----+------/|| |     |  |      | |   |  |       |  |   | |||  |      |  |     |         |
 |  |     |        | ||  |           ||             |  |       |       || |     |  \\------+-+---+--+-------+--+---/ \\++--+------+--/     |         |
 |  |     |        | ||  \\-----------++-------------+--+-------+-------++-+-----+---------+-/   |  |       |  |      ||  |      |        |         |
 |  |     |        | |\\--------------++-------------+--+-------+-------++-+-----+---------+-----/  |       |  |      ||  |      |        |         |
 |  \\-----+--------+-+---------------++-------------+--+-------+-------+/ |     |         |        |       |  \\------++--/      |        |         |
 |        |        | |               ||             |  |       |       \\--+-----+---------+--------+-------+---------+/         |        |         |
 |        |        | |               ||             |  |       |          |     |         |        |       |         |          |        |         |
 |        |        | |               ||             |  |       |          |     |       /-+--------+-------+---------+----------+--------+--\\      |
 \\--------+--------+-+---------------/|             |  |       |          |     |       | |        |       |         |          |        |  |      |
          \\--------+-+----------------+-------------+--+-------/          |     |       | |        |       |         |          |        |  |      |
                   | |                |             |  \\------------------+-----+-------+-+--------+-------+---------+----------+--------/  |      |
                   | \\----------------+-------------+---------------------+-----+-------+-+--------+-------+---------/          |           |      |
                   \\------------------+-------------+---------------------+-----+-------+-/        |       |                    |           |      |
                                      |             |                     |     |       |          |       \\--------------------+-----------+------/
                                      |             |                     |     \\-------+----------+----------------------------/           |
                                      |             |                     \\-------------+----------/                                        |
                                      \\-------------/                                   |                                                   |
                                                                                        \\---------------------------------------------------/
"""
    }
}
