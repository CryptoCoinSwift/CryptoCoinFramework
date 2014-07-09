//
//  main.swift
//  Demo
//
//  Created by Sjors Provoost on 09-07-14.
//

import Foundation
import CryptoCoinMac

println("Generating random Bitcoin address and key. Please be patient.")
let bitcoin = CoinKey()
println("Address:" + bitcoin.publicAddress)
println("Private key:" + bitcoin.wif)
