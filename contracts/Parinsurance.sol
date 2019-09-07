pragma solidity 0.5.8;
pragma experimental ABIEncoderV2;



contract Parinsurance {
    // Model a Insurance Smart Contract
      
    struct Insurer {
        uint companyId;
        string companyName;
        uint empId;
        string empName;
        string empEmail;
       bool isInsured;
       Flight flight;
       Claims claim; 
    }

    struct Flight {

        string flightNo;
        string flightDate;
        string flightTime;
        bool isDelayed;
    }

    struct Claims {

        uint claimsAmt;
        bool isClaimsPaid;
    }


    // Store Insurer Count
    uint public insCount;


    // Read/write Insurers
    mapping(string => Insurer) public insurers;


    // Constructor
    constructor () public {
        
       addInsurer(101,"Infosys",111,"ABC","abc@gmail.com",true,"IX-789","2019-11-11","10.00");
       // addInsurer("TCS");
    }

    function addInsurer (uint companyId,string memory companyName,uint empId,string memory empName,string memory empEmail,bool isInsured,string memory flightNo,string  memory flightDate,string memory flightTime) public {
        //insCount ++;
         
    insurers[flightNo] = Insurer(companyId, companyName,empId,empName,empEmail,isInsured,Flight(flightNo,flightDate,flightTime,false),Claims(0,false));

    
    }

    function updateFlightStatus(string memory flightNo) public {

                  insurers[flightNo].flight.isDelayed = true;
                  //i.flight.isDelayed = true;
                  //insurers[flightNo] = i;


        
         
    }


    


}
