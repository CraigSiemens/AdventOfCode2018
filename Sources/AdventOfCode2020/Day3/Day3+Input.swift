import Foundation

extension Day3: HasInput {
    public static var input: String {
        return """
        ...........#..#.#.###....#.....
        ...#..#...........#.#...#......
        #.....#..#........#...#..##....
        ..#...##.#.....#.............#.
        #.#..#......#.....#....#.......
        .....#......#..#....#.....#....
        .......#.#..............#......
        .....#...#..........##...#.....
        ...#....#.#...#.#........#...#.
        ..#.........###.......##...##..
        .#....#...........#........#..#
        ..#.............##.............
        ..#.##.#....#................#.
        .....##.#.......#....#...#.....
        ......#.#....##................
        ..#..........###..#..#.#..#....
        ....#..............#....##..#.#
        .#.........#.#....#.#.#....#...
        ..#.....#......##.#....#.......
        ..#.#....#..#.#...##....###....
        ...#......##...#........#.#..#.
        .##.#.......##....#............
        ...##..#.#............#...#.#..
        .##...##.#..#..................
        ..#......##......#......##.....
        .....##...#..#...#.........#...
        .##.#.....#..#..#.##....##....#
        ..#.#......#.......##..........
        ......................#......##
        ##.#...#.................#.#.#.
        ......#.#..........#.....##.#..
        #.#......#.....#...........#...
        .....#...#.......#..#..#.#...#.
        ...........#......#.#...#......
        ....##...##...........#......#.
        .........#.##..................
        ......#...#....#......##.##...#
        ......#...#.#########......#...
        .......#.#...#.......#..#......
        ............#...#...#.###...##.
        ...........#..........#...#....
        ...#..#.#................#.#..#
        ..#....#.....#.............#.#.
        ....##......#........#....#....
        ........##...............#....#
        ........#..#...#..............#
        ...#....#.#...#..#...#....#.#.#
        .........#.......#....##.......
        #.##..............#.#........##
        ......................###......
        .........#....##..##....#.#.#..
        .#...##.#.#...#....##..#.....#.
        ....................#.#......#.
        .#..#.......................#..
        ..#..#.............#..#....#...
        ...#...#..#...#...#.#..#.##....
        ........#....#...#....#........
        .#.....#........#.........#...#
        ...#......#..#..#..####..#.....
        #....#..............#.##.......
        .#....#.............##...#.....
        ....#...#.##........##......#..
        ##....#...#.......#..#........#
        ....##........................#
        ..................#..#.........
        ..#....#........#..#.......#...
        #...#..#....#...##...........#.
        .........#..#..#.#.##..........
        ....#.#..#.....#..#.#.#.#..#.##
        ##................#.##.....#...
        .#.....###..#..#..#.....#....##
        ...#...........#..........####.
        .#.....#....#......#.##..#.#...
        ..#...##....#................#.
        ........#.......#......#.#.....
        ....#.#.#.#....#...#......#..#.
        ...........#......#..#.........
        ###...##......##.#..#....##....
        ##....##.........#..#....###...
        #.#.....#....#......#...#..##..
        #....##.#..............#.##....
        .#........#.#.........#...#....
        ......................#......#.
        ........#..#..##.....#..#.#....
        ..#...###.................#..#.
        ...#...#............#..........
        .##.......#..#.........#....#..
        .#..............#....#....##...
        ...............##..#.#.......##
        .#.....#....#...#..#.......#..#
        #..#.............#....#......#.
        .....#.#......#.........###..#.
        .#...#.#...............#....#..
        #......#.............#.........
        .#.##.#.####...#..#.##..#.....#
        .....#......#..#...#.......#...
        #........###...#.....#..#.....#
        ....#.#.....#...#..........#...
        ...#.#.......#.#......#..#.##..
        ..#..........#.#..#.......#.#..
        #...#.#..............#...###.#.
        ...#..#...#............###.....
        ..#..#...#.#............#..#...
        .###.#.....................#..#
        ....#....#..#.....##.##........
        #....#....#.#..#.........#.....
        .#.....##....#............##..#
        #....#.#...#...#..#.#......#...
        #.....##.....##.....##.#...##..
        ...##...#..#..####.#........#..
        .........#...#......##..##..#..
        ..#.....###.#..#..####.#.......
        .......#......#...#..##....#...
        .#.....#.#.#..#....#...#..##...
        ..........#.#...#...#.#..#.....
        ....#.....#........#.....##..#.
        ..#.#.##.........#...##.....##.
        .........#.##....#............#
        ............##.....#.......#.#.
        ......#.....#...#..#..###......
        ##.....#.......#...##.#....#...
        ...........##......#..##...#.#.
        ..#.#.#.#...#.......#....#...#.
        #.............#.....#.#...###..
        ##....#.......#.....#..##.#....
        ...#.......#....#.........##...
        ......#.......#......##.##.....
        ..#......#...#.#........#......
        ....#.#....#.#.##......#.....#.
        #......#.........#..#....#.....
        ........#..#....##.....#.......
        #......##....#.##....#......#..
        ..#.......#............##.....#
        ...........#...#...........#...
        #.......#...#....#....#...#.#.#
        ..###..#........#........#.....
        ..#..###...........#.#......#..
        .#...........#......#..........
        .#.......#.....#.......#.......
        ..#......##.#............#....#
        #..........#.....#.#..#........
        .....#...##.##.......#......#..
        ..........#.....#........#.#.#.
        ....#......#.....#......#.#....
        .........#.#.#..#...##....#...#
        .........#.......#...##...#.#..
        .##........#...............#...
        .......#....#...........##.....
        .........###......#.........#.#
        ......#.......#...#..........#.
        ...#.#..........##......#...#..
        #.......#.#..........#.........
        ................#..#......#..##
        .....#...#....#.#.....#........
        #.....#....#...........#....#..
        #....#.#..#...##....#...##.#...
        ...#.....#......#.#....#..#..#.
        ..#................#...#.#..##.
        ..........#..............#..#.#
        .....##.....#..#.###...........
        ....#.#......#.#...........#...
        .#....#.#.........##.#....#....
        .#.#........#........###....#..
        ##.#................#...#..#...
        .......#......##..#.....#..#.#.
        ...#............#......###...##
        #.#...........#.........#......
        .....#.#.#.................#...
        ....#..............#...#.#.....
        ...#.#.....##..#...............
        .#..##...#....##.....###..#....
        ...............#...#...#.#.###.
        .###....#.....#...#.#......#...
        ...#..#.....#.......#..##.#....
        ...........#..#....##..#...#...
        ...#...#..........#.......##.#.
        ............#.#.......#........
        ....#.........#.....#..........
        ...#.###.##..#...##..####..#..#
        .#.#...#..#...................#
        .....#..#.....##..#............
        ....#......#...##..#.##........
        ...#...............#..#.....##.
        ...#......#.........#.#..##....
        .#....#.##.......#......#......
        ....#.......#....#..........#..
        #.#.#....###.#.#.............#.
        ..##..###........#.#..#.#..#...
        ......#.#............##.#...###
        .........#.#....#####.....##...
        ............##......#.#..#.....
        ...#.....#.....###....#........
        ##..........####.##.#.#........
        ....................##.....##.#
        #.#............#........#......
        ....#...##.....#......#....#...
        ...###.#..##..................#
        ..###......#..............#.#.#
        .#...#...........#....#........
        ....#............#..#..#.#.....
        ...#.........#.#.........#.####
        ..#...#...#...#...........#....
        ...............#.#......##..#..
        #....#.#.......#.#..#......#..#
        ........#.#....#..#...#..#...#.
        ...#..#.......#...........#....
        ...........#.......#...........
        .#......#................#.....
        ....#.#.#...#......#..#...#....
        ................#.#.#....#.....
        .........................##..#.
        .#...........#............##...
        #...............#.....##.#.#..#
        .........#.......###....#.....#
        ....##...#...#.....#..#........
        ........#.....#..#.#.#...#..#..
        ......#.......#.#.........#.#..
        #......#............#...#....#.
        #..##...#..#................#..
        .##...#...#.....#.##.......#..#
        .......#.##........##..##......
        ##.#..##...............#.....#.
        ......#....#..##...#......###.#
        #........##..#....#.#......#...
        .#......##.#...#.#...#.........
        .#.#...#..#.............#......
        .##..........#..........#......
        .#.....#.....#..............#.#
        ..#.........#..#.#.....#.#....#
        ..#.##..............##...#..###
        ....................#..........
        ......###..#..#...........#....
        ..#..........#.......#...#.....
        ...#......#......#.............
        ....##..............#.#.....#..
        ........#.#......#..#........##
        .............#...#.#.........##
        ...###...#..........##.......#.
        .#..........#...##..#.#.....#..
        ##...#.........#...............
        ......#....#....#.....#.....#..
        ..........#....#...#...#..#...#
        ...##....#.#.#..#...##.........
        #......#.#...##.###...#....#...
        ##.......##.#......##..#...#...
        ......#.............#.##.....##
        #.......###....####.#...##....#
        ..#...#..#.......#..........#..
        #.....#..#..#..#.##...###...#..
        .....##.#..#..#..#.#....#...#..
        ..#...#..................##....
        ....#.#........##..............
        #...#.......##...#...#.#.......
        ..#...#........##....#.#.......
        ..........###...###...#......#.
        #.....#..###...##...##..#..#..#
        ..#.....##.....#.......##..#.#.
        ........#........#.........#...
        .................#....#.......#
        .......#...#.....#...#.#.......
        ....##...............#...##...#
        .##...#................#...#...
        .............#.................
        .#..#....#....#.#....#.........
        .#.#..#..........#.......#.....
        .....##.....##...#..#..........
        #...#.#.........#......#..#....
        ........#....#...#....#.#.##...
        ....#..#........#...#...#......
        .#..#.....#.#...#.........#....
        .#..#..#...........#..#....#...
        ....###.............#..#.......
        #......#..#..##..........#.#...
        #..#..#.##..#...#.#.#..........
        ....###......#.##.....#....#...
        .##..#...#......##.#...........
        ..#..#.......#.....#.##....#.#.
        .......#.#.#........#....##....
        ..##...#....#...............###
        #..##..#...........#.#....##...
        ...##..#.....................#.
        ###......#....#....###..#...##.
        .........##............#..#...#
        ..#..........#...#.#.#......#.#
        .......#.....##..##......#.##..
        #..........#.....##.#..........
        #.......#.#...#...#....#.......
        #...#.....##.......#.#..#.#.#..
        .........#.#.#..#..#...#.###...
        .................##...#....#...
        ###.......#..........##...#....
        #.#..#.........#....##.#.......
        ......#.#.....#........#.......
        .......#.#........#......#.#..#
        ..............#..#...##....#..#
        #...........#...##.....#..#.#..
        ..#....#..#.#.#...#..#....#.#..
        ...##.#.....#..#...##..#.....#.
        ..#.#................#........#
        ......#...#.............#......
        .##............#....#...#..#...
        ....#...#...........#.......#..
        .###..#.......#.............#.#
        .#.#....#.#...........#.#......
        ...#.........#.........#..#....
        ...#..........#.#.....#.#......
        .....#........#....##......#...
        ..#.#.#......#..#.#......#....#
        .#.#..#................#.#.....
        .#.#.........##...#.......#.#.#
        #..#.....#...#..#...........#..
        ..##......####......#..#....###
        #.....###....#.#........#..#..#
        ..##.#...#.#..##..........#..#.
        #.........#.#.............#...#
        ...#.#...#...#.#.#....##.......
        ##.##...#.....#...#...........#
        ....#........#.#.....#.........
        .................##..#..##...##
        .....##....#...#...#.....#..#..
        ....#...#........#............#
        ..#...........##....#...#...##.
        .....#......#.........#..##.#..
        """
    }
}
