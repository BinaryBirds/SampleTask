import Foundation
import Env

var env = try Env()

print("----------------------------------------")
print("\tCommand line arguments")
print("----------------------------------------")
for (key, value) in CommandLine.arguments.enumerated() {
    print("\u{001B}[0;33m\(key)\u{001B}[0;0m: \(value)")
}

print("----------------------------------------")
print("\tEnv session")
print("----------------------------------------")
for (key, value) in env.variables {
    print("\u{001B}[0;33m\(key)\u{001B}[0;0m: \(value)")
}
