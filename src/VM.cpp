#include <iostream>
#include "CustomVector/CustomVector.h"   
#include "CustomStack/CustomStack.h"
#include "Hashmap/CustomHashMap.h"
#include <cstdint>

using namespace std;


class VM{

public:
    enum Opcode {
        PUSH, //0
        ADD,  //1
        PRINT, //2
        MUL,  //3
        DIV,  //4
        SUB,  //5
        STORE, //6
        LOAD, //7
        HALT, //8
        JMP, //9
        JMP_IF_ZERO, // 10
        CALL // 11
    };

private:

    Vector<uint8_t> byteStream;
    Stack<int> stack;
    uint32_t pc_;
    Hashmap<int> variables_;
    Vector<string> stringPool_; 

    void execution();

public:
    VM() : pc_(0) {};

    void load(Vector<uint8_t>& program);
    void run() {
        execution();
    }
    uint8_t addString(string var);
};


void VM::load(Vector<uint8_t>& program) {
    for (size_t i = 0; i < program.size(); ++i)
        byteStream.push_back(program[i]);
    pc_ = 0;
}
uint8_t VM::addString(string var) {
    stringPool_.push_back(var);
    return stringPool_.size() - 1;
}
void VM::execution() {
        while (true) {
            uint8_t instruction = byteStream[pc_++];

            switch (instruction) {
                case PUSH: {
                    int val = byteStream[pc_++];
                    stack.push(val);
                    break;
                }
                case MUL: {
                    int a = stack.pop();
                    int b = stack.pop();
                    stack.push(a * b);
                    break;
                }
                case ADD: {
                    int b = stack.pop();
                    int a = stack.pop();
                    stack.push(a + b);
                    break;
                }
                case DIV: {
                    int a = stack.pop();
                    int b = stack.pop();
                    stack.push(b / a);
                    break;
                }
                case SUB: {
                    int a = stack.pop();
                    int b = stack.pop();
                    stack.push(b - a);
                    break;
                }
                case PRINT: {
                    cout << stack.pop() << endl;
                    break;
                }
                case STORE: {
                    int val = stack.pop();
                    uint8_t varIndex = byteStream[pc_++];
                    string var = stringPool_[varIndex];
                    variables_.put(var, val);
                    break;
                }
                case LOAD: {
                    uint8_t varIndex = byteStream[pc_++];
                    string var = stringPool_[varIndex];
                    stack.push(variables_.get(var));
                    break;
                }
                case JMP: { // Unconditional Jump
                    uint8_t addr = byteStream[pc_++];
                    pc_ = addr;
                    break;
                }

                case JMP_IF_ZERO: { // Conditional Jump
                    uint8_t addr = byteStream[pc_++];
                    int val = stack.pop();
                    if (val == 0) pc_ = addr;
                    break;
                }

                case CALL: {
                    stack.push(pc_++);
                    pc_ -= 1;
                    break;
                }
                case HALT: {
                    return;
                }
            }
        }
}



int main() {





    VM vm;
    VM vm2;
    
    uint8_t x_addr = vm2.addString("x");
    uint8_t y_addr = vm2.addString("y");
    uint8_t z_addr = vm.addString("z");

    Vector<uint8_t> program_in_Bytecodes {
        VM::PUSH, 10, VM::STORE, x_addr,
        VM::PUSH, 3, VM::STORE, y_addr,
        VM::LOAD, x_addr, VM::LOAD, y_addr,
        VM::MUL, VM::PUSH, 5, VM::ADD, VM::STORE, z_addr,
        VM::LOAD, z_addr, VM::PRINT, VM::HALT
    };

    vm2.load(program_in_Bytecodes);
    vm2.run();

    uint8_t x_addrr = vm.addString("x");
    uint8_t sumIdx = vm.addString("sum");

    Vector<uint8_t> program_in_Bytecodes_2 {
        VM::PUSH, 5, VM::STORE, x_addrr, VM::PUSH, 0,
        VM::STORE, sumIdx, VM::LOAD, x_addrr, VM::LOAD, sumIdx, VM::ADD,
        VM::STORE, sumIdx, VM::LOAD, x_addrr, VM::PUSH, 1,
        VM::SUB, VM::STORE, x_addrr, VM::LOAD, x_addrr, VM::JMP_IF_ZERO, 28,
        VM::JMP, 8,VM::LOAD, sumIdx, VM::PRINT
    };

    cout << program_in_Bytecodes_2.size() << endl;

    vm.load(program_in_Bytecodes_2);
    vm.run();


    



    uint8_t xIdx = vm.addString("x");
    uint8_t yIdx = vm.addString("y");
    uint8_t zIdx = vm.addString("z");

    program_in_Bytecodes.push_back(VM::PUSH);
    program_in_Bytecodes.push_back(75);
    program_in_Bytecodes.push_back(VM::STORE);
    program_in_Bytecodes.push_back(xIdx);
    program_in_Bytecodes.push_back(VM::PUSH);
    program_in_Bytecodes.push_back(35);
    program_in_Bytecodes.push_back(VM::STORE);
    program_in_Bytecodes.push_back(yIdx);
    program_in_Bytecodes.push_back(VM::LOAD);
    program_in_Bytecodes.push_back(yIdx);
    program_in_Bytecodes.push_back(VM::LOAD);
    program_in_Bytecodes.push_back(xIdx);
    program_in_Bytecodes.push_back(VM::MUL);
    program_in_Bytecodes.push_back(VM::STORE);
    program_in_Bytecodes.push_back(zIdx);
    program_in_Bytecodes.push_back(VM::LOAD);
    program_in_Bytecodes.push_back(zIdx);
    program_in_Bytecodes.push_back(VM::PRINT);
    program_in_Bytecodes.push_back(VM::HALT);

    vm.load(program_in_Bytecodes);
    vm.run();
    

    return 0;
}