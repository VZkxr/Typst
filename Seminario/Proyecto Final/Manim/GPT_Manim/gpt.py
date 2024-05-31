from manim import *

class Sumas(Scene):
    def construct(self):
        # Ejes y función
        axes = Axes(x_range=[0, PI], y_range=[0, 1, 0.2], axis_config={"color": BLUE})
        func = lambda x: np.sin(x)
        graph = axes.plot(func, color=WHITE)

        # Título
        title = Text("Sumas Finitas e Infinitas", font_size=36).to_edge(UP)
        self.play(Write(title))

        # Mostrar los ejes y la gráfica
        self.play(Create(axes), Create(graph))
        self.wait(1)

        # Aproximación con rectángulos
        rects_group = VGroup()
        for n in [4, 8, 16, 32]:
            rects = axes.get_riemann_rectangles(graph, x_range=[0, PI], dx=PI/n, stroke_width=0.5, stroke_color=WHITE, fill_opacity=0.5)
            rects_group.add(rects)
        
        # Mostrar las diferentes aproximaciones
        for i, rects in enumerate(rects_group):
            if i == 0:
                self.play(Create(rects))
            else:
                self.play(Transform(rects_group[i-1], rects))
            self.wait(1)

        # Transformación final a una "suma infinita"
        final_rects = axes.get_riemann_rectangles(graph, x_range=[0, PI], dx=PI/1000, stroke_width=0.5, stroke_color=WHITE, fill_opacity=0.5)
        self.play(Transform(rects_group[-1], final_rects))
        self.wait(2)

        # Fin de la animación
        self.play(FadeOut(rects_group), FadeOut(graph), FadeOut(axes), FadeOut(title))
        self.wait(1)