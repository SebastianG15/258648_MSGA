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

}