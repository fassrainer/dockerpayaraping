#!/usr/bin/jjs -fv
var cmd = "docker build -t fass/payaraping ."
var System = Java.type("java.lang.System");
$EXEC(cmd, System.in, System.out, System.err);