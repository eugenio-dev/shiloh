const XTPacket = require("./XTPacket");

class IglooPacket extends XTPacket {
    async handle(){
        const packet = this.params[3];

        switch(packet){
            case "g#gm": {
                const id = this.params[5];
                this.client.sendXtMessage(packet.slice(2), [id, 1, 0, 0, '']);
                break;
            }
            case "j#jp": {
                
                const roomId = parseInt(this.params[5]);
                const roomType = parseInt(this.params[6]) ?? '';
                const x = 330; // Default x position
                const y = 300; // Default y position

                const playerId = roomId - 1000;
                
                // Create the room if it doesn't exist
                if (!this.gameHandler.getRoom(roomId)) {
                    this.gameHandler.createIglooRoom(roomId);
                }

                console.log(this.gameHandler.getRoom(roomId));
                
                // Send join confirmation matching PHP packet structure
                this.sendToClient('jp', [playerId, playerId, roomId, roomType]);
                
                // Make them join the room
                this.client.joinRoom(roomId, x, y);
                break;
            }
        }
    }
}

module.exports = IglooPacket;