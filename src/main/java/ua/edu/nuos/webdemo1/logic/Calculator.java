package ua.edu.nuos.webdemo1.logic;

import java.util.ArrayList;
import java.util.List;

public class Calculator {
    private List<Point> points;

    public Calculator(double start, double end, double step) {
        int n = (int) Math.round((end - start) / step) + 1;
        points = new ArrayList<>();
        for (int i = 0; i < n; i++) {
            double x = start + i * step;
            points.add(new Point(x, Math.sin(x)));
        }
    }

    public List<Point> getPoints() {
        return points;
    }
}
