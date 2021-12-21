import Trie "mo:base/Trie";

actor Avatar {
    type Bio = {
        giveName: ?Text;
        familyName: ?Text;
        name: ?Text;
        displayName: ?Text;
        location: ?Text;
        about: ?Text;
    };

    type Profile = {
        bio: Bio;
    };

    // Application state
    stable var profiles : Trie.Trie<Nat, Profile> = Trie.empty();

    stable var next : Nat = 1;

    // Aplication Interface
    public func create (profile: Profile) : async Bool {
        let profileId = next;
        next += 1;

        let (newProfile, existing) = Trie.put(
            profiles,           // Target trie
            
        )

        return true;
    };
}