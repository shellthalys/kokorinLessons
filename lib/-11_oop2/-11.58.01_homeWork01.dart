void vehicleClass() {

Cuboid cuboid = Cuboid(1, 2, 3);
int surfaceAreaResult = cuboid.surfaceArea;
int volumeResult = cuboid.volume;

print('Result surfaceArea: $surfaceAreaResult');
print('Result volume: $volumeResult');
}

class Cuboid {
  int length;
  int width;
  int height;

  Cuboid(this.length, this.width, this.height);

int get surfaceArea {
    return 2 * (length * width + width * height + height * length);
  }

int get volume {
    return length * width * height;
  }
}