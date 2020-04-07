package js.npm;

@:jsRequire("ecdsa-secp256r1")
extern class ECDSA {
  public var x:js.node.Buffer;
  public var y:js.node.Buffer;
  public var d:Null<js.node.Buffer>;

  static function generateKey():ECDSA;

  function asPublic():ECDSA;

  function toJWK():{kty:String, crv:String, x:String, y:String, ?d:String};

  function sign(message:js.node.Buffer, ?format:String):String;
}
