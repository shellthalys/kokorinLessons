void vehicleClass() {

Cuboid cuboid = Cuboid(1, 2, 3);
int surfaceAreaResult = cuboid.surfaceArea;
int volumeResult = cuboid.volume;

Cube cube = Cube(2);
int cubeSurfaceAreaResult = cube.cubeSurfaceArea;
int cubeVolumeResult = cube.cubeVolume;

print('Result surfaceArea: $surfaceAreaResult');
print('Result volume: $volumeResult');

print('Result cubeSurfaceArea: $cubeSurfaceAreaResult');
print('Result cubeVolume: $cubeVolumeResult');
}

class Cuboid {
  final int length;
  final int width;
  final int height;

  Cuboid(this.length, this.width, this.height);

int get surfaceArea {
    return 2 * (length * width + width * height + height * length);
  }

int get volume {
    return length * width * height;
  }
}

class Cube extends Cuboid {
  final int length;

  Cube(this.length): super(length, length, length);

  @override
  int get cubeSurfaceArea {
    return 6 * (length * length);
  }

  int get cubeVolume {
    return length * length * length;
  }

}