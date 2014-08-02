//
//  main.swift
//  Demo
//
//  Created by Sjors Provoost on 09-07-14.
//

import Foundation
import CryptoCoin

println("Generating random Bitcoin address and key. Please be patient.")
let bitcoin = CoinKey()
println("Address:" + bitcoin.publicAddress)
println("Private key:" + bitcoin.wif)
