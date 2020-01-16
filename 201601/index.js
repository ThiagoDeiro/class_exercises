const phoneNumber = {
    cleanNumber (num) {
      let cleanNum = num.replace(/[^0-9]+/g, '');
      console.log(cleanNum);
      return (cleanNum.length === 11 && cleanNum[0] === "1") ? cleanNum.substr(1) : cleanNum
    },
  
    isValid (num) {
      let cleaned = this.cleanNumber(num);
      return cleaned.length !== 10 ? "0000000000" : cleaned
    },
  
    getFormattedNumber (num) {
      let validNum = this.isValid(num)
  
      let areaCode = validNum.substr(0, 3);
      let exchangeCode = validNum.substr(3, 3);
      let remaining = validNum.substr(6);
      return `(${areaCode}) ${exchangeCode}-${remaining}`
    }
  }
  
  const num1 = "112345s67#89mm0"
  
  console.log(phoneNumber.cleanNumber(num1));
  console.log(phoneNumber.isValid(num1));
  console.log(phoneNumber.getFormattedNumber(num1));``


//   