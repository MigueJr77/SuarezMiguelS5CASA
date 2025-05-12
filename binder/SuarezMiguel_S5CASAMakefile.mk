all: datos plots pdf

datos:
	python3 makedatos.py
	g++ makedatos1.cpp -o makedatos1
	./makedatos1

plots:
	python3 plotdatos.py
	python3 plotdatos1.py

pdf:
	pdflatex resultados.tex

clean:
	rm -f *.o makedatos1 *.png *.aux *.log *.pdf