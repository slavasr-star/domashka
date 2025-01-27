// Класс CPU
class CPU {
    let model: String
    let frequency: Double

    init(model: String, frequency: Double) {
        self.model = model
        self.frequency = frequency
    }

    func start() {
        print("CPU \(model) с частотой \(frequency) GHz запущен.")
    }

    func stop() {
        print("CPU \(model) остановлен.")
    }
}

class RAM {
    let capacity: Int

    init(capacity: Int) {
        self.capacity = capacity
    }

    func load() {
        print("RAM с объемом \(capacity)GB загружена.")
    }

    func unload() {
        print("RAM с объемом \(capacity)GB выгружена.")
    }
}

class GPU {
    let model: String
    let memory: Int

    init(model: String, memory: Int) {
        self.model = model
        self.memory = memory
    }

    func initialize() {
        print("GPU \(model) с памятью \(memory)GB инициализирован.")
    }

    func shutdown() {
        print("GPU \(model) выключен.")
    }
}


class Computer {
    let cpu: CPU
    let ram: RAM
    let gpu: GPU

    init(cpu: CPU, ram: RAM, gpu: GPU) {
        self.cpu = cpu
        self.ram = ram
        self.gpu = gpu
    }

    func powerOn() {
        print("Включение компьютера...")
        cpu.start()
        ram.load()
        gpu.initialize()
        print("Компьютер включен и готов к работе.")
    }

    func powerOff() {
        print("Выключение компьютера...")
        gpu.shutdown()
        ram.unload()
        cpu.stop()
        print("Компьютер выключен.")
    }
}

// Пример использования
let cpu = CPU(model: "Intel Core i7", frequency: 3.6)
let ram = RAM(capacity: 16)
let gpu = GPU(model: "NVIDIA GeForce RTX 3080", memory: 10)

let myComputer = Computer(cpu: cpu, ram: ram, gpu: gpu)

myComputer.powerOn()
print("\n---\n")
myComputer.powerOff()
