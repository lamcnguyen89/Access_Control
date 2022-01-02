//
//  main.swift
//  Access_Control
//
//  Created by M_2022814 on 12/17/21.
//

import Foundation

// MARK: - Access Control
// Access control restricts access to parts of your code in other source files and modules.
// This enables you to hide the implementation details of your code, and to specify a preferred interface through which that code can be accessed and used.
// You can assign specific access levels to individual types (classes, structures, enumerations), as well as to properties, methods, initializers, and subscripts belonging to these types.
// Protocols, global constants, variables and functions can also be restricted.

// MARK: - Modules and Source Files
// Swift's access control model is based on the concept of modules and source files.

// A Module is a single unit of code distribution- a framework or application that's built and shipped as a single unit and that can be imported by another module with Swift's "import" keyword.

// Each build target (such as an app bundle or framweork) in Xcode is treated as a separate module in Swift. If you group together aspects of your app's code as a stand-alone framework, then everything you define within that framework will be part of a separate module when it's imported and used with an app.

// A Source File is a single Swift source code file within a module (in effect, a single file within an app or framework). Although it's common to define individual types in separate source files, a single source file can contain definitions for multiple types, functions and so on.

// MARK: - Access Levels

// Swift provides 5 different access levels for entities within your code.
// These access levels are relative to the source file in which an entity is defined, and also relative to the module that source file belongs to.

    // Open Access and Public Access: Enables entities to be used with any source file from their defining module, and also in a source file rom another module that imports the defining module.
        // You use open or public access when specifying the public interface to a framework.

    // Internal Access: enables entities to be used within any source file from their defining module, but not in any source file outside of that module.
        // You typically use internal access when defining an app's or a framework's internal structure.
    
    // File-private access: restricts the use of an entity to its own defining source file. Use file-private access to hide the implementation details of a specific piece of functionality when those details are used within an entire file.

    // Private Access: Restricts the use of an antity to the enclosing declaration, and to extensions of that declaration that are in the same file. Use private access to hide the implementation details of a specific piece of functionality when those details are used only within a single declaration.

// Open access is the highest(least restrictive) access level and private access is the lowest(most restrictive) access level.

// MARK: - Guiding Principles of Access Levels
// Access levels in Swift follow an overall guiding principle: No entity can be defined in terms of another entity that has a lower(more restrictive) access level.


// MARK: - Default Access Levels
// All entities in code have a default access level of internal

// MARK: - Access Control Syntax
public class SomePublicClas{}
internal class SomeInternalClass{}
fileprivate class SomeFilePrivateClass{}
private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateunction() {}

// MARK: - Custom Types
// If you want to specify an explicit access level for a custom type, do so at the point that you define the type. The new type can then be used where the access level permits.

// Tuple Types: The access level for a tuple type is the most restrictive access level of all types used in that tuple.

// Function Types: calculated as the most restrictive access level of the function's parameter types and return type.

// Enumeration Types: Individual cases automatically receive the same access level as the enumeration they belong to.

// Nested Types: Access level of a nested type is the same as its containing type, unless the containing type is public... Then it is internal unless you explicitly identify the access level of the nested type.

// MARK:- Subclassing
// You can subclass any class any class that can be accessed in the current access context and that's defined in the same module as the subclass
// You can also subclass any open class that's defined in a different module.
// A subclass can't have a highe access level then it's superclass.

// You can override any class member to make an inherited class member moe accessible then its superclass.

// MARK: - Constants, Variables, Properties and Subscripts
// A constant, variable or property can't be more public than its type.
// Getters and setters for constants, variables, properties and subscripts automatically receive the same access level as the constant, vaiable property or subscript they belong to. You can however give a lower(more restrictive) access level

// MARK: - Initializers
// Custom initializers can be assigned an access level less then or equal to the type that they initialize. The onle exception is for required initializers. They must have the same access level as the class it belongs to.

// MARK: - Protocols
// You define the access level of a protocol at the point you define a protocol

// MARK: - Extensions
// You can extend a class, structure, or enumeration in any access context in which the class, structure, or enumeration is available. Any type members added in an extension have the same default access level as type members declared in the original type being extended.

// MARK: - Generics
// The access level for a generic type or generic function is the minimum of the access level of the generic type or function itself and the access level of any type of constrains on its type parameters.

// MARK: - Type Aliases
// Any type aliases you define are treated as distinct types for the purpose of access control.
// A type alias can have an access level less than or equal to the access level of the type it aliases.
