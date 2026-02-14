declare module '@apiverve/ethereum' {
  export interface ethereumOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface ethereumResponse {
    status: string;
    error: string | null;
    data: EthereumPriceData;
    code?: number;
  }


  interface EthereumPriceData {
      currency:    string;
      price:       number;
      marketCap:   number;
      volume24H:   number;
      change24H:   number;
      lastUpdated: Date;
  }

  export default class ethereumWrapper {
    constructor(options: ethereumOptions);

    execute(callback: (error: any, data: ethereumResponse | null) => void): Promise<ethereumResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: ethereumResponse | null) => void): Promise<ethereumResponse>;
    execute(query?: Record<string, any>): Promise<ethereumResponse>;
  }
}
