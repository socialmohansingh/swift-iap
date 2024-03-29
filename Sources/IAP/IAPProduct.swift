//
//  IAPProduct.swift
//  Framework
//
//  Created by bemohansingh on 8/21/20.
//  Copyright © 2020 bemohansingh. All rights reserved.
//

import Foundation

public enum PaymentTerm: Int {
    case weekly = 0
    case monthly
    case biMonthly
    case triMonthly
    case quaterly
    case yearly
}

public struct IAPProduct {
    public var localizedPrice: String
    public var term: PaymentTerm
    public var identifier: String
    public var amount: Double
    public var currencyCode: String
}

public struct InAppPurchase {
    public var product: IAPProduct
    public var receiptData: Data
    public var receiptValue: String
    public var purchasedDate: Date?
}
