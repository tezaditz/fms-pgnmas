$(function () {
    $('.inputMoney#pemakaian').priceFormat({
        prefix: '',
        limit: 11,
        centsLimit: 2    
    });
    $('.inputMoney#rupiah').priceFormat({
        prefix: '',
        limit: 11,
        centsLimit: 2
    });
});