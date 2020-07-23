<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
            /** Define the margins of your page **/
            @page {
                margin: 80px 10px 10px 10px;
            }

            header {
                position: fixed;
                top: -60px;
                left: 0px;
                right: 0px;
                height: 70px;
                
                /** Extra personal styles **/
                /* background-color: ; */
                /* color: white; */
                text-align: center;
                /* line-height: 35px; */
            }

            footer {
                position: fixed; 
                bottom: -60px; 
                left: 0px; 
                right: 0px;
                height: 50px; 

                /** Extra personal styles **/
                background-color: #03a9f4;
                color: white;
                text-align: center;
                line-height: 35px;
            }
        </style>
	<title>Rekap Utility</title>
</head>
<body>
        <header>
            DATA PEMAKAIAN {{ strtoupper($utilitas) }} {{ strtoupper($jenis) }}<br />
			TAHUN {{ $tahun }}
        </header>



        <!-- Wrap the content of your PDF inside a main tag -->
        <main>
        
            <p style="page-break-after: auto;">
            
                <table class="w3-table w3-border w3-tiny" border="1" >
                    <thead   style="page-break-before: always;">
                    <tr>
                        <th class="w3-center">NO</th>
                        <th class="w3-center">NAMA BANGUNAN/TANAH</th>
                        <th class="w3-center">JAN</th>
                        <th class="w3-center">FEB</th>
                        <th class="w3-center">MAR</th>
                        <th class="w3-center">APR</th>
                        <th class="w3-center">MEI</th>
                        <th class="w3-center">JUN</th>
                        <th class="w3-center">JUL</th>
                        <th class="w3-center">AUG</th>
                        <th class="w3-center">SEP</th>
                        <th class="w3-center">OKT</th>
                        <th class="w3-center">NOV</th>
                        <th class="w3-center">DES</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $no = 1;
                    $tot1 = 0;$tot2 = 0;$tot3 = 0;$tot4 = 0;$tot5 = 0;$tot6 = 0;$tot7 = 0;$tot8 = 0;$tot9 = 0;$tot10 = 0;$tot11 = 0;$tot12 = 0;
                    ?>
                        @if(Count($pemakaian))
                        
                            @foreach($pemakaian as $data)
                            <?php
                                $total = $data->jan + $data->feb + $data->mar + $data->apr + $data->may + $data->jun + $data->jul + $data->aug + $data->sep + $data->oct + $data->nov + $data->des; 
                                $tot1  = $tot1 + $data->jan;$tot2  = $tot2 + $data->feb;$tot3  = $tot3 + $data->mar;
                                $tot4  = $tot4 + $data->apr;$tot5  = $tot5 + $data->may;$tot6  = $tot6 + $data->jun;
                                $tot7  = $tot7 + $data->jul;$tot8  = $tot8 + $data->aug;$tot9  = $tot9 + $data->sep;
                                $tot10  = $tot10 + $data->oct;$tot11  = $tot11 + $data->nov;$tot12  = $tot12 + $data->des;
                            ?>
                            @if($total != 0)
                            <tr>
                                <td class="w3-center">
                                    {{ $no }}
                                </td>
                                <td class="w3-left-align">
                                    {{ $data->nama_aset }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->jan , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->feb , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->mar , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->apr , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->may , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->jun , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->jul , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->aug , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->sep , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->oct , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->nov , 2 , "." , ",") }}
                                </td>
                                <td class="w3-right-align">
                                    {{ number_format($data->des , 2 , "." , ",") }}
                                </td>
                            </tr>
                            <?php $no++; ?>
                            @endif
                            @endforeach
                            <tr>
                                <td colspan=2 class="w3-center"><strong>TOTAL</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot1, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot2, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot3, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot4, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot5, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot6, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot7, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot8, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot9, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot10, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot11, 2 , '.' , ',') }}</strong></td>
                                <td class="w3-right-align"><strong>{{ number_format($tot12, 2 , '.' , ',') }}</strong></td>

                            </tr>
                        @else
                        <tr>
                                <td colspan=14 class="w3-center"><strong>Data Tidak Tersedia</strong></td>
                            </tr>
                        @endif
                    </tbody>
                        
                    
                </table>
            </p>
        </main>

</body>
</html>