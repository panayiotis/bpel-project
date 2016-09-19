curl \
--header "Content-Type:
text/fastfood.vlantis.gr:8080/ode/processes/ProcessOrder:urn:InvokeOperation" \
--data '
<soapenv:Envelope
  xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
  xmlns:proc="http://j2ee.netbeans.org/wsdl/ProcessOrderService">
  <soapenv:Header/>
  <soapenv:Body>
    <proc:InvokeOperation>
      <id>1</id>
    </proc:InvokeOperation>
  </soapenv:Body>
</soapenv:Envelope>
' \
http://fastfood.vlantis.gr:8080/ode/processes/ProcessOrder
