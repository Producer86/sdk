// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.7

/*member: main:[null]*/
main() {
  zero();
  one();
  half();
  zeroPointZero();
  onePointZero();
  large();
  huge();
  minusOne();
  minusHalf();

  emptyString();
  nonEmptyString();
  stringJuxtaposition();
  stringConstantInterpolation();
  stringNonConstantInterpolation();

  symbolLiteral();
  typeLiteral();
}

////////////////////////////////////////////////////////////////////////////////
/// Return a zero integer literal.
////////////////////////////////////////////////////////////////////////////////

/*member: zero:[exact=JSUInt31]*/
zero() => 0;

////////////////////////////////////////////////////////////////////////////////
/// Return a positive integer literal.
////////////////////////////////////////////////////////////////////////////////

/*member: one:[exact=JSUInt31]*/
one() => 1;

////////////////////////////////////////////////////////////////////////////////
/// Return a double literal.
////////////////////////////////////////////////////////////////////////////////

/*member: half:[exact=JSDouble]*/
half() => 0.5;

////////////////////////////////////////////////////////////////////////////////
/// Return an integer valued zero double literal.
////////////////////////////////////////////////////////////////////////////////

/*member: zeroPointZero:[exact=JSUInt31]*/
zeroPointZero() => 0.0;

////////////////////////////////////////////////////////////////////////////////
/// Return an integer valued double literal.
////////////////////////////////////////////////////////////////////////////////

/*member: onePointZero:[exact=JSUInt31]*/
onePointZero() => 1.0;

////////////////////////////////////////////////////////////////////////////////
/// Return a >31bit integer literal.
////////////////////////////////////////////////////////////////////////////////

/*member: large:[subclass=JSUInt32]*/
large() => 2147483648;

////////////////////////////////////////////////////////////////////////////////
/// Return a >32bit integer literal.
////////////////////////////////////////////////////////////////////////////////

/*member: huge:[subclass=JSPositiveInt]*/
huge() => 4294967296;

////////////////////////////////////////////////////////////////////////////////
/// Return a negative integer literal.
////////////////////////////////////////////////////////////////////////////////

/*member: minusOne:[subclass=JSInt]*/
minusOne() => -1;

////////////////////////////////////////////////////////////////////////////////
/// Return a negative double literal.
////////////////////////////////////////////////////////////////////////////////

/*member: minusHalf:[exact=JSDouble]*/
minusHalf() => -0.5;

////////////////////////////////////////////////////////////////////////////////
/// Return an empty string.
////////////////////////////////////////////////////////////////////////////////

/*member: emptyString:Value([exact=JSString], value: "")*/
emptyString() => '';

////////////////////////////////////////////////////////////////////////////////
/// Return a non-empty string.
////////////////////////////////////////////////////////////////////////////////

/*member: nonEmptyString:Value([exact=JSString], value: "foo")*/
nonEmptyString() => 'foo';

////////////////////////////////////////////////////////////////////////////////
/// Return a string juxtaposition.
////////////////////////////////////////////////////////////////////////////////

/*member: stringJuxtaposition:Value([exact=JSString], value: "foobar")*/
stringJuxtaposition() => 'foo' 'bar';

////////////////////////////////////////////////////////////////////////////////
/// Return a string constant interpolation.
////////////////////////////////////////////////////////////////////////////////

/*member: stringConstantInterpolation:Value([exact=JSString], value: "foobar")*/
stringConstantInterpolation() => 'foo${'bar'}';

////////////////////////////////////////////////////////////////////////////////
/// Return a string non-constant interpolation.
////////////////////////////////////////////////////////////////////////////////

/*member: _method1:[exact=JSBool]*/
_method1(/*[exact=JSBool]*/ c) => c;

/*member: stringNonConstantInterpolation:[exact=JSString]*/
stringNonConstantInterpolation() => 'foo${_method1(true)}${_method1(false)}';

////////////////////////////////////////////////////////////////////////////////
/// Return a symbol literal.
////////////////////////////////////////////////////////////////////////////////

/*member: symbolLiteral:[exact=Symbol]*/
symbolLiteral() => #main;

////////////////////////////////////////////////////////////////////////////////
/// Return a type literal.
////////////////////////////////////////////////////////////////////////////////

/*member: typeLiteral:[exact=_Type]*/
typeLiteral() => Object;
