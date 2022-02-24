// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IMeditationCircle} from "../interfaces/IMeditationCircle.sol";

library LibMeditation {
    IMeditationCircle public constant MEDITATION_CIRCLE =
        IMeditationCircle(0x0594D86b2923076a2316EaEA4E1Ca286dAA142C1);

    function requiredXpForLevel(uint8 _level) internal pure returns (uint32) {
        require(_level > 1, "level too low");
        require(_level < 12, "level too high");

        if (_level < 7) {
            return _level * 1000;
        }
        return 6000 + 2000 * (_level - 6);
    }
}
