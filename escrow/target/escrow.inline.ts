import * as _chain from "as-chain";
import { Name, Table, PermissionLevel, InlineAction } from "proton-tsc";
import { Escrow } from "./escrow.tables";

export namespace ESCROW_STATUS {
  export const START = "start";
  export const FILL = "fill";
  export const CANCEL = "cancel";
}
export type ESCROW_STATUS = string;

/* LogEscrow is a table that contains a single escrow and its status */

@packer(nocodegen)
export class LogEscrow implements _chain.Packer {
    
  constructor(
    public escrow: Escrow = new Escrow(),
    public status: string = ""
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.escrow);
        enc.packString(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Escrow();
            dec.unpack(obj);
            this.escrow = obj;
        }
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.escrow.getSize();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }
}

/**
 * Send a logescrow action to the blockchain
 * @param {Name} contract - Name of the contract that is sending the log
 * @param {Escrow} escrow - Escrow
 * @param {string} status - The status of the escrow.
 */
export function sendLogEscrow(
  contract: Name,
  escrow: Escrow,
  status: string
): void {
  const LOGESCROW = new InlineAction<LogEscrow>("logescrow");
  const action = LOGESCROW.act(contract, new PermissionLevel(contract));
  const actionParams = new LogEscrow(escrow, status);
  action.send(actionParams);
}
