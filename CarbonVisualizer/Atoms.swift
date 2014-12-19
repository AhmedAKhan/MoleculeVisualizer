/*
* Copyright (c) 2014 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import Foundation
import SceneKit

class Atoms {
    
    class func carbonAtom() -> SCNGeometry {
        let carbonAtom = SCNSphere(radius: 1.70);
        carbonAtom.firstMaterial!.diffuse.contents = UIColor.darkGrayColor();
        carbonAtom.firstMaterial!.specular.contents = UIColor.whiteColor();
        return carbonAtom;
    }
    
    class func hydrogenAtom() ->SCNGeometry{
        let hydrogenAtom = SCNSphere(radius: 1.20);
        hydrogenAtom.firstMaterial!.diffuse.contents = UIColor.lightGrayColor();
        hydrogenAtom.firstMaterial!.specular.contents = UIColor.whiteColor();
        return hydrogenAtom;
    }
    
    class func oxygenAtom() -> SCNGeometry{
        let oxygenAtom = SCNSphere(radius: 1.52);
        oxygenAtom.firstMaterial!.diffuse.contents = UIColor.redColor();
        oxygenAtom.firstMaterial!.specular.contents = UIColor.whiteColor();
        return oxygenAtom;
    }
    
    class func flourineAtom() -> SCNGeometry{
        let flourineAtom = SCNSphere(radius: 1.47);
        flourineAtom.firstMaterial!.diffuse.contents = UIColor.yellowColor();
        flourineAtom.firstMaterial!.specular.contents = UIColor.whiteColor();
        return flourineAtom;
    }
    
    
    class func allAtoms() -> SCNNode{
        
        let atomNode = SCNNode();
        
        let carbonNode = SCNNode(geometry: carbonAtom())
        carbonNode.position = SCNVector3Make(-6, 0, 0);
        atomNode.addChildNode(carbonNode);
        
        let hydrogenNode = SCNNode(geometry: hydrogenAtom());
        hydrogenNode.position = SCNVector3Make(-2, 0, 0);
        atomNode.addChildNode(hydrogenNode);
        
        let oxygenNode = SCNNode(geometry: oxygenAtom());
        oxygenNode.position = SCNVector3Make(2, 0, 0);
        atomNode.addChildNode(oxygenNode);
        
        let flourineNode = SCNNode(geometry: flourineAtom());
        flourineNode.position = SCNVector3Make(-6, 0, 0);
        atomNode.addChildNode(flourineNode);
        
        return atomNode;
        
        
    }
    
}
