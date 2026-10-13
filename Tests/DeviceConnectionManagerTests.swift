//
//  DeviceConnectionManagerTests.swift
//  MinimuxerTests
//


import XCTest
@testable import Minimuxer

final class DeviceConnectionManagerTests: XCTestCase {
    func testExplicitPeerUsesOverrideDiscoveryMode() {
        let mode = DeviceConnectionManager.resolvePeerDiscoveryMode(overridePeerIp: "::1")

        XCTAssertEqual(mode, .override)
    }

    func testMissingExplicitPeerPreservesAutomaticDiscoveryMode() {
        let mode = DeviceConnectionManager.resolvePeerDiscoveryMode(overridePeerIp: nil)

        XCTAssertEqual(mode, .automatic)
    }
}
