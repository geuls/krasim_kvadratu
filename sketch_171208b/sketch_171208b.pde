class Kvadrat {
    float x, y, s;
    Kvadrat(float _x, float _y, float _s) {
        this.x = _x;
        this.y = _y;
        this.s = _s;
    }

    void right(float _s) {
        this.x -= _s;
    }
}

class Nasl extends Kvadrat {

    color zvet;

    Nasl(float _x, float _y, float _s, color _zvet) {
        super(_x, _y, _s);
        this.zvet = _zvet;
    }

    void draw() {

        rect(this.x, this.y, this.s, this.s);

        fill(this.zvet);
    }
}

Nasl[] k_array;

void setup()

{

    fullScreen();

    //Kvadrat[] k_array; 

    k_array = new Nasl[150];

    for (int i = 0; i < 150; i++) {

        k_array[i] = new Nasl(random(1200), random(height), random(0.0 - 50.0), int(random(#000000, # ff0000)));

    }

}

void draw()

{

    background(0);

    for (int i = 0; i < 150; i++) {

        k_array[i].draw();

        k_array[i].right(random(5));

    }

}