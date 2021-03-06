<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>대한민국 1등 종합숙박웹 - 요기어때</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">

<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
       $(document).ready(function() {
           $('.mainContent').css('display','none');
           $('#logo').css('background', 'url(https://lh3.googleusercontent.com/VAIw4PJdn9A-RI9jmf9vfrBoLk39xE8LAdUIJ7q_1VfybnnEctlgyImg7OxWUot2l02NptxLP_uDRs21WJdYpCdOBKh4mCKYjYT8MbqsgW078YX71DjV5OfhizJcBUa7-EmA1-OWH_s_mCA5XSM4BRc9N7Vf0E_Vd0Jz_Qvr11jbv5TpyQnli3th2eRj5E6ws_lZ0TcK2S9oLDArzWMiWrZcLWizX00JHi9lTClWpxHDVldfGCvDcaCPqf5gBbBfh-MMhUUYixFiAA_pG85051i9mU0pmhCh27HKYGmVVHc1oglnRHyhCEOgvtPxnpGLlHNieS36ghLeSEvtehhznHLFu3qs480cWFHzMKo14g8eNYTXVxiUbdbnHgpsKxHc48IL9eYbi9Ccb_9AuGUYOwSnduPquIy2oXEycdfiVhSuWLuLl9PlKA8hQXJwx_9OrNo22Ahu9iaUy-xphifGeyK6U3RBALlARQHg0IidFhbM0_bZ2S87zNHsy14yTsXxhCOp8POsyIqJ-tXw1E8j2gvL2p2u1z6nzQtmhFmsnShFqMqm-moSOnzXwckEsi0uEcivxesR2V-_hc5rxTzDA1acffaRF03beE3mCvlkDmHJaLspDJs32xa-1l5Q-6j4mmSFmyTcbuyk4VJ0OlPHSiU=w96-h21-no) 0 0 no-repeat');
           $('#search').css('background', 'url(https://lh3.googleusercontent.com/Y8Jnjg3xHtIbrSpz9oZY95onAgkY29hiJ5a3z_J7GFegh_GEJRi3k1C1IIetQ2BoBHxbROA-xVp7NKToWTLuB3kHPiYjwtmeaa_8kCHGwjfzMq15ObgGa7Lyhyawdu2sXxqkIGtP7y7o9l1X3iBdNg9Caa2YpDbOf8fs6CGSV5DCv20UM8_Ss585gfqSeheVwsq5goNff6ltTMZpyyDfXA23dCKP6ZQlUc31Y7fAWKqJ6NdjKIeeX65dEb_s3SVqU1ax7EW_lqK8MTOgyuiLLVcKf67ew7kHHNPDAVAVb7ITGPPf_VgoQxo7lu2CHAAIK09T0Q4UffXuVDabb1yu6GpJMP7aHlsizLLNPbut9CK-ixaVrEDFUlqHdVHBRC5mbm2hdUexLVOKVlEX1YNfEF0sgtbGA0EFmRDrlWiLHVFfVFUQRX9Bd95FnJBYgH2twJt3UZmc9q8H9ygLDfG3NWHQWdbl3DSQ_Hf4VSMqpYYyCymSpSmAaw1ja82JsFLfFTsYQUZgSZ-mpbCZgUI4ZU4Xt0P4ojkuBLZsRZB-8Rug3xRrlFJdfwfcRmO9gqyx7eVj0RaBhqB3FORi7pnIQ0IuDmk5I-SRJrNL0JmogzUBseO--qZ0YXfp-oZLQxi3e7fI4m9L6bnqoK7PPuhxnoY=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
           $('#search2').css('background', 'url(https://lh3.googleusercontent.com/Y8Jnjg3xHtIbrSpz9oZY95onAgkY29hiJ5a3z_J7GFegh_GEJRi3k1C1IIetQ2BoBHxbROA-xVp7NKToWTLuB3kHPiYjwtmeaa_8kCHGwjfzMq15ObgGa7Lyhyawdu2sXxqkIGtP7y7o9l1X3iBdNg9Caa2YpDbOf8fs6CGSV5DCv20UM8_Ss585gfqSeheVwsq5goNff6ltTMZpyyDfXA23dCKP6ZQlUc31Y7fAWKqJ6NdjKIeeX65dEb_s3SVqU1ax7EW_lqK8MTOgyuiLLVcKf67ew7kHHNPDAVAVb7ITGPPf_VgoQxo7lu2CHAAIK09T0Q4UffXuVDabb1yu6GpJMP7aHlsizLLNPbut9CK-ixaVrEDFUlqHdVHBRC5mbm2hdUexLVOKVlEX1YNfEF0sgtbGA0EFmRDrlWiLHVFfVFUQRX9Bd95FnJBYgH2twJt3UZmc9q8H9ygLDfG3NWHQWdbl3DSQ_Hf4VSMqpYYyCymSpSmAaw1ja82JsFLfFTsYQUZgSZ-mpbCZgUI4ZU4Xt0P4ojkuBLZsRZB-8Rug3xRrlFJdfwfcRmO9gqyx7eVj0RaBhqB3FORi7pnIQ0IuDmk5I-SRJrNL0JmogzUBseO--qZ0YXfp-oZLQxi3e7fI4m9L6bnqoK7PPuhxnoY=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
           $('#searchClose').css('background', 'url(https://lh3.googleusercontent.com/QzHFiRfPpCnjMTtyayToibfqL2yua1UpK0avuDodigx-qEfB1X1AmhP-7Y8E6C4uiaEZLwX482l4ZWBYSql__bu3JqUiVFy76ARbb_YsI3mXknpJnJ0VdLJgT4VPw3WzSwjPe4JEtD68BjGpMA66wXy5Sux7mv4Bv4UMmTOBAq1wDG0eQMJVxsVGi5XJdWevX1J-U28IzM3Eyh5NzWWMXyrKoADSkojOdmggP3UQ2UeHmFD143UHiBBdCeDd9_bwVseDwPf4EdI4OGa5vWp1c7euYeR_r43qSE8MmimN-Am0l4aBdDZZe0x0amB0slFKHnrmUyZrnTS_J8jWRwJq-vU-4MBB8-IkBEt-W3uxEV0suLbP0zg3fqpoZq1yAOQCZJTAlfKnKmtv69TLIakhoTBC5FTCZBctGr6Qd3EElrGedl89IFfaE2Qa5c3l5QA99LRCFloujbwDgGwcuktTyLcR7xymEGhUvWPk0RS1azww2WawZMdXBVCAYlH7gZHdIRie9J1MiQzTd8HeScH3ErCAAFVLSRYS9lpLga766ZW9HXdtlnk2xtvQ0fjj6VY_ADs4ElEkMZG3bpax8Ghtu8yIjunl5FS0MRtDSLyco_joyDxap46avIurwefHX7lx3khdxWI9CNprrq9C5Pl0ht8=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
            $(window).scroll(function() {
                var scroll = $(window).scrollTop();
                if (scroll > 0) {
                    $("#topbar").css("background", "#ffffff");
                    $(".menubar li a").css("color", "#000000");
                    $(".menubar li button").css("color", "#000000");
                    $('#logo').css('background', 'url(https://lh3.googleusercontent.com/0N7ngIeN-8qsvMSVuMNWwL2_S6kq8msWPveqVWAAsy0dJ_NFLXCIBAoue1RPufxM_O9_BS_V3q9n016TeF1b6qtmVDjOtxSTND0oGEzaNJSKg0cIAKoda68iUGJpiYSofEh5IfiCLdqrmiyV9ZOrmkcV-Q4rV8yF9c-7LdedWzeQ8HUiiuh0olU8V2EiDhdzuQwcW5YiLuGZaaoJPd4mb7NtVUKtJ7ebxAq3DQbfOzy8p2Gg3ni1vLt_CnL29KogTOPsqF1V-sPsrfamxD5af8XVw_XZLvqfGv1VK6WIFC-ViZpsRSPr0bRngJEn5kepVa2iQkTu4FsGOxA7zA1NxCxaNONcjU2SqXBCstHxwEuao64KKNpwQqRdVs3tev8qUPWu-f37dIa1OSZ4hp2Ed6YZiGwl-1LXBXfmYrb9D0Xul4n-5tT-_2JFUy8_cnnLHcdsL_ggWMmiXPTjz7fZDRPJvIrOj0sE9nAYOsMpbiUnXA58MQ5zyRBC1z2zCJ0Av1fPlm-ih0jS78iGdR0wvillLtNOuBT7huXM0yrKkmfCESqPaoSfROfw61oc6MjrtwqFIJxXnh8UoS2m9gkKFJhUboDSTsZU4YBkPgbYy6I7Zp-0B074I3ZjhQdKYRFpxA9sLhfp0_mKPdEG-YeXseA=w96-h21-no) 0 0 no-repeat');
                    $('#search').css('background', 'url(https://lh3.googleusercontent.com/JEQ9MYc7tMopQnbA2yDBOo6iUA3XS-JBNslw33SwfCxX4XHNLYKVG9aH3kpgSmGCQ2FKeXyrNAI7X9B5kJml9o-GjM087yAjNWx5DJhTZ3I8shaZUZcF0YJeoV4XTIn249sBqbKwuXewmOZ6T0tBz-NogKEW3SPsMVyJe4QkG7QAmSQ25RWG2iuwqvjkPzuD-d2ErpTFJQF1fx4018YoHjFsk3G4il5T0t4H-hih2a26nca81I9CZBneSWnIqJx2EB-Ms67O128O9CED0WIW4-n-9M9V8xBda9GNmuzaVEebdKLc5ag0YLZA-hsDra3uqQuz95fnrZc0n7bXN7qM5a_HtrSLSN4JceCG1A05cPVRzt-KyvZxG7i0rrY8duKzUT8Y5eiHwhhTU7MttAOJVaOblS0-rnfc352pTt5HU5tWDSdkW-uChyY8qBkTP-PPNOuJCvELWygH7qDdvWvN4BfY7IqYADXmcj8NHHzvPr0jOia0SHil76JjvwMCG3PhVwqMmMXJ5fy2o_6mN-enIPPe78t4dAVuaap16rP088r_5wwCLk0iRFJJr0jVd7F5fAxhwiJhRf4P1T1nwE9CAE0j6wZi1DQ4W5qEoRkqpbNNvxVBBWi-BXqC6ngQ3SZG3GrnO-m09azeMy2wgU7DA8M=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('#search2').css('background', 'url(https://lh3.googleusercontent.com/JEQ9MYc7tMopQnbA2yDBOo6iUA3XS-JBNslw33SwfCxX4XHNLYKVG9aH3kpgSmGCQ2FKeXyrNAI7X9B5kJml9o-GjM087yAjNWx5DJhTZ3I8shaZUZcF0YJeoV4XTIn249sBqbKwuXewmOZ6T0tBz-NogKEW3SPsMVyJe4QkG7QAmSQ25RWG2iuwqvjkPzuD-d2ErpTFJQF1fx4018YoHjFsk3G4il5T0t4H-hih2a26nca81I9CZBneSWnIqJx2EB-Ms67O128O9CED0WIW4-n-9M9V8xBda9GNmuzaVEebdKLc5ag0YLZA-hsDra3uqQuz95fnrZc0n7bXN7qM5a_HtrSLSN4JceCG1A05cPVRzt-KyvZxG7i0rrY8duKzUT8Y5eiHwhhTU7MttAOJVaOblS0-rnfc352pTt5HU5tWDSdkW-uChyY8qBkTP-PPNOuJCvELWygH7qDdvWvN4BfY7IqYADXmcj8NHHzvPr0jOia0SHil76JjvwMCG3PhVwqMmMXJ5fy2o_6mN-enIPPe78t4dAVuaap16rP088r_5wwCLk0iRFJJr0jVd7F5fAxhwiJhRf4P1T1nwE9CAE0j6wZi1DQ4W5qEoRkqpbNNvxVBBWi-BXqC6ngQ3SZG3GrnO-m09azeMy2wgU7DA8M=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('.list_03 li a').css('color', '#000000');
                    $('#searchClose').css('background', 'url(https://lh3.googleusercontent.com/23-SgXLUJxcdCO9f7-GsMfCxTpyD_mafCOGjiKAi8r-w3wcSmmdzsKwXFpT1Ag6NNhEgZkrxYm3iNspTb0SYLDKckr2qqFJJ6Td89CLaSt4JTJfnOEDurCER2NUGFQKoQGmhKD6z_KsKaRPYl2dklBK7b4y4jTzjtJkL4LdqD3Pt1vzeYBraPyAIUcdriGsTBsVAznfQRO62_SXXKpIYXF8riyVrGO1Chmct6Q5UJ7q5yEkZsIpQxXQnnnkrTPaZ7OD6Ye7MkAWGYLpvPfgl4Asb4JL6dQdZy5ByP2LWrOc5Pil4oy5Y9K1iPvXoH24zXdbg0PQa1gbqMwlG3nPDS4ja8vBedx_IHBdXnqwfcoSDVXZZAvByQCRdSUUwR0zhNyy0zlNQlUHvW5BFLzTsH43XXF9kJy8e4Tp1QKFnuXMdeKTWdE3by4ENpLn6KOQKtd4ZaIcLc9mKHqEySTB7lsZukZz9jawgCiaU863hHNefOzhcJHxHmLueSp0z_JhUQOwlUzkUztmc5vfTmgbAxHfLxbN877yMEoXeN-qjljxglbuSWLcPcwkNdt3IxmBYCsE8Tv1PvzkVxHYJRQEgVjn2rHUL6cBMcL7YiDkLXia-X5Bvd95BL_Ss87qIFDM2vZXkeklmWegyYPTdY6FVKc0=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('#keyword').css('color','#000000');

                } else {
                    $("#topbar").css("background", "#f7323f");
                    $(".menubar li a").css("color", "#ffffff");
                    $(".menubar li button").css("color", "#ffffff");
                    $('#logo').css('background', 'url(https://lh3.googleusercontent.com/VAIw4PJdn9A-RI9jmf9vfrBoLk39xE8LAdUIJ7q_1VfybnnEctlgyImg7OxWUot2l02NptxLP_uDRs21WJdYpCdOBKh4mCKYjYT8MbqsgW078YX71DjV5OfhizJcBUa7-EmA1-OWH_s_mCA5XSM4BRc9N7Vf0E_Vd0Jz_Qvr11jbv5TpyQnli3th2eRj5E6ws_lZ0TcK2S9oLDArzWMiWrZcLWizX00JHi9lTClWpxHDVldfGCvDcaCPqf5gBbBfh-MMhUUYixFiAA_pG85051i9mU0pmhCh27HKYGmVVHc1oglnRHyhCEOgvtPxnpGLlHNieS36ghLeSEvtehhznHLFu3qs480cWFHzMKo14g8eNYTXVxiUbdbnHgpsKxHc48IL9eYbi9Ccb_9AuGUYOwSnduPquIy2oXEycdfiVhSuWLuLl9PlKA8hQXJwx_9OrNo22Ahu9iaUy-xphifGeyK6U3RBALlARQHg0IidFhbM0_bZ2S87zNHsy14yTsXxhCOp8POsyIqJ-tXw1E8j2gvL2p2u1z6nzQtmhFmsnShFqMqm-moSOnzXwckEsi0uEcivxesR2V-_hc5rxTzDA1acffaRF03beE3mCvlkDmHJaLspDJs32xa-1l5Q-6j4mmSFmyTcbuyk4VJ0OlPHSiU=w96-h21-no) 0 0 no-repeat');
                    $('#search').css('background', 'url(https://lh3.googleusercontent.com/Y8Jnjg3xHtIbrSpz9oZY95onAgkY29hiJ5a3z_J7GFegh_GEJRi3k1C1IIetQ2BoBHxbROA-xVp7NKToWTLuB3kHPiYjwtmeaa_8kCHGwjfzMq15ObgGa7Lyhyawdu2sXxqkIGtP7y7o9l1X3iBdNg9Caa2YpDbOf8fs6CGSV5DCv20UM8_Ss585gfqSeheVwsq5goNff6ltTMZpyyDfXA23dCKP6ZQlUc31Y7fAWKqJ6NdjKIeeX65dEb_s3SVqU1ax7EW_lqK8MTOgyuiLLVcKf67ew7kHHNPDAVAVb7ITGPPf_VgoQxo7lu2CHAAIK09T0Q4UffXuVDabb1yu6GpJMP7aHlsizLLNPbut9CK-ixaVrEDFUlqHdVHBRC5mbm2hdUexLVOKVlEX1YNfEF0sgtbGA0EFmRDrlWiLHVFfVFUQRX9Bd95FnJBYgH2twJt3UZmc9q8H9ygLDfG3NWHQWdbl3DSQ_Hf4VSMqpYYyCymSpSmAaw1ja82JsFLfFTsYQUZgSZ-mpbCZgUI4ZU4Xt0P4ojkuBLZsRZB-8Rug3xRrlFJdfwfcRmO9gqyx7eVj0RaBhqB3FORi7pnIQ0IuDmk5I-SRJrNL0JmogzUBseO--qZ0YXfp-oZLQxi3e7fI4m9L6bnqoK7PPuhxnoY=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('#search2').css('background', 'url(https://lh3.googleusercontent.com/Y8Jnjg3xHtIbrSpz9oZY95onAgkY29hiJ5a3z_J7GFegh_GEJRi3k1C1IIetQ2BoBHxbROA-xVp7NKToWTLuB3kHPiYjwtmeaa_8kCHGwjfzMq15ObgGa7Lyhyawdu2sXxqkIGtP7y7o9l1X3iBdNg9Caa2YpDbOf8fs6CGSV5DCv20UM8_Ss585gfqSeheVwsq5goNff6ltTMZpyyDfXA23dCKP6ZQlUc31Y7fAWKqJ6NdjKIeeX65dEb_s3SVqU1ax7EW_lqK8MTOgyuiLLVcKf67ew7kHHNPDAVAVb7ITGPPf_VgoQxo7lu2CHAAIK09T0Q4UffXuVDabb1yu6GpJMP7aHlsizLLNPbut9CK-ixaVrEDFUlqHdVHBRC5mbm2hdUexLVOKVlEX1YNfEF0sgtbGA0EFmRDrlWiLHVFfVFUQRX9Bd95FnJBYgH2twJt3UZmc9q8H9ygLDfG3NWHQWdbl3DSQ_Hf4VSMqpYYyCymSpSmAaw1ja82JsFLfFTsYQUZgSZ-mpbCZgUI4ZU4Xt0P4ojkuBLZsRZB-8Rug3xRrlFJdfwfcRmO9gqyx7eVj0RaBhqB3FORi7pnIQ0IuDmk5I-SRJrNL0JmogzUBseO--qZ0YXfp-oZLQxi3e7fI4m9L6bnqoK7PPuhxnoY=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('.list_03 li a').css('color', '#000000');
                    $('#searchClose').css('background', 'url(https://lh3.googleusercontent.com/QzHFiRfPpCnjMTtyayToibfqL2yua1UpK0avuDodigx-qEfB1X1AmhP-7Y8E6C4uiaEZLwX482l4ZWBYSql__bu3JqUiVFy76ARbb_YsI3mXknpJnJ0VdLJgT4VPw3WzSwjPe4JEtD68BjGpMA66wXy5Sux7mv4Bv4UMmTOBAq1wDG0eQMJVxsVGi5XJdWevX1J-U28IzM3Eyh5NzWWMXyrKoADSkojOdmggP3UQ2UeHmFD143UHiBBdCeDd9_bwVseDwPf4EdI4OGa5vWp1c7euYeR_r43qSE8MmimN-Am0l4aBdDZZe0x0amB0slFKHnrmUyZrnTS_J8jWRwJq-vU-4MBB8-IkBEt-W3uxEV0suLbP0zg3fqpoZq1yAOQCZJTAlfKnKmtv69TLIakhoTBC5FTCZBctGr6Qd3EElrGedl89IFfaE2Qa5c3l5QA99LRCFloujbwDgGwcuktTyLcR7xymEGhUvWPk0RS1azww2WawZMdXBVCAYlH7gZHdIRie9J1MiQzTd8HeScH3ErCAAFVLSRYS9lpLga766ZW9HXdtlnk2xtvQ0fjj6VY_ADs4ElEkMZG3bpax8Ghtu8yIjunl5FS0MRtDSLyco_joyDxap46avIurwefHX7lx3khdxWI9CNprrq9C5Pl0ht8=s72-no) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('#keyword').css('color','#ffffff');
                    
                }
            })
        });
        
        $(document).ready(function() {

                    var srch_bar = $('.srch');
                    srch_bar.hide();
                   $('.mainContent').hide();
                });
        $(document).ready(function() {
                    var position;
                    var search = $('#search');
                    var search_close = $('#searchClose');
                    var srch_bar = $('.srch');
                    search.click(function() {
                        position = $('#search').offset().left;
                        search.animate({left: 220},{
                            complete:function(){
                                search.hide();
                        		srch_bar.slideDown();
		                        $('#keyword').focus();
                        		
                            }
                        });
                        $('.menubar').hide();
                        $('.mainContent').show();
                        $('.mainContent').css('display','block');
                    });
                    search_close.click(function() {
                        var offset=search.offset();
                        search.animate({left:597},{
                            complete:function(){
                               // $('#search').css('right','106px');
                                window.location.reload();
                            }   
                        });
                        srch_bar.css('display', 'none');
                        $('.menubar').show();
                            search.show();
                        $('.mainContent').hide();
                        $('.mainContent').css('display','none');
                    });
                });
        
        
    
    </script>
</head>

<body>
	<div id="topbar">
		<div id="topCenter">
			<form class="srch">
				<button type="submit" id="search2" style="right: 790px;">검색</button>
				<input type="text" id="keyword" placeholder="지역, 숙소명"
					autocomplete="off">
				<button type="button" id="searchClose" style="right: 220px;">취소</button>
				<div class="srch_bar">
					<strong style="margin-left: 45px;">추천 검색어</strong>
					<ul>
						<li><a href="#">오션뷰</a></li>
						<li><a href="#">파티룸</a></li>
						<li><a href="#">야외수영장</a></li>
						<li><a href="#">속초</a></li>
						<li><a href="#">애견동반펜션</a></li>
						<li><a href="#">여수</a></li>
						<li><a href="#">제주도</a></li>
						<li><a href="#">안면도</a></li>
						<li><a href="#">남해</a></li>
						<li><a href="#">부산</a></li>
					</ul>
				</div>
			</form>
			<h1 id="logo">
				<a id="aLogo" href="#/" title="여기어때">요기어때</a>
			</h1>
			<button type="button" id="search">검색</button>
			<ul class="menubar">
				<li class="po"><a href="#">내주변</a></li>
				<li><a href="#">예약내역</a></li>
				<li class="over">
					<button type="button">
						<span>더보기</span>
					</button>
					<ul class="list_03">
						<li><a href="#">공지사항</a></li>
						<li><a href="event">이벤트</a></li>
						<li><a href="innoproj">혁신 프로젝트</a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="#">1:1 문의</a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</li>
				<li><a href="login"><span>로그인</span></a></li>
			</ul>
		</div>
	</div>
</body>

</html>