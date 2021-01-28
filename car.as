/*
MIT License
Copyright (c) 2021 Jean-Jacques François Reibel
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

//ActionScript 3
import flash.display.Sprite;

class Car
{
   var wheels:int;
   var doors:int;
   var cylinders:int;

   Car(var wheels:int, var doors:int, var cylinders:int){
      this.wheels = wheels;
      this.doors = doors;
      this.cylinders = cylinders;
   }

   function addWheels(var wheelsIn:int){
      wheels += wheelsIn;
   }

   function addDoors(var doorsIn:int){
      doors += doorsIn;
   }

   function addCylinders(var cylindersIn:int){
      cylindersI += cylindersIn;
   }

   function deleteWheels(var wheelsIn:int){
      wheels -= wheelsIn;
   }

   function deleteDoors(var doorsIn:int){
      doors -= doorsIn;
   }

   function deleteCylinders(var cylindersIn:int){
      cylindersI -= cylindersIn;
   }

   function printInfo()
   {
      trace("Wheel check: " + String(wheels) + "\n");
      trace("Door check: " + String(doors) + "\n");
      trace("Cylinder check: " + String(cylinders) + "\n");
   }
}

public class Main extends Sprite {

   public function Main() {
      super();
      trace("Creating car.\n");
      var subaru:Car = new Car(4, 4, 4);
      trace("Adding wheel directly to car object.\n");
      subaru.wheels += 1;
      subaru.printInfo();
      trace("Removing wheel using object method.\n");
      subaru.deleteWheels(1);
      subaru.printInfo();
   }
}