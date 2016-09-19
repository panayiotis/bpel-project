class Order < ApplicationRecord
  belongs_to :branch
  belongs_to :customer
  has_many :order_items
  
  private
    def on_save_process_order
      # on save process order using bpel
      # bpel is invoked by a curl system call 
      %x{
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
              <id>#{id}</id>
            </proc:InvokeOperation>
          </soapenv:Body>
        </soapenv:Envelope>
        ' \
        http://fastfood.vlantis.gr:8080/ode/processes/ProcessOrder
      }
  end
end
