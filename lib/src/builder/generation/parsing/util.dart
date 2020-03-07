extension TryCast<T> on T {
  S tryCast<S extends T>() => this is S ? this : null;
}

extension IterableUtil<E> on Iterable<E> {
  E get firstOrNull => isEmpty ? null : first;
  Iterable<E> whereNotNull() => where((element) => element != null);

  T firstWhereType<T>({T Function() orElse}) =>
      whereType<T>().firstWhere((_) => true, orElse: orElse);
}

// Subset of package:union functionality
class Union<A, B> {
  final A a;
  final B b;

  Union.a(this.a) : b = null;
  Union.b(this.b) : a = null;
}

// C resolves statically to the closest common ancestor type of A and B.
extension UnionHelper<C> on Union<C, C> {
  C get either => a ?? b;
}
