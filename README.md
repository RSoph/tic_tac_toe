A Tic Tac Toe game written in Ruby

Requirements
- This game is written in ruby 2.0.0p481, it does not require any third party gems.

Running
- Download the files board.rb, game.rb, player.rb and runner.rb into the same directory, and then run 'ruby runner.rb' in the terminal.

Features
- I have allowed the user to enter their own name so as to recieve proper congratulations if they win, to decide if they'd like to play X or O (X always goes first), to decide the size of the playing board up to 10x10. This game can run with a board of any size, but the display gets difficult to read at greater than 10x10, and the winner is pre-determined with smaller squares; so I am restricting the size in runner.rb.
- The algorithm for determining a win only runs after enough moves have been made for a winner to be possible - this cuts down on runtime.
- Winning is deterimined by: checking each row for the same mark (if the grid is 3x3, it checks for 3 X's or 3 O's, likewise for larger sizes), then checking each column, then checking both diagonals. As soon as a win is detected, the algorithm stops and does no further checks. Since we check after every move, it is not possible to have more than one win so continuing to check would be inefficient.
- The computer player is not intelligent, it chooses its squares randomly. However, the game does become harder to win at larger sizes since the computer has more oppertunity to block a win that the human has been building. It seems to me that beyond 6x6, a draw is more likely than either player winning.

Assumptions
- I am assuming the user has no care for a front-end, I believe the display is presentable, but it is not beautifuly styled.
- I am assuming that the user will not attempt to enter their name as 'computer' - if they do, both players will be treated as computer players and move automatically.