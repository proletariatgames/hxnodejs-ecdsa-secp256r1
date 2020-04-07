package js.npm;

@:jsRequire("ecdsa-secp256r1")
extern class ECDSA {
  static function generateKey():ECDSA;

  function asPublic():ECDSA;

  function toJWK():{kty:String, crv:String, x:String, y:String, ?d:String};

  function sign(message:String, ?format:String):String;
}