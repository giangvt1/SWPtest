import chess
import chess.svg
import chess.engine
from IPython.display import SVG, display

# Initialize chess board and engine
board = chess.Board()
engine = chess.engine.SimpleEngine.popen_uci("stockfish") # Replace with your engine path if needed

def evaluate_board(board):
    """Evaluates the current board position using the engine."""
    info = engine.analyse(board, chess.engine.Limit(time=0.1)) # Adjust time as needed
    return info["score"].white().score() # Positive score favors white

def display_board(board, evaluation=None):
    """Displays the board with optional evaluation."""
    svg_board = chess.svg.board(board, size=400)
    display(SVG(svg_board))
    if evaluation is not None:
        print(f"Evaluation: {evaluation/100}") # Convert centipawn score to pawn score


def get_player_move(board):
  """Gets a valid move from the player."""
  while True:
    try:
      move = input("Enter your move (e.g., e2e4): ").strip().lower()

      # Allow player to resign or offer a draw
      if move == "resign":
        return "resign"
      if move == "draw":
        return "draw"


      move = chess.Move.from_uci(move)
      if move in board.legal_moves:
        return move
      else:
        print("Illegal move. Please try again.")
    except ValueError:
      print("Invalid move format. Please try again.")



def play_game():
    """Main game loop."""
    while not board.is_game_over():
        display_board(board, evaluate_board(board))

        if board.turn == chess.WHITE: # Player's turn
          move = get_player_move(board)
          if move == "resign":
              print("You resigned. Black wins!")
              break
          if move == "draw":
              if board.can_claim_draw():
                print("Draw agreed!")
                break
              else:
                print("Draw cannot be claimed now.")
                continue


        else: # Engine's turn (Black)
            result = engine.play(board, chess.engine.Limit(time=0.5)) # Adjust time as needed
            move = result.move
            print(f"Engine plays: {move}")

        board.push(move)

    display_board(board)
    result = board.result()
    print(f"Game Over: {result}")
    if result == "1-0":
        print("White wins!")
    elif result == "0-1":
        print("Black wins!")
    else:
        print("It's a draw!")


if __name__ == "__main__":
    try:
      play_game()
    except KeyboardInterrupt:
        print("\nGame interrupted.")
    finally:
      engine.quit()