// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.1 <0.9.0;

contract Zapatillas258648 {

    struct Zapatilla {
        uint256 id;
        string modelo;
        string marca;
        uint256 talla;
    }

    Zapatilla[] public zapatillas;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(
        uint256 _id,
        string memory _modelo,
        string memory _marca,
        uint256 _talla
    ) public {
        require(_id % 2 == 0, "El id debe ser par");
        zapatillas.push(Zapatilla(_id, _modelo, _marca, _talla));
        }
    
    function contarElementos() public view returns (uint256) {
        return zapatillas.length;
    }
    
    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

}