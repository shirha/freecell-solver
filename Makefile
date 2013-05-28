JAVA_SRCS = \
	src/main/java/org/games/solitaire/Entry.java \
	src/main/java/org/games/solitaire/Logger.java \
	src/main/java/org/games/solitaire/Move.java \
	src/main/java/org/games/solitaire/Solver.java \
	src/main/java/org/games/solitaire/SolverTest.java \
	src/main/java/org/games/solitaire/Stats.java \
	src/main/java/org/games/solitaire/Tableau.java \

JAVA_BINS = $(patsubst src/main/java/%.java,bin/%.class,$(JAVA_SRCS))

all: java_bins

java_bins: $(JAVA_BINS)

$(JAVA_BINS): bin/%.class: src/main/java/%.java
	javac -d bin $(JAVA_SRCS)

.PHONY: java_bins

clean:
	rm -f $(JAVA_BINS)
