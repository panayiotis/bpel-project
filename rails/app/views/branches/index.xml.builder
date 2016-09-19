xml.instruct!
xml.branches do
  @branches.each do |b|
    xml.branch do
       xml.id b.id
       xml.address b.address
    end
  end
end
