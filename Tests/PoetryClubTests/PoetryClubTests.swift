import Testing

struct PoetryClubTests {
    
    @Test func testSplitNewlines() async throws {
        #expect(
            splitOnNewlines("Winken.\nBlinken\n\nAnd Nod.") ==
            ["Winken.", "Blinken", "", "And Nod."]
        )
    }
    
    @Test func testSplitNoNewlines() async throws {
        #expect(splitOnNewlines("Hello.") == ["Hello."])
    }
    
    @Test func testFirstLetter() async throws {
        #expect(firstLetter("Lorem ipsum") == "L")
    }
    
    @Test func testFirstLetterEmpty() async throws {
        #expect(firstLetter("") == "_")
    }
    
    @Test func testCapitalize() async throws {
        #expect(capitalize("HORSES for CoUrSeS!") == "Horses For Courses!")
    }
    
    @Test func testTrimWithWhitespace() async throws {
        #expect(
            trimSentence("Is all the whitespace gone?   \t  \t") ==
            "Is all the whitespace gone?"
        )
    }
    
    @Test func testTrimWithoutWhitespace() async throws {
        #expect(
            trimSentence("Is all the whitespace gone?") ==
            "Is all the whitespace gone?"
        )
    }
    
    @Test func testLastLetter() async throws {
        #expect(lastLetter("Lorem ipsum") == "m")
    }
    
    @Test func testLastLetterEmpty() async throws {
        #expect(lastLetter("") == "_")
    }
    
    @Test func testBackdoorPassword() async throws {
        #expect(backDoorPassword("scoobyDOO!") == "Scoobydoo!, please")
    }
    
    @Test func testIthLetter() async throws {
        #expect(ithLetter("Inquisitive", i: 2) == "q")
    }
    
    @Test func testIthLetterInvalid() async throws {
        #expect(ithLetter("Inquisitive", i: 100) == " ")
    }
    
    @Test func testSecretRoomPassword() async throws {
        #expect(secretRoomPassword("Open Sesame") == "OPEN SESAME!")
    }
    
}
