from manim import *


class Area(Scene):
    def construct(self):
        # Configuración de los ejes
        ax = Axes(
            x_range=[0, 5, 1],
            y_range=[0, 6, 1],
            axis_config={"include_numbers": True},
        )

        # Función a graficar
        def func(x):
            return 1 + x ** 2 * np.exp(-0.15 * x ** 2)

        graph = ax.plot(func, color=BLUE)

        # Texto de introducción
        int_area_sym = MathTex(r"\int_{a}^b f(x)dx").shift(2 * UP)
        area_mean_text = MathTex("\\text{Aproximaremos el área bajo la curva de} \\hspace{.3cm} f(x) \\hspace{.3cm} \\text{en la región} \\hspace{.3cm} 1 \leq x \leq 4").scale(0.6).next_to(int_area_sym, DOWN)

        opening_text = VGroup(int_area_sym, area_mean_text)
        self.play(Write(opening_text), run_time=4)
        self.wait(2)
        self.play(FadeOut(opening_text))

        # Añadir ejes y graficar la función
        self.play(Create(ax), Create(graph))
        func_text = MathTex(r"y = f(x)").next_to(graph, UP)
        self.play(Write(func_text))
        self.wait(2)

        # Límites verticales y etiquetas
        min_lim = ax.get_vertical_line(ax.input_to_graph_point(1, graph), color=YELLOW)
        max_lim = ax.get_vertical_line(ax.input_to_graph_point(4, graph), color=YELLOW)
        self.play(Create(min_lim), Create(max_lim), run_time=0.5)
        self.wait(2)

        # Aproximación del área con rectángulos de Riemann
        approx_text = Text("El área puede ser aproximada con \n sumas de rectángulos pequeños").scale(0.5).next_to(graph, 4 * UP)
        self.play(Write(approx_text))
        self.wait(2)

        rects_initial = ax.get_riemann_rectangles(graph, x_range=[1, 4], dx=0.5, stroke_width=0.1)
        self.play(Create(rects_initial), run_time=2)
        self.wait(2)
        self.play(FadeOut(rects_initial), run_time=1)

        rects_initial = ax.get_riemann_rectangles(graph, x_range=[1, 4], dx=0.1, stroke_width=0.1)
        self.play(Create(rects_initial), run_time=2)
        self.wait(2)
        self.play(FadeOut(rects_initial), run_time=1)

        rects_initial = ax.get_riemann_rectangles(graph, x_range=[1, 4], dx=0.01, stroke_width=0.01)
        self.play(Create(rects_initial), run_time=2)
        self.wait(2)

        conclude_text = Text("Haciendo esto infinitamente, tenemos").scale(0.5).next_to(graph, 4 * UP)
        self.play(Transform(approx_text, conclude_text))
        self.wait(3)

        int_area_sym.next_to(graph, IN)
        self.play(Create(int_area_sym), run_time=1)
        self.wait(2)

        # Haciendo los rectángulos más finos
        rects_finer = ax.get_riemann_rectangles(graph, x_range=[1, 4], dx=0.001, stroke_width=0.001)
        self.play(Transform(rects_initial, rects_finer), run_time=2)

        self.wait(3)