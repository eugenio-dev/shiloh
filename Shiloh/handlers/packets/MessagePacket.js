const XTPacket = require('./XTPacket');

class MessagePacket extends XTPacket {
    handle() {
        const packet = this.params[3];
        if (packet === "m#sm") {
            const message = this.params[6];
            
            if(message.charAt(0) == "/") {
                const args = message.split(" ");
                const cmd = args.shift().substring(1);

                switch(cmd.toUpperCase()) {
                    case "JR": {
                        const id = Number(args.shift());

                        !isNaN(id) && this.client.joinRoom(id);
                        break;
                    }
                    case "ID": {
                        const id = this.client.data.id;

                        this.sendToClient('sm', [0, `Your ID is ${id}`]);
                        break;
                    }
                    case "HELLO":
                        {
                        this.sendToClient('sm', [8765, 'Welcome, and thank you for playing. - Eugee']);
                        break;
                        }
                }

                return;
            }

            this.sendToRoom('sm', [this.client.data.id, message]);
        }
    }
}

module.exports = MessagePacket;