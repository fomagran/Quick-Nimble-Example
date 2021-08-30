//
//  MovieViewControllerSpec.swift
//  Quick-Nimble ExampleTests
//
//  Created by Fomagran on 2021/08/30.
//

import Quick
import Nimble

@testable import Quick_Nimble_Example

class MovieViewControllerSpec: QuickSpec {
    override func spec() {
           var subject: MovieViewController!
           
           describe("무비뷰컨트롤러가 주어지면") {
               beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MovieViewController") as? MovieViewController
                   
                   _ = subject.view
               }
               
               context("뷰가 로드 되면") {
                   it("8개 영화가 로드되어야 해") {
                       expect(subject.table.numberOfRows(inSection: 0)).to(equal(8))
                   }
               }
               
               context("테이블뷰가 주어지면") {
                   var cell: UITableViewCell!
                   
                   beforeEach {
                       cell = subject.tableView(subject.table, cellForRowAt: IndexPath(row: 0, section: 0))
                   }
                   
                   it("타이틀과 장르가 보여야 해") {
                       expect(cell.textLabel?.text).to(equal("The Emoji Movie"))
                       expect(cell.detailTextLabel?.text).to(equal("Animation"))
                   }
               }
           }
       }
}
